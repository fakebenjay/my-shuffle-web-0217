class Array

  def my_shuffle
    return self if self.length <= 1
    return [self[1], self[0]] if self.length == 2
    shuffled = self.shuffle
    until completely_different?(shuffled)
      shuffled = self.shuffle
    end
    return shuffle
  end

  def completely_different?(shuffled)
    shuffled.each_with_index do |element,i| 
      if element == self[i]
        return false 
      end
    end
    true
  end

end