defmodule Chop do
  
  # minmax is a range of integers
  def guess(actual, range=min..max) do  #We can pattern match inside params!
    guess = div(min+max,2) # This is from the book
    IO.puts "Is it #{guess}?"
    _guess(actual,guess,range) # Let the helper(s!) functions handle the logic
  end

  # Recall that in Elixir, we can have multiple clauses to a functions, each
  # with their own unique body.

  # Here, we take advantage of that trait, and let each body act only on a
  # condition. Remember, the compiler does the work here for us, excuting the
  # body if and only if the conditions and patterns are met. This helps us
  # organize our code conditionally, and use ONLY ONE HELPER FUNCTION IN OUR
  # MAIN CLAUSE!!

  # This is immensely powerful as we can now create clauses that match to a
  # specific pattern, no need to modify large if/def blocks within a singular
  # function. 

  # We use the underscore to denote that these are helper functions of the
  # original function clause

  # Our success condition should come first. We discard the range match since we
  # do not need to do a 'binary search' on the range.
  defp _guess(actual, guess, _) 
      when actual == guess do
    IO.puts "Yes, it is #{actual}"
  end

  # The order of these next two doesnt matter.
  # But notice how we solve this problem with recursion!
  # Since our guess is less than actual, it has to be somewhere in between our
  # guess and the max range.
  defp _guess(actual, guess, _min..max)
      when guess < actual do 
    guess(actual, guess+1..max)
  end

  defp _guess(actual, guess, min.._max) 
      when guess > actual do 
    guess(actual, min..guess-1)
  end
end
