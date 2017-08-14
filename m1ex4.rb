# Passing parameters part 2

def categorize(array)
  return array if array.size < 3

  yield(array[2..(array.size - 1)])


end

def types(birds)
  yield(birds)
end

types(birds) do |_, _, *raptors|
  puts "Raptors: #{raptors.join(', ')'}."
end


# Test cases

raven, finch, *raptors = %w(raven finch hawk eagle)
p raven # => 'raven'
p finch # => 'finch'
p raptors  # => ['hawk','eagle']