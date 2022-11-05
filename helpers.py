from multiprocessing import set_forkserver_preload
from operator import length_hint
from struct import pack
from time import time,sleep
from flask import make_response
from flask import jsonify
import threading
import uuid




"""A group of function to ease the reading of serial ser 

Author:
    Lemys Lopez - 9.2.2022
"""




def bytes_to_str(data=bytes()):
    """Convert bytes and bytearray to str 

    Args:
        data (bytes, bytearray, optional): The data to be converted. Defaults to bytes().

    Returns:
        str: A readble printable string representation of data
    """
    hex_string=""
    if (isinstance(data,bytearray)):
        hex_string =  bytes.hex(bytes(data)," ")
    elif(isinstance(data,bytes)):
        hex_string = bytes.hex(data," ")
    return hex_string


def calculate_xor(data):
    """Calculates the xor check byte
    
    It return the crc sum of all bytes in data 
    
    Args:
        data (bytes, bytearray): the full data 

    Returns:
        int: the decimal representation of xor sum result
    """
    xor = 0
    for byte in data:
        xor ^= byte
        #xor ^= 0xff
    return xor


def stx_detect(current_byte,last_byte,stx_bytes):
    """Compares two bytes with the stx pair  

    Args:
        current_byte (byte): current byte 
        last_byte (byte): last byte
        stx_bytes (byte): starting byte of packages 

    Re4f2b9a1d-ab54-40a8-90ac-77248c27d4feturns:
        bool: the result of comparsion
    """    
    readed_pair = last_byte+current_byte
    #print("rcv pair: "+bytes_to_str(readed_pair)+"  stx pair: "+bytes_to_str(stx_bytes))
    if readed_pair == stx_bytes:
        return True
    return False


def write_packet(ser,package,logger=None):
    if not logger==None:
        logger.debug(" <-- "+bytes_to_str(package[0]))
    ser.write(package[0])
    return package


class PacketsStack:
    def __init__(self,max_length=1,com_number_file = "com_number"):
        self.stack = []
        self.max_length = max_length
        #self.comunication_number = com
        self.count = 0
        
        f = open(com_number_file)
        self.comunication_number = int(f.read())
        f.close()
        
        
        self.com_number_file =com_number_file
    def length(self):
        return len(self.stack)
    def increase_com_num(self):
        self.comunication_number += 1
        if self.comunication_number > 254:
            self.comunication_number = 0
        f = open(self.com_number_file,"w+")
        f.write(str(self.comunication_number))
        f.close()
        return self
    def reset_count(self):
        self.count = 0
        return self
    def push(self,packet):
        self.stack.append(packet)
        self.count += 1
        if len(self.stack)>=self.max_length:
            self.stack.pop(0)
            self.reset_count()
        return self
    def get(self,position=-1):
        #print("    stack length: "+str(len(self.stack)))
        #print("    position: "+str(position))    
        if len(self.stack)>abs(position+1):
            return self.stack[position]
        return None
    def current(self):
        return self.get()
    def last(self):
        return self.get(-2)
        
    
class SerialChat:
    def __init__(self,length=1):
        self.vmc = PacketsStack(length)
        self.upper = PacketsStack(length)
    def length(self):
        return self.upper.length()

class monto:
    def __init__(self, valor):
        self.saldo = valor
    
def read_packet(ser,last_byte=bytes.fromhex('00'),logger=None,stx_pair=bytes.fromhex('fa fb')):

    packet_bytes=bytes()
    readed_byte = ser.read(1)
    #print('readed byte: '+bytes_to_str(readed_byte))
    if not stx_detect(readed_byte,last_byte,stx_pair):
        return read_packet(ser,readed_byte,logger,stx_pair)
    cmd = ser.read(1)
    cmd_length = ser.read(1)
    cmd_data = ser.read(cmd_length[0])
    xor = ser.read(1)
    calculated_xor = (calculate_xor(stx_pair+cmd+cmd_length+cmd_data)).to_bytes(1,'big')
    if not (xor == calculated_xor):
        pass#raise Exception("wrong xor sum in readed packet")
    
    packet_bytes=stx_pair+cmd+cmd_length+cmd_data+xor
    if not logger==None:
        logger.debug("--> "+bytes_to_str(packet_bytes))
    saldo = 0
    if int(bytes_to_str(packet_bytes)[6:8]) == 23:
        x= int(bytes_to_str(packet_bytes)[21:23]+bytes_to_str(packet_bytes)[24:26])
        fa fb 23 05 ad 00 00 00 00 8a
        f = open ('monto.txt','w')
        f.write(x)
        f.close()
    return packet_bytes, stx_pair, cmd, cmd_length, cmd_data, xor



def structure_data_bytes(cn=None,data=None):
    if data == None:
        return (cn).to_bytes(1,'big')
    return (cn).to_bytes(1,'big')+data

def structure_packet(cmd,cmd_data,stx_pair=bytes.fromhex('fa fb')):
    cmd_length = len(cmd_data).to_bytes(1,'big')
    xor = (calculate_xor(stx_pair+cmd+cmd_length+cmd_data)).to_bytes(1,'big')
    packet_bytes=stx_pair+cmd+cmd_length+cmd_data+xor
    return packet_bytes, stx_pair, cmd, cmd_length, cmd_data, xor

def build_cmd_packet(cmd_hex_number,cn=None,data=None):
    return structure_packet(bytes.fromhex(cmd_hex_number),structure_data_bytes(cn,data))

def destruc_packet(packet_bytes):
    stx_pair = packet_bytes[0:2]
    cmd = packet_bytes[2:3]
    cmd_length = packet_bytes[3:4]
    cmd_data = packet_bytes[4:4+cmd_length[0]]
    xor = packet_bytes[4+cmd_length[0]:]
    return packet_bytes, stx_pair, cmd, cmd_length, cmd_data, xor


def print_packet_frombytes(packet_bytes):
    packet_bytes, stx_pair, cmd, cmd_length, cmd_data, xor = destruc_packet(packet_bytes)
    print("stx pair: "+bytes_to_str(stx_pair))
    print("cmd: "+bytes_to_str(cmd))
    print("cmd length: "+bytes_to_str(cmd_length))
    print("cmd data: "+bytes_to_str(cmd_data))
    print("xor: "+bytes_to_str(xor))
    print("full: "+bytes_to_str(packet_bytes))
    
def print_packet(packet):
    print("stx pair: "+bytes_to_str(packet[1]))
    print("cmd: "+bytes_to_str(packet[2]))
    print("cmd length: "+bytes_to_str(packet[3]))
    print("cmd data: "+bytes_to_str(packet[4]))
    print("xor: "+bytes_to_str(packet[5]))
    print("full: "+bytes_to_str(packet[0]))
    
def json_response(data):
    r_json = jsonify(data)
    r = make_response(r_json)
    r.mimetype  = "application/json"
    return r


class VmcTalkThread(threading.Thread):
   def __init__(self,thread_id, name,callable,vmc_requests,vmc_responses):
      threading.Thread.__init__(self)
      self.thread_id = thread_id
      self.name = name
      self.callable=callable
      self.vmc_requests = vmc_requests
      self.vmc_responses = vmc_responses
   def run(self):
      print ("Starting " + self.name)
      self.callable.__call__(self)
      print ("Exiting " + self.name)


class VmcMessage():
    def __init__(self,command,data):
        self.commad = command
        self.data=data





stx_bytes = bytes.fromhex('fa fb')
poll_bytes  = bytes.fromhex('fa fb 41 00 40')
poll_packet = destruc_packet(poll_bytes)
ack_bytes = bytes.fromhex('fa fb 42 00 43')
ack_packet = destruc_packet(ack_bytes)
acquire_machine_status_cmd = bytes.fromhex('fa fb 53 01 02 52')
poll_interval_cmd = bytes.fromhex('fa fb 16 02 03 05 10')
vmc_inf_sync_cmd_byte  = bytes.fromhex('31')
vmc_inf_sync_bytes = bytes.fromhex('FA FB 31 01 01 30')


def ack_from_vmc(chat,vmc_request,vmc_responses,logger):
    command=vmc_request['command']
    if chat.vmc.length()>0 and chat.vmc.current()[0] == ack_bytes:
        logger.debug("vmc: sent ACK")
        chat.upper.increase_com_num()
        logger.debug("upper: increase its com number to "+str(chat.upper.comunication_number))
        vmc_responses.put({
            "id":str(uuid.uuid4()),
            "command":"vmc_ack",
            "request_id":vmc_request['id'],
            "data":{
                "delivered_command":command,
                "message":"vmc acepted command"          
            }
        })
        return True
    return False
    