array = [17,3,6,9,15,8,6,1,10]

def stock_picker (array)
  array_copy = array.dup
  push_me = []
  
  array.each_with_index do |current_val, index|
    array_copy.shift
    break if array_copy.length == 0
    largest_consec_val = array_copy.sort[-1]
    largest_index = array.find_index(largest_consec_val)
    subtracted = largest_consec_val - current_val
    push_me.push([index, largest_index, subtracted])
  end
  push_me.map { |element| element.reverse}.sort[-1].drop(1).reverse
end

stock_picker (array)