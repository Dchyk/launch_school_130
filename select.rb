def select(array)
  counter = 0
  selected = []

  while counter < array.size
    if yield(array[counter])
      selected << array[counter]
    end
    counter += 1
  end

  selected
end

array = [1, 2, 3, 4, 5]

puts select(array) { |num| num.odd? }
puts select(array) { |num| puts num }
puts select(array) { |num| num + 1 }
