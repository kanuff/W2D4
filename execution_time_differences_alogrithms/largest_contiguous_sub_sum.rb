 
 require "byebug"


def largest_con_subsum_1(list)

   subarrs = []
   list.each_with_index do |ele_1, idx_1|
      list.each_with_index do |ele_2, idx_2|
         if idx_1 <= idx_2
            subarrs << list[idx_1..idx_2]
         end

      end
   end

   largest = 0
   subarrs.each do |arr|
      if arr.sum > largest
         largest = arr.sum
      end
   end
   largest
end

# p largest_con_subsum_1(list)

   #  [5]           # => 5
   #  [5, 3]        # => 8 --> we want this one
   #  [5, 3, -7]    # => 1
   #  [3]           # => 3
   #  [3, -7]       # => -4
   #  [-7]          # => -7
   #

# def largest_con_subsum_2(list)
#    max = list.max
#    max_index = list.find_index(max)

#    right = list[max_index+1..-1]
#    left = list[0...max_index]
#    right.each do |num|
#       break if num < 0 
#       max += num 
#    end
#    left.reverse.each do |num|
#       break if num < 0
#       max += num 
#    end
#    return max
# end

def largest_con_subsum_2(list)
   largest = list.first
   contiguous_sum = list.first

   i = 1
   
   while i < list.length
      current = list[i]
      contiguous_sum += current
      if contiguous_sum > largest
         largest = contiguous_sum 
      elsif current > largest
         largest = current
       
      end
      contiguous_sum = 0 if contiguous_sum < 0
      i += 1 
   
   end
   return largest
end

def largest_con_subsum_notworking(list)
   largest = list.first
   contiguous_sum = list.first

   i = 1
   
   while i < list.length
      if contiguous_sum < contiguous_sum + list[i]
         contiguous_sum += list[i]
      else
         contiguous_sum = list[i]
      end

      if contiguous_sum + list[i] > largest && contiguous_sum + list[i] > list[i]
         largest = contiguous_sum + list[i]

      elsif list[i] > largest && list[i] > contiguous_sum + list[i]
         largest = list[i]
      end

      

      i+=1
   end
   largest

end

list = [5, 3, -7]
p largest_con_subsum_2(list)

list = [2, 3, -6, 7, -6]
p largest_con_subsum_2(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_con_subsum_2(list) # => -1 (from [-1])