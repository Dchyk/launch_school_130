# Passing paramters part 3

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# 1

gather(items) do |*stuff, final|
  puts stuff.join(', ')
  puts final
end

# 2

gather(items) do | first, *mid, last|
  puts first
  puts mid.join(', ')
  puts last
end

# 3

gather(items) do | first, *remainder|
  puts first
  puts remainder.join(', ')
end

#4

gather(items) do | first, second, third, fourth|
  puts "#{first}, #{second}, #{third}, and #{fourth}"
end
