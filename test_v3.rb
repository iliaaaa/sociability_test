require_relative "lib/test_class"
require_relative "lib/test_print"

test = TestClass.new
printer = TestPrint.new

until test.end?
  test.next_q
end

printer.result(test.answers)



