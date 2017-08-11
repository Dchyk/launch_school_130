# drop while

def drop_while(arr)
  dropped  = []

  idx = 0

  while idx <= (arr.size - 1) 
    if yield(arr[idx])
      dropped << arr[idx]
    else
      break
    end
    idx += 1
  end
  arr - dropped
end