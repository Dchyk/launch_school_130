# max_by

# Using each_with_index

def max_by(arr)
  return nil if arr.empty?
  max = yield(arr[0])
  max_index = 0

  arr.each_with_index do |el, idx|
    if yield(el) > max
      max_index = idx
      max = yield(el)
    end
  end

  arr[max_index]
end

# using upto

def max_by(arr)
  return nil if arr.empty?
  current_max = yield(arr.first)
  max_item = nil

  1.upto(arr.size - 1) do |i|
    if yield(arr[i]) > current_max
      max_item = arr[i]
      current_max = yield(arr[i])
    end
  end

  max_item
end