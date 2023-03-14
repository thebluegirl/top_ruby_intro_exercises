def bubble_sort(array)
  swap_counter = 0

  array.each_with_index do |num, idx|
    if idx == array.length - 1
      array
    elsif num > array[idx + 1]
      temp = array[idx + 1]
      array[idx + 1] = num
      array[idx] = temp
      swap_counter += 1
    else
      next
    end
  end

  if swap_counter == 0
    p array
  else
    bubble_sort(array)
  end
end

bubble_sort([4,3,78,2,0,2])