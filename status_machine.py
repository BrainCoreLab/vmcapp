from  helpers import *
import uuid

import time
def run(
    ser,
    chat,
    vmc_request,
    vmc_responses,
    logger):
    
    
    
    logger.debug("STATUS STARTED")
    #command = vmc_request['command']
    #selection = vmc_request["data"]["selection_number"]
    
    #write_packet(ser,bytes.fromhex('fa fb 51 00 00'),logger)
    #bytes.fromhex('fa fb 53 01 02 52')
    selection = 11
    #write_packet(ser,build_cmd_packet('24',chat.upper.comunication_number,bytes.fromhex('00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01') ),logger)
    write_packet(ser,build_cmd_packet('27',chat.upper.comunication_number,bytes.fromhex('00 00 00') ),logger)
    #time.sleep(0.5)
    #write_packet(ser,build_cmd_packet('26',chat.upper.comunication_number,bytes.fromhex('00 00 00 20 00') ),logger)
    #write_packet(ser,build_cmd_packet('25',chat.upper.comunication_number,bytes.fromhex('00') ),logger)
    #write_packet(ser,build_cmd_packet('21',chat.upper.comunication_number,bytes.fromhex('00 01 20 00 00') ),logger)
    #write_packet(ser,build_cmd_packet('03',chat.upper.comunication_number,bytes.fromhex('00 11') ),logger)
    #time.sleep(0.5)
    #write_packet(ser,build_cmd_packet('06',chat.upper.comunication_number,bytes.fromhex('00 00 00 '+hex(selection)[2:]) if selection >16 else bytes.fromhex('00 00 00 0'+hex(selection)[2:])),logger)
    #write_packet(ser,build_cmd_packet('05',chat.upper.comunication_number,bytes.fromhex('00 11') ),logger)
    #write_packet(ser,build_cmd_packet('01',chat.upper.comunication_number,bytes.fromhex('00 00 '+hex(selection)[2:]) ),logger)
    #write_packet(ser,build_cmd_packet('19',chat.upper.comunication_number,bytes.fromhex('00') ),logger)
    #ser.write(b'\xfa\xfb\x31\x00C')
    #write_packet(ser,build_cmd_packet('51',chat.upper.comunication_number,bytes.fromhex('01 02 52')),logger)
    #print('06',chat.upper.comunication_number,bytes.fromhex('00 00 00 '+hex(selection)[2:]) if selection >16 else bytes.fromhex('00 00 00 0'+hex(selection)[2:]))
    chat.vmc.push(read_packet(
            ser,
            bytes(1),
            logger
        ))
    responsed_packet  =chat.vmc.current()
    if  not ack_from_vmc(chat,vmc_request,vmc_responses,logger):
        vmc_responses.put({
            "id":str(uuid.uuid4()),
            "command":"poll",
            "request_id":vmc_request['id'],
            "data":{
                "sent_command":vmc_request['command'],
                "message":"vmc did not process command",        
            }
        })
        return 
    
    chat.vmc.push(read_packet(
            ser,
            bytes(1),
            logger
        ))
    responsed_packet  =chat.vmc.current()
    
    command_status = bytes_to_str(responsed_packet[4]).split(" ")[1]
   
    vmc_responses.put({
            "id":str(uuid.uuid4()),
            "command":"vmc_status",
            "request_id":vmc_request['id'],
            "data":{
                "status":command_status,
                "message":vmc_request['command'],
                "response":str(responsed_packet)         
            }
        })
    
    return
    


        