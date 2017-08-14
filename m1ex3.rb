items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(list)
  puts "Let's start gathering food."
  yield(list)
  puts "Let's start gathering food."
end

gather(items) { |x| puts x.join(', ') }