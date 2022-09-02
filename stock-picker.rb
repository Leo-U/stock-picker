array = [17,3,6,9,15,8,6,1,10]

def stock_picker(array)
  array_copy = array.dup
  push_me = []
  
  array.each_with_index do |current_val, index|
    array_copy.shift
    break if array_copy.length == 0
    largest_consec_val = array_copy.sort[-1]
    largest_index = array.find_index(largest_consec_val)
    subtracted = largest_consec_val - current_val
    push_me.push([subtracted, index, largest_index])
  end
  push_me.sort[-1].drop(1)
end

puts "The best days to buy and then sell are days #{stock_picker(array)} in the days 0-#{array.length-1} whose stock prices are, in sequence, #{array}."