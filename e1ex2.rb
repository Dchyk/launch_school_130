def compute 
  value = yield if block_given?
  if value
    return value
  else
    "Does not compute."
  end
end



compute { 5 + 3 } == 8 #=> true
compute { 'a' + 'b' } == 'ab' #=> true
compute == 'Does not compute.' #=> true

# Further exploration

def compute2(arg)
  return 'Does not compute.' unless block_given?
  yield(arg)
end

compute2(5) { |x| x + 5} #=> 10
compute2(20) { |x| x + 5} #=> 25
compute2(5)  #=> "Does not compute."