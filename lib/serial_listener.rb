#require 'serialport' #Rails should autoload this gem

class SerialListener

	def initialize(port='/dev/cu.usbmodem1421', baud_rate=9600, data_bits=8, stop_bits=1, parity=SerialPort::NONE)
  	@port = port
  	@baud_rate = baud_rate
    @data_bits = data_bits
    @stop_bits = stop_bits
    @parity = parity
    @serialport = SerialPort.new(@port, @baud_rate, @data_bits, @stop_bits, @parity)
  end
  
  def get_data
    loop do
      data = Array.new
      loop do
        char = serialport.read(1)
        break if char=="\n"
        data << char
      end
      return data
    end
  end
end