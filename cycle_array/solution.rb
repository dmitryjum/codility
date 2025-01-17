def solution(a, k)
  result = []
  total_length = a.count
  a.each_with_index do |el, id|
    if (id + k) < total_length
      result[id + k] = el
    else
      result[id + k - total_length] = el
    end
  end
  result
end