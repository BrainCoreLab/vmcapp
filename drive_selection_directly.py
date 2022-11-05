from  helpers import *
import uuid


def run(
    ser,
    chat,
    vmc_request,
    vmc_responses,
    logger):
    
    
    
    logger.debug("DRIVE SELECTION DIRECTLY STARTED")
    #command = vmc_request['command']
    selection = vmc_request["data"]["selection_number"]
    
    write_packet(ser,build_cmd_packet('06',chat.upper.comunication_number,bytes.fromhex('00 00 00 '+hex(selection)[2:]) if selection >16 else bytes.fromhex('00 00 00 0'+hex(selection)[2:])),logger)
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
                "message":"vmc did not process command"          
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
    command_status_str = ""
    
    
    
    #todo: añadir las opciones posibles segun manual editar texto aqui
    if command_status=="02":
        command_status_str="Dispensing successfully"
    if command_status=="03":
        command_status_str="Selection jammed"
    #hasta aqui
    
    vmc_responses.put({
            "id":str(uuid.uuid4()),
            "command":"vmc_dispensing_status",
            "request_id":vmc_request['id'],
            "data":{
                "status":command_status,
                "message":command_status_str          
            }
        })
    
    return
    


        