    list = [ 0, 3, 5, 4, -5, 10, 1, 90, 0, 4, 8 ]
    # my_min(list)  # =>  -5

    def my_min_1 (list)

      # smallest = list.first

      list.each do |ele1|
        if list.all? {|ele| ele1<= ele}
          return ele1
        end
      end
    end
    
    p my_min_1(list)


    def my_min_2(list)
      smallest = list.first

      list.each do |ele|
        if ele < smallest
          smallest = ele
        end
      end
      smallest
    end

    p my_min_2(list)



    