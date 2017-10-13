def windowed_max_range(array, w)
  current_max_range = 0

  (0...array.length-w+1).each do |i|
    window = array[i..i+w-1]
    max = window.max
    min = window.min
    diff = max - min
    p max
    p min
    p window

    if diff > current_max_range
      current_max_range = diff
    end
  end
  p current_max_range
  current_max_range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
