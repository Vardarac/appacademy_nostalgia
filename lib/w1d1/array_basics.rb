class Array
  def my_uniq
    output_array = []
    self.each do |element|
      output_array << element unless output_array.include?(element)
    end
    return output_array
  end
end