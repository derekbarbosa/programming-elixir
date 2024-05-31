prefix = fn str1 -> (fn str2 -> IO.puts(str1 <> " " <> str2) end) end


mrs = prefix.("Mrs")
mrs.("Smith")

prefix.("Elixir").("Rocks")
