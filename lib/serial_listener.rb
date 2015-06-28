require 'serialport'
  
params = ['/dev/cu.usbmodem1421',9600, 8, 1, SerialPort::NONE]
# [port, baud_rate, data_bits, stop_bits, parity]

$SERIAL_LISTENER = SerialPort.new(params[0], params[1], params[2], params[3], params[4])
