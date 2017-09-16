# swarco-usermode-tools
Usermode tools to enable special functions on SWARCO boards

## ccm2200_gpio_test
 Userspace tool to access and test CCM2200 digital in-/output lines
 and indicator LEDs
  
## ccm2200_watchdog 
  Userspace tool to access CCM2200 watchdogs.

## ccm2200_serial 
  Userspace tool to config CCM2200 board specific serial modes

## rw 
Wrapper to mount root-fs readwrite or readonly. This program
can be used under two symbolic links:
  rw: mount root filesystem read write
  ro: mount root filesystem read-only

## file_write_test 
## wlogin 
## led_blinkd 

daemon to let LED blink with custom blink times or blink/flashing intervals,
so different codes can displayed on a single LED.

Usage by sending on/off cycle times using 
                  a named pipe:
 
                 echo 0 1000 100 100 100 >/tmp/led0 
 
                  or:
                  echo 0 off >/tmp/led0 
                  echo 0 on >/tmp/led0 
                
                  first value is the led number (only 0 supported currently)
                  values are pairs of LED off time and LED on time in msec
 
## modemstatus-wait 
## dcf77
## forward 
