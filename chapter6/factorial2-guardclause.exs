defmodule Factorial2 do

  def of(0), do: 1

  def of(n) 
      when n > 0 
      and is_number(n) do
    n * of(n-1)
  end

end
