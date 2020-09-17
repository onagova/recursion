def merge_sort(arr)
  return arr if arr.length < 2

  left_half = merge_sort(arr[0...(arr.length / 2)])
  right_half = merge_sort(arr[(arr.length / 2)..-1])

  merged = []
  loop do
    if left_half.first < right_half.first
      merged << left_half.shift
    else
      merged << right_half.shift
    end

    if left_half.empty?
      merged.concat(right_half)
      break
    elsif right_half.empty?
      merged.concat(left_half)
      break
    end
  end

  merged
end

p merge_sort [5, 2, 1, 3, 6, 4]
p merge_sort [4, 8, 6, 2, 1, 7, 5, 3]
