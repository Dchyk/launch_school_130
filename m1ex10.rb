def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end


def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      if block_given? 
        next if yield(array[index - 1], array[index])
        array[index - 1], array[index] = array[index], array[index - 1]
        swapped = true
      else
        next if array[index - 1] <= array[index]
        array[index - 1], array[index] = array[index], array[index - 1]
        swapped = true
      end
    end


    break unless swapped
  end
  nil
end

# Iterate through the array, and IF a block is given, then
# check if the block returns true for the current element and the previous element. 
# If the block returns true, then do nothing.
# If the block returns false, then swap the elements with each other. 
# IF no block is given, perform bubble sort as normal. 