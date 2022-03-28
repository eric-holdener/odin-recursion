def fibs(num)
  i = 0
  fibArr = []
  while i < num
    if i == 0
      fibArr.push(0)
    elsif i == 1
      fibArr.push(1)
    else
      fibArr.push(fibArr[i-1]+fibArr[i-2])
    end
    i += 1
  end
  fibArr
end

def fibs_rec(num)
  if num === 0 
    return 0
  elsif num === 1 
    return 1
  else 
    return fibs_rec(num-1) + fibs_rec(num-2)
  end
end

def merge_sort(arr)
  if arr.length < 2
    return arr
  else
    full_arr = []
    left_arr = merge_sort(arr[0..arr.length/2-1])
    right_arr = merge_sort(arr[arr.length/2..])
    i_l = 0
    i_r = 0
    while i_l < left_arr.length && i_r < right_arr.length
      if left_arr[i_l] < right_arr[i_r]
        full_arr.push(left_arr[i_l])
        i_l += 1
      else
        full_arr.push(right_arr[i_r])
        i_r += 1
      end
    end
    if i_l == left_arr.length
      full_arr.push(right_arr[i_r..])
    else
      full_arr.push(left_arr[i_l..])
    end
    full_arr = full_arr.flatten
  end
end
p fibs(8)
p fibs_rec(7)

arr = [1,4,2,6,3,7,5,8]
sorted_arr = merge_sort(arr)
p "Unsorted Array = #{arr}"
p "Sorted Array = #{sorted_arr}"