require './data_source'

class Computer < BasicObject
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def method_missing(name)
    super unless @data_source.respond_to? "get_#{name}_info"

    info = @data_source.send "get_#{name}_info", @id
    price = @data_source.send "get_#{name}_price", @id
    result = "#{name.capitalize}: #{info} | $#{price}"

    price >= 100 ? "* #{result}" : result
  end
end

computer = Computer.new(42, DS.new)
puts computer.cpu
puts computer.mouse
puts computer.keyboard
puts computer.display
