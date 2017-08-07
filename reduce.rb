[1, 2, 3].reduce do |acc, num|
  acc + num
end

def reduce(array, accumulator=0)
  counter = 0

  while counter < array.size
    accumulator = yield(accumulator, array[counter])
    counter += 1
  end

  accumulator
end