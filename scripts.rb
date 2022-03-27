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

p fibs(8)
p fibs_rec(7)