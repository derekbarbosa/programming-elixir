defmodule Mylist do
  def len([]), do: 0 # Our base case
  def len([_head|tail]), do: 1 + len(tail) #goes thru the head of e/a inner list
  # example: [1,2,3] --> head|tail = 1 [2,3] len([1,2,3]) => 1 + len([2,3]) + 1 + 1 +
  # len([3]) => 1 + 1 + 1 + len([]) => 1 + 1 + 1 + 0

  def square([]), do: []
  def square([head | tail]), do: [ head*head | square(tail)] 
  # same principle, iterate thru each "head item "

  def add_1([]), do: []
  def add_1([head|tail]), do: [ head+1 | add_1(tail) ]

  # Notice how these functions all fall to the following pattern:
  def map([], _func), do: []
  def map([head|tail], func), do: [func.(head) | map(tail, func)]

  # Take a list, perform an operation, return new list recursively!
end


