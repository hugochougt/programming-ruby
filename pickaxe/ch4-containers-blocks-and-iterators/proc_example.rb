
class ProcExample
  def pass_in_block(&action)
    @stored_proc = action
  end

  def use_proc(parameter)
    @stored_proc.call(parameter)
  end
end

eg = ProcExample.new
eg.pass_in_block { |param| puts "The parameter is #{param}" }
eg.use_proc(10)

# create a block object: lambda and Proc.new
bo = lambda { |param| puts "You called me with #{param}" }
bo.call 99
bo.call "dog"

# lambda { |params| } equals to -> params { ... }

def my_if(condition, then_clause, else_clause)
  if condition
    then_clause.call
  else
    else_clause.call
  end
end

5.times do |val|
  my_if val < 2,
        -> { puts "#{val} is small" },
        -> { puts "#{val} is big" }
end

def my_while(cond, &body)
  while cond.call
    body.call
  end
end

a = 0
my_while -> { a < 3} do
  puts a
  a += 1
end
