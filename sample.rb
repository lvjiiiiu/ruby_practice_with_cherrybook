puts "Start"
module Greeter
def hello
  "hello"
end
end

begin
  greeter = Greeter.new
rescue
  puts "例外が発生したがこのまま続行する"
end
  
  puts "End."
 