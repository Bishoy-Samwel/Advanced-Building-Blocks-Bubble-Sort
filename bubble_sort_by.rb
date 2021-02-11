def bubble_sort_by(arr)
  times = 0
  run = arr.length - 1
  run.times do
    (0..arr.length - 2 - times).each do |i|
      left = arr[i]
      right = arr[i + 1]
      next unless yield(left, right).positive?

      temp_i = arr[i]
      arr[i] = arr[i + 1]
      arr[i + 1] = temp_i
    end
    times += 1
  end
  arr
end
bubble_sort_by(%w[h hi hey hiya hello]) do |left, right|
  left.length - right.length
end
