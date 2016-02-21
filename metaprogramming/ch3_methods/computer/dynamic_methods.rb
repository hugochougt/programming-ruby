require './data_source'

class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source

    data_source.methods.grep(/^get_(.*)_info$/) { Computer.define_conpoment $1 }
  end

  def self.define_conpoment(name)
    define_method name do
      info = @data_source.send "get_#{name}_info", @id
      price = @data_source.send "get_#{name}_price", @id
      result = "#{name.capitalize}: #{info} | $#{price}"

      price >= 100 ? "* #{result}" : result
    end
  end
end

computer = Computer.new(42, DS.new)
puts computer.cpu
puts computer.mouse
puts computer.keyboard
