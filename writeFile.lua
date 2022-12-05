--writing to files in lua
function checkNum(a)
  return (type(a) == type(5))
end


print("What is the name of the file you would like to write to? ")
local fileName = io.read()
print("How many lines would you like to write to this file? ")
local numLines = tonumber(io.read())
local check = checkNum(numLines)
while(check == false) do
  print("Please enter a number: ")
  numLines = tonumber(io.read())
  check = checkNum(numLines)
end

local file = io.open((fileName .. ".txt"), "w")
io.output(file)
for i=1, numLines, 1 do
  print("Enter line " .. i)
  file:write(io.read(), "\n")
end

file:close()