class Array

  def my_shuffle
    return self if self.length <= 1
    result = Array.new(self.length, "whatever")
    self.each_with_index do |element, i|
      index = rand(0...self.length)
      until result[index] == "whatever" && index != i
        index = rand(0...self.length)
      end
      result[index] = element
    end
    result
  end

end