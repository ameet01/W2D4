def my_min(array)
  (0...array.length).each do |i|
    subarray = array.dup
    subarray.delete_at(i)
    return array[i] if subarray.all?{ |j| j>array[i]}

  end
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)

def my_min2(array)
  min_val = array.first
  (0...array.length).each do |i|
    min_val = array[i] if min_val > array[i]
  end
  min_val
end

p my_min2(list)


def largest_contiguous_subsum(array)
  result = []
  (0...array.length).each do |i|
    (i...array.length).each do |j|
      result << array[i..j]
    end
  end
  result.map! {|subarray| subarray.reduce(:+)}
  result.max
end


list = [5, 3, -7]
p largest_contiguous_subsum(list)
list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)
list = [-5, -1, -3]
p largest_contiguous_subsum(list)


def largest_contiguous_subsum2(array)
  return array.max if array.all?{ |i| i < 0 }

  largest = 0
  current = 0

  array.each do |i|
    current += i
    largest = current if current > largest
    if current < 0
      current = 0
    end
  end

  largest
end


list = [5, 3, -7]
p largest_contiguous_subsum2(list)
list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum2(list)
list = [-5, -1, -3]
p largest_contiguous_subsum2(list)
