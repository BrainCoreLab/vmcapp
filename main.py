#!/usr/bin/python3


from email.message import Message
import os
from random import randrange
import sys
from urllib import request
import yaml
import logging
import serial
import time
from flask import Flask
import threading
from queue import Queue
from inf_sync import *
from  helpers import *
import uuid
from  helpers import *
debug=False
for  arg in sys.argv:
    if arg=="debug":
        debug=True
     

if sys.argv[0]=="debug":
    debug=True

vmc_requests = Queue()
vmc_responses = Queue()
logging.basicConfig(
    stream=sys.stdout, 
    level= logging.DEBUG if debug==True else logging.INFO,
    format='[%(asctime)s] %(levelname)s - %(message)s'
)


logger = logging.getLogger(__name__)
logger.setLevel(logging.DEBUG)







#SERVICES

def http_service(thread):
    vmc_requests = thread.vmc_requests
    vmc_responses = thread.vmc_responses
    logger.info("starting http service ") 
    app = Flask(__name__)
    

    @app.route('/api/v1/')
    def index():
        return json_response({
            'data': {
                'message': 'api is up!' 
            }}), 200
        
    @app.route('/api/v1/drive_selection/<selection>')
    def drive_selection(selection):
        logger.debug("data has been put at vmc_requests")
      
        vmc_order = {
            "id":str(uuid.uuid4()),
            "command":"drive_selection_directly",
            "data":{
                "selection_number":int(selection)          
            }
        }
        vmc_requests.put(vmc_order)
        return json_response(vmc_order), 200

    @app.route('/api/v1/machine_status')
    def machine_status():
        logger.debug("data has been status at vmc_requests")
      
        vmc_order = {
            "id":str(uuid.uuid4()),
            "command":"status_machine",
            "data":{
                "status": "status_machine"       
            }
        }
        vmc_requests.put(vmc_order)
        return json_response(vmc_order), 200
        
    @app.route('/api/v1/vmc_responses')
    def vmc_responses_path():
        if not vmc_responses.empty():
            return json_response(
                vmc_responses.get()
                ), 200
        else:
            return  json_response(
                {}
                ), 200
            
    @app.route('/api/v1/current_coin')
    def current_coin():
        f = open ('monto.txt','r')
        
        vmc_order = {
            "id":str(uuid.uuid4()),
            "command":"status_machine",
            "data":{
                "status": "status_machine",
                "monto":  f.read()
                            
                             
            }
        }
        f.close() 
        vmc_requests.put(vmc_order)
        return json_response(vmc_order), 200
    @app.route('/')
    def root():
        return index()
        
        
    app.run(host='0.0.0.0', port=5400, debug=True,use_reloader=False)






def vmc_comunicatin_controller(ser,serial_chat,logger,vmc_requests,vmc_responses):

    serial_chat.vmc.push(read_packet(
            ser,
            bytes(1),
            logger
        ))

    if serial_chat.vmc.length() > 0:

        if serial_chat.vmc.current()[0] == vmc_inf_sync_bytes:
            logger.info("VMC SENT INF SYNC COMMAND to upper")
            logger.debug("sending sync command from  upper")
            serial_chat.upper.increase_com_num()
            write_packet(ser,destruc_packet(vmc_inf_sync_bytes),logger)            
            return
            
        if serial_chat.vmc.current()[0] == poll_bytes:
                        
            if  not serial_chat.vmc.last()== None and not serial_chat.upper.last()== None and serial_chat.vmc.last()[0]== poll_bytes and serial_chat.upper.current()[0]==ack_bytes:
                
                logger.info("vmc: is ready for command")
                                
                if not vmc_requests.empty():
                    vmc_request = vmc_requests.get()
                    logger.debug("upper: loading commad program: "+vmc_request["command"])
                    if debug:
                        program = __import__(vmc_request["command"])
                        program.run(ser,serial_chat,vmc_request,vmc_responses,logger)
                    else:
                        try:
                            program = __import__(vmc_request["command"])   
                            program.run(ser,serial_chat,vmc_request,vmc_responses,logger)
                            logger.debug("upper: sent command")
                        except Exception as e:
                            logger.error("ERROR RUNING COMMAD ") 
                else:
                    logger.debug("upper: vmc_requests IS EMPTY!")
                return  
            logger.info("vmc: is POLLING")
            write_packet(ser,ack_packet,logger)
            logger.info("upper: sent ACK ")
            serial_chat.upper.push(ack_packet)
            return 
        
            
        #if serial_chat.vmc.current()[0] == ack_bytes:
        #    logger.info("vmc: sent ACK")
        #    serial_chat.upper.increase_com_num()
        #    logger.info("upper: increase its com number to "+str(serial_chat.upper.comunication_number))
        #    return 


        if serial_chat.vmc.current()[0] == poll_bytes:
            logger.info("vmc: sent a command")
            return   
   
        

 
def serial_reading_loop(thread):
    logger.info("                Serial I/O Loop Started")
    ser = serial.Serial("/dev/ttyS4", baudrate=57600, timeout=1,parity=serial.PARYTY_EVEN, rtscts=1)
    serial_chat = SerialChat(3)
    while True:
        vmc_comunicatin_controller(ser,serial_chat,logger,thread.vmc_requests,thread.vmc_responses)


def main():
    logger.info("----Starting Main Thread")

    serial_vmc_thread  = VmcTalkThread(1,"serial_vmc ",serial_reading_loop,vmc_requests,vmc_responses)
    serial_vmc_thread = True
    web_app  = VmcTalkThread(1,"serial_vmc ",http_service,vmc_requests,vmc_responses)
    bcl_threads = [serial_vmc_thread,web_app]
   
    logger.info("--------Starting Threads")
    for thread in bcl_threads:
        #pass
        thread.setDaemon = True
        thread.start()
 
    logger.info("----Exiting Main Thread")
    

if __name__ == "__main__":

    main()
