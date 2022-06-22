list = readlines("inputsfortask2.txt")
list2 = split.(list)

#a, b = split.(list2[1][1], "-")

#parse.(Int64, a)
#parse.(Int64, b)

valid_passwords = 0

function f()

for i in list2
   a, b = split.(i[1], "-")
   
   parse.(Int64, a)
   parse.(Int64, b)

   x=findall(==(i[2][1]),i[3])
   println(length(x))
   if length(x) >= a && length(x) <= b
      valid_passwords += 1
   end 
end

end
f()

