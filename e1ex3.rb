# input 
# - a sorted a array of integers

# output
# - a sorted array of integers

# algorithm
# - starting with the minimum in the input array plus 1,
# count upto 1 less than the max in the input array.
# - for each integer in the count, test if it is included in the
# input array. 
# - - if it is included, next. 
# - - if it is not included,save it in the output array 

def missing(arr)
  missing = []

  (arr.min + 1).upto(arr.max - 1) do |el|
    next if arr.include?(el)
    missing << el
  end

  missing
end



# Test cases

missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
missing([1, 2, 3, 4]) == []
missing([1, 5]) == [2, 3, 4]
missing([6]) == []