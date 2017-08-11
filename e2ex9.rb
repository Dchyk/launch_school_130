# each_cons

def each_cons(arr)

  for i in (1..(arr.size - 1))
    yield(arr[(i-1)..i])
  end
  
  nil
end