from  helpers import *
import uuid


def run(
    ser,
    chat,
    vmc_request,
    vmc_responses,
    logger):
    
    logger.debug("INFORMATION SYNCHRONIZATION STARTED")
    
    logger.debug("VMC SENT INF SYNC COMMAND to upper")
    logger.debug("sending sync command from  upper")
    
    
    responsed_packet=chat.vmc.current()
    command = "inf_sync"
    if not ack_from_vmc(chat,vmc_request,vmc_responses,logger) and responsed_packet[0] == poll_bytes:
        vmc_responses.put({
            "id":str(uuid.uuid4()),
            "command":"poll",
            "request_id":vmc_request['id'],
            "data":{
                "delivered_command":command,
                "message":"vmc did not process command"          
            }
        })
        return 
    
    chat.upper.increase_com_num()
    write_packet(ser,destruc_packet(vmc_inf_sync_bytes),logger)    
    
