class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    super unless %(Zhaqiang Hugo).include? person

    number = 0
    3.times do
      number = rand(10) + 1
      puts "#{number}"
    end

    "#{person} got a #{number}"
  end
end

no = Roulette.new
puts no.zhaqiang
puts no.hugo
puts no.hugo_chou
# roulette_solution.rb:4:in `method_missing': undefined method `hugo_chou'
#                        for #<Roulette:0x007fee8287ee20> (NoMethodError)
