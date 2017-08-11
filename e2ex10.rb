# each_cons

def each_cons(arr, num)

  for i in 0..(arr.size - num)
    yield(arr[i, num])
  end

  nil
end