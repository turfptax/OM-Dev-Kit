# openmuscle_cell.py 4/24/2024
# Open Muscle Dev Kit V0
# UDP send 
# 2 x 1
# TURFPTAx

# Simplify machine and from machine reduntant
import time
from machine import ADC, Pin
import socket
import network


ledPIN = 8
led = False

# Code feedback through onboard LED GPIO 15 or ledPIN
def initLED(ledPIN):
  try:
    led = Pin(ledPIN,Pin.OUT)
    print('led initialized!')
    print('led =',led)
    try:
      throw(1)
    except:
      print('couldnt use throw(1)')
  except:
    print('led did not work :(')
    led = False
  return(led)

led = initLED(ledPIN)

def throw(amt, led=led):
  if led:
    for i in range(amt):
      led.value(1)
      time.sleep(.66)
      led.value(0)
      time.sleep(.33)
  else:
    print('throw(n) n=',amt)



#Setup basic ADC pin read array test
print('hall array: hall[0-1]')
hall = []
# Pins 0 and 1 on the C3 SuperMini
for i in range(2):
  temp = ADC(Pin(i))
  #important to read the value properly
  temp.atten(ADC.ATTN_11DB)
  hall.append(temp)


for i,x in enumerate(hall):
  print(i,x)

print('hall array setup[Y]')
throw(5)

def initNETWORK(a=b_left,b=b_right):
  #need optional backup UDP repl if can't connect
  #primary and secondary networks
  #if primary then try secondary dev wifi access point
  wlan = network.WLAN(network.STA_IF) 
  wlan.active(False)
  if not wlan.isconnected():
    frint('connecting to network...')
    if wlan.isconnected() == False:
      wlan.active(True)
    wlan.connect('OpenMuscle','3141592653')
    while not wlan.isconnected():
      pass

  print('assing port and bind')
  port = 3145
  print('network config: ',wlan.ifconfig())
  frint('network connected[Y]')
  s = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
  return(s,wlan)
#s.bind(('192.168.103.203',port))

s,wlan = initNETWORK()

#Version 5.3.0 miswired second two elements on hardware 0-11
# 0-5 top circular band on hexigon 1 per cell
# 6-11 bottom circular band on hexigon 1 per cell
cells = [hall[0],hall[1]]

#inital hall sensor ADC calibration
# grabs first few inputs and reduces the value 

def calibrate(data):
  calib = []
  for x in data:
    calib.append(int(x))
  return calib

try:
  import ntptime
  ntptime.settime()
  time.localtime()
  print(time.localtime())
except:
  frint('NTP Time [f]')
  print('failed to set NTP time')

#Gather send
#Declare temp var to write to text file

#packet length
plen = 10
#packet iterator
pi = 0
calib = [0,0]

#stop white loop for 10
time.sleep(10)


def mainloup(calib=calib,pi=pi,plen=plen,led=led,cells=cells):
  exit_bool = False
  button_thresh = 0
  while not exit_bool:
    packet = {}
    data = []
    for i in range(len(cells)):
      data.append(cells[i].read()-calib[i])
    packet["id"] = "OM-Band12"
    packet["ticks"] = time.ticks_ms()
    packet["time"] = time.localtime()
    if pi == 0:
      print("No calibration just raw data")
      #calib = calibrate(data)
      #print(calib)
    if pi >= 10:
      pi = 1
    else:
      pi += 1
    #Append the cycle with : deliminer delimeter
    packet['data'] = data
    raw_data = str(packet).encode('utf-8')
    try:
      #UDP recepient address
      #Work on dynamic setup protocol
      s.sendto(raw_data,('192.168.1.32',3145))
    except:
      print('failed')

mainloup()














