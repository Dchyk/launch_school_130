# True for any?


def any?(arr)
  return false if arr.empty?

  arr.each do |el|
    return true if yield(el)
  end
  false
end


# Handling Arrays, Hashes, Sets as arguments: 

require 'set'
def any2?(item)
  item.each { |*args| return true if yield(*args) } # allows any # of args
  false
end

# Test cases

any?([1, 3, 5, 6]) { |value| value.even? } == true
any?([1, 3, 5, 7]) { |value| value.even? } == false
any?([2, 4, 6, 8]) { |value| value.odd? } == false
any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
any?([1, 3, 5, 7]) { |value| true } == true
any?([1, 3, 5, 7]) { |value| false } == false
any?([]) { |value| true } == false