def split_array(array, group)
  arr = []
  array.each do |_a|
    index = _a % group
    index = index == 0 ? group - 1 : index - 1
    arr[index] ||= []
    arr[index] << _a 
  end
  arr
end
