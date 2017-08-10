# Zipper

def zip(arr1, arr2)
  zipped = []

  arr1.each_with_index do |el, idx|
    sub_array = el, arr2[idx]
    zipped << sub_array
  end

  zipped
end