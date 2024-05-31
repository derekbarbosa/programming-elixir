# reduce(collection, init, fn)


defmodule MyList do
  
  def reduce([], value, _), do: value

  # Apply function to head and current value, passes the result as the new value
  # while "iterating" over the list's tail
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end
end


#Allows us to do this:

# Add the value to the head of the list!
# Init sum at 0
IO.puts "#{MyList.reduce([1,2,3,4,5], 0, &(&1 + &2))}"
