# each_with_object

def each_with_object(arr, obj)

  arr.each do |el|
    yield(el, obj)
  end

  obj
end