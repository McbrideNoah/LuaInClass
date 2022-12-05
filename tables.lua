local animals = {}
for i = 1, 10, 1 
do
 print("Enter some names ".. i .. ": ")
  animals[i] = io.read()
end

for i = 1, 10, 1 do
  print(animals[i])
end