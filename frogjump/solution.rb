def solution(x, y, d)
  distance = y - x
  (distance / d.to_f).ceil
end