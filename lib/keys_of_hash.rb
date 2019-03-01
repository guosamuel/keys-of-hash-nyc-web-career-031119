require "pry"

class Hash
  def keys_of(*arguments)
    if arguments.is_a? String
      length_array = []
      length_array.push(arguments)
      
      if length_array.length == 1
        array1 = []
        self.each do |zoo, location|
          if location == arguments
            array1.push(zoo)
          end
        end

      else
        array1 = []
        counter = 0
        while counter < length_array.length
          self.each do |key, value|
            if value == arguments
              array1.push(key)
            end
          end
          counter += 1
        end
      end
    array1
    
    elsif arguments.is_a? Fixnum
      array2 = []
      self.each do |key, value|
        if value == arguments
          array2.push(key)
        end
      end
      array2
      
    # else
    #   array3 = []
    #   counter = 0
    #   while counter < arguments.length
    #     self.each do |key, value|
    #       if value == arguments
    #         array3.push(key)
    #       end
    #     end
    #     counter += 1
    #   end
    #   array3
    end  
  end
end