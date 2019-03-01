require "pry"

class Hash
  def keys_of(*arguments)
    array1 = []
    self.each do |key, value|
      arguments.each do |argument|
        if argument == value
          array1.push(key)
        end
      end
    end
    array1
  end
end