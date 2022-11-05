#!/usr/bin/python3

from operator import truediv
import threading
import time



class bcl_thread(threading.Thread):
   def __init__(self,thread_id, name,callable):
      threading.Thread.__init__(self)
      self.thread_id = thread_id
      self.name = name
      self.callable=callable
   def run(self):
      print ("Starting " + self.name)
      self.callable.__call__(self)
      print ("Exiting " + self.name)
      
      
      
def callable_1(bcl_thread):
   while True:
      print ("callable_1 "+str(bcl_thread.thread_id)+" "+bcl_thread.name)
      time.sleep(1) 
      
      
def callable_2(bcl_thread):
   while True:
      print ("callable_2 "+str(bcl_thread.thread_id)+" "+bcl_thread.name)
      time.sleep(2) 

# Create new threads
thread1 = bcl_thread(1,"un hilo",callable_1)
thread2  = bcl_thread(2,"otro hilo ",callable_2)
thread3 = bcl_thread(3,"otro hilo mas  ",callable_1)
# Start new Threads
thread1.start()
thread2.start()
thread3.start()

exitFlag=1
print ("Exiting Main Thread")