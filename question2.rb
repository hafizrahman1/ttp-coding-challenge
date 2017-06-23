def stringReformatting(s, k)
  # remove each '-' from the string 
  string = s.gsub("-", "")
  # convert the string into an array of characters
  array = string.split(//)
  result = []
  # pop k number of elements from the back of the array and prepend it to the result array
  while (array.size > 0) do
    temp = []
    k.times do
      temp.unshift(array.pop)
    end
    result.unshift(temp.join(""))
  end
  result.join("-")
end
