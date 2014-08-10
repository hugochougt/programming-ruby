
class Test
  puts "Test"
end

class DTest < Test
  puts "DTest"
end

t1 = Test.new
t2 = Test.new
# print "Test" only once

dt1 = DTest.new
dt2 = DTest.new
# print "DTest" only once

