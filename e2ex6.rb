# each_with_index

def each_with_index(arr)
  index = 0

  arr.each do |el|
    yield(item, index)
    index += 1
  end


end