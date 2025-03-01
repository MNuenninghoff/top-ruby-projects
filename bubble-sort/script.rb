def bubble_sort(array)
  continue = true
  while continue
    changes = 0
    array.each_with_index do |value, index|
      unless array[index + 1].nil?
        if array[index + 1] < value
          array[index] = array[index + 1]
          array[index + 1] = value
          changes += 1
        end
      end
    end
    if changes == 0
      continue = false
    end  
  end
  array
end

#test
sorted_array = bubble_sort([4, 3, 78, 2, 0, 2])
p "expected: [0, 2, 2, 3, 4, 78], returned: #{sorted_array}"