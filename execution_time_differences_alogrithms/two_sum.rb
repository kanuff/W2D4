
require "byebug"

def two_sum?(arr, target_sum)


end



def bad_two_sum?(arr, target_sum)
  arr.each_with_index do |ele1, i1|
    arr.each_with_index do |ele2, i2|
      if i2 > i1 && ele1 + ele2 == target_sum
        return true
      end
    end
  end
 false
end




def okay_two_sum?(arr, target_sum)
  arr = arr.sort
  left = arr.length / 2 
  right = left + 1
  if arr[left] + arr[right] == target_sum
    return true
  else
    until arr[left] + arr[right] == target_sum
      sum = arr[left] + arr[right]
      # debugger
      case sum <=> target_sum
      when 0
        return true
      when -1 
        right += 1 
      when 1
        left -= 1
      end
      break if right >= arr.length  || left < 0  
      return true if arr[left] + arr[right] == target_sum
    
    end
  end
    return false
end

arr1 = [1,1,1,1,1,1,1,1,1,1,9]
arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false
p okay_two_sum?(arr1, 10)