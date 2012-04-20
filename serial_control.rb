#simplest ruby program to read from arduino serial, 
#using the SerialPort gem
#(http://rubygems.org/gems/serialport)

require 'rubygems'
require "serialport"

#params for serial port
port_str = "/dev/tty.usbmodem3d11"  #may be different for you
baud_rate = 38400
data_bits = 8
stop_bits = 1
parity = SerialPort::NONE

sp = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)

#just read forever
while true do
  printf("%c", sp.getc)
end

sp.close                       #see note 1
