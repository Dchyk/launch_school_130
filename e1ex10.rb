# Count items

def count(arr)
  count = 0

  arr.each do |el|
    count += 1 if yield(el)
  end

  count
end

# Wtihout using each, loop, while or until

def count1(arr)
  count = 0
  for i in 0..(arr.size - 1) 
    count += 1 if yield(arr[i])
  end
  count
end




# Test cases

count([1,2,3,4,5]) { |value| value.odd? } == 3
count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
count([1,2,3,4,5]) { |value| true } == 5
count([1,2,3,4,5]) { |value| false } == 0
count([]) { |value| value.even? } == 0
count(%w(Four score and seven)) { |value| value.size == 5 } == 2

count1([1,2,3,4,5]) { |value| value.odd? } == 3
count1([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
count1([1,2,3,4,5]) { |value| true } == 5
count1([1,2,3,4,5]) { |value| false } == 0
count1([]) { |value| value.even? } == 0
count1(%w(Four score and seven)) { |value| value.size == 5 } == 2