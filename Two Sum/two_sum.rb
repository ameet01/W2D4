def bad_two_sum?(arr, target_sum)
  (0...arr.length).each do |i|
    (i+1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target_sum
    end
  end
  false
end


def okay_two_sum?(arr, target_sum)
  sorted = false
  while !sorted
    sorted = true
    (0...arr.length-1).each do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = false
      end
    end
  end
  arr

  i = 0
  j = arr.length - 1

  until i == j
    if target_sum > (arr[i] + arr[j])
      i += 1
    elsif target_sum < (arr[i] + arr[j])
      j -= 1
    else
      return true
    end
  end

  false
end

def two_sum?(array, target)
  hash = {}

  (0...array.length).each do |i|
    diff = target - array[i]
    hash[array[i]] = diff
    return true if hash[diff] == array[i]
  end

  false
end


p two_sum?([3,2,1,5,3,-2], 5)
