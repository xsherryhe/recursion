def merge_sort(arr)
  return arr if arr.size <= 1

  left, right = arr.each_slice((arr.size / 2.0).ceil)
                   .map { |half| merge_sort(half) }
  merge(left, right)
end

def merge(left, right)
  sorted_arr = []
  sorted_arr << (left.first < right.first ? left.shift : right.shift) until left.empty? || right.empty?
  sorted_arr + left + right
end
