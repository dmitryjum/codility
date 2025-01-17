def solution(n)
  max_binary_gap = 0
  binary = n.to_s(2)
  splits = binary.split(/(1)/)
  splits.each_with_index do |split, id| 
    if !split.match(/0/).nil? && splits[id - 1].to_i == 1 && splits[id + 1].to_i == 1
      current_gap_length = split.length
      max_binary_gap = current_gap_length if current_gap_length > max_binary_gap
    end
  end
  max_binary_gap
end