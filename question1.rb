def sumOfTwo(a,b,v)
  differenceHash = {}
  # iterate over the b integer array and popluate the difference hash with the difference value as a key
  b.each do |element|
    differenceHash[v-element] = true
  end
  # iterate over the a integer array to check if any of the element is a key of the difference hash and return true if it is
  a.each do |element|
    if differenceHash[element]
      return true
    end
  end
  return false
end
# sumOfTwo([3, 6, 7], [2, 1], 9)
