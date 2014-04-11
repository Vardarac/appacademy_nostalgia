class Array
  def my_uniq
    output_array = []
    self.each do |element|
      output_array << element unless output_array.include?(element)
    end
    return output_array
  end

  def two_sum
    output_array = []
    self.each_with_index do |outer_element, outer_index|
      self.each_with_index do |inner_element, inner_index|
        next if inner_index <= outer_index
        if outer_element + inner_element == 0
          output_array << [outer_index, inner_index] 
        end
      end
    end
    output_array
  end

  def my_transpose
    output_array = []
    self[0].each_index do |column_index|
      output_array << []
      self.each do |row|
        output_array[-1] << row[column_index]
      end
    end
    return output_array
  end
end