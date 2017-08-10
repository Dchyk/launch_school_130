def divisors(int)
 (1..int).select { |num| int % num == 0 }
end

