--Showing recursion in lua

function printLine(n)
  if (n < 1)
  then print("-")
  else io.write("-") printLine((n-1))
  end
end

printLine(5)