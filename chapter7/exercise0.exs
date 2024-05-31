defmodule Sum do
  def of([]), do: 0
  def of( [ head | tail ] ), do: head + of(tail)
end


IO.puts "Sum: #{Sum.of([1,2,3,4,5,6])}"
IO.puts "Sum: #{Sum.of([2,4,6,8,10])}"
IO.puts "Sum: #{Sum.of([5,10,15,20,25])}"
