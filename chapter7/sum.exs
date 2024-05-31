defmodule MyList do
  # really quick, do a wrapped version to make the func cleaner
  def sum(list), do: _sum(list,0)

  defp _sum([], total),             do: total
  defp _sum([head | tail ], total), do: sum(tail, head+total)
end

# ^ A running sum without a global variable
# Why? We want immutable state
# This is called an 'invariant' -- something that returns VALID and TRUE no
# matter what stage or condition. So on every call, this will be a true value.
# No matter waht, the total var will be the sum of all the elements in the list
# plus current total SO FAR.


# This is really similar to the tail call recursion function example with an
# accumulator:

# Non tail-call optimized
defmodule Facts do
  def of(0), do: 1
  def of(n) when n > 0, do: n * of(n-1)
end

# Tail call optimization
defmodule Facttail do
  def of(0, _acc), do: 1
  def of(n, acc), do: of(n-1, acc*n)
end

# Which eliminates the need for a new stack frame 
