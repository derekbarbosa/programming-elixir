defmodule Greeter do

  def for(name, greeting) do 
    fn
      (^name) -> "#{greeting} #{name}"
      (_) -> "I don't know you"
    end
  end
end

mr_barbosa = Greeter.for("Derek", "Oi!")

IO.puts mr_barbosa.("Derek")
IO.puts mr_barbosa.("Dave")
