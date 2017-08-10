# First, create a lookup table of letters 13 chars ahead
# of each in the alphabet.

LOOKUP_TABLE = {}

("A".."M").each do |letter|
  LOOKUP_TABLE[letter] = (letter.ord + 13).chr
end

("N".."Z").each do |letter|
  LOOKUP_TABLE[letter] = (letter.ord - 13).chr
end

("a".."m").each do |letter|
  LOOKUP_TABLE[letter] = (letter.ord + 13).chr
end

("n".."z").each do |letter|
  LOOKUP_TABLE[letter] = (letter.ord - 13).chr
end

def decrypt(string)
  decrypted = ''
  string.each_char do |char|
    if LOOKUP_TABLE.keys.include?(char)
      decrypted << LOOKUP_TABLE[char]
    else
      decrypted << char
    end
  end
  decrypted
end

# Test Cases

puts decrypt("Nqn Ybirynpr")
puts decrypt("Tenpr Ubccre")
puts decrypt("Nqryr Tbyqfgvar")
puts decrypt("Nyna Ghevat")
puts decrypt("Puneyrf Onoontr")
puts decrypt("Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv")
puts decrypt("Wbua Ngnanfbss")
puts decrypt("Ybvf Unvog")
puts decrypt("Pynhqr Funaaba")
puts decrypt("Fgrir Wbof")
puts decrypt("Ovyy Tngrf")
puts decrypt("Gvz Orearef-Yrr")
puts decrypt("Fgrir Jbmavnx")
puts decrypt("Xbaenq Mhfr")
puts decrypt("Fve Nagbal Ubner")
puts decrypt("Zneiva Zvafxl")
puts decrypt("Lhxvuveb Zngfhzbgb")
puts decrypt("Unllvz Fybavzfxv")
puts decrypt("Tregehqr Oynapu")