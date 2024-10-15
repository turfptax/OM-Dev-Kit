# Open Muscle Dev Kit Version 0
# Cell Number 0
# 64:e8:33:88:a2:60

from machine import Pin,ADC
import espnow
import network
import time

CellNumber = 0
ledPIN = 8
led = Pin(ledPIN,Pin.OUT)

def throw(amt, led=led):
  if led:
    for i in range(amt):
      led.value(1)
      time.sleep(.66)
      led.value(0)
      time.sleep(.33)
  else:
    print('throw(n) n=',amt)
    

throw(2)
#Setup basic ADC pin read array test
print('hall array: hall[0-18] hall[0] is None so pins match')
hall = []
# Pins 0 and 1 on the C3 SuperMini
for i in range(2):
  temp = ADC(Pin(i))
  #important to read the value properly
  temp.atten(ADC.ATTN_11DB)
  hall.append(temp)


for i,x in enumerate(hall):
  print(i,x.read())

print('hall array setup[Y]')


e = espnow.ESPNow(); e.active(True)

# Initialize WLAN interface in STA mode
wlan = network.WLAN(network.STA_IF)
wlan.active(True)

# Get the MAC address
mac_address = wlan.config('mac')

# Print the MAC address in human-readable form
print(':'.join(['%02x' % b for b in mac_address]))