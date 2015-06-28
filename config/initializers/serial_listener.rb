require 'serialport'

port = '/dev/cu.usbmodem1421'
baud_rate = 9600
data_bits = 8
stop_bits = 1
parity = SerialPort::NONE

#$SERIAL_LISTENER = SerialPort.new(port, baud_rate, data_bits, stop_bits, parity)