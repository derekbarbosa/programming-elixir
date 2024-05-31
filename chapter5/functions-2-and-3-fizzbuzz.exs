fizzbuzz = fn
(0, 0, _) -> IO.puts "FizzBuzz"
(0, _, _) -> IO.puts "Fizz"
(_, 0, _) -> IO.puts "Buzz"
(_, _, c) -> IO.puts "#{c}"
end

fizzbuzz.(rem(10,3),rem(10,5),10)
fizzbuzz.(rem(11,3),rem(11,5),11)
fizzbuzz.(rem(12,3),rem(12,5),12)
fizzbuzz.(rem(13,3),rem(13,5),13)
fizzbuzz.(rem(14,3),rem(14,5),14)
fizzbuzz.(rem(15,3),rem(15,5),15)
fizzbuzz.(rem(16,3),rem(16,5),16)
fizzbuzz.(rem(17,3),rem(17,5),17)
