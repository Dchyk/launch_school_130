factorials = Enumerator.new do |yielder|
  accumulator = 1
  number = 0
  loop do
    accumulator = number.zero? ? 1 : accumulator * number
    yielder << accumulator
    number += 1
  end
end

stringexpander = Enumerator.new do |str|
  accumulator = ''
  loop do
    accumulator << 'a' 
    str << accumulator
  end
end