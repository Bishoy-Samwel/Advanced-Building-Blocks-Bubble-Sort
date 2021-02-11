bubble = [5, 4, 3, 2, 1, 7, 8.9, 22, 34, 343, 5, 0, -1]
def bubble_sort(arr)
  times = 0
  run = arr.length - 1
  run.times do
    (0..arr.length - 2 - times).each do |i|
      next unless arr[i] > arr[i + 1]

      temp_i = arr[i]
      arr[i] = arr[i + 1]
      arr[i + 1] = temp_i
    end
    times += 1
  end
end
bubble_sort(bubble)
print bubble
