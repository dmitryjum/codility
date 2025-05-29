require 'pry'

def solution(a)
  peaks = get_peaks(a)
  return 0 if peaks.empty?
  return 1 if peaks.length == 1

  max_flags = peaks.length
  flags_to_set = max_flags - 1 #because we set first flag on the first peak
  while flags_to_set > 0 do
    last_flag = peak[0]
    (1..peaks.length - 1).each do |i|
      if (peaks[i] - set_flags.last) >= max_flags
        flags_to_set -= 1 #deduct the num of flags left to set
        last_flag = peaks[i] #push the last peak number
      end
    end

    if flags_to_set > 0 #if we have flags left after going through every peak - reduce max flags and flags to set
      max_flags -= 1
      flags_to_set = max_flags - 1
    end
  end
  max_flags
end

def faster_solution(a)
  peaks = get_peaks(a)
  left = 1
  right = peaks.length
  result = 0

  while left <= right do # binary search
    mid = (left + right)/2 # get the mid value
    if can_place_flag(peaks, mid)
      result = mid #if we can place the flags with mid value, set the result
      left = mid + 1 # and try to start with left set to mid + 1
    else
      right = mid - 1 #if we can't place flags with mid number of flags, reduce the mid value by one and set right to it
    end
  end
  result
end

def can_place_flag(peaks, mid)
  peaks_len = peaks.length
  used_flags = 1
  last_flag = peaks[0]
  i = 1

  while i < peaks_len && used_flags < mid do
    if peaks[i] - last_flag >= mid
      used_flags += 1 # place a flag if current peak value - last flag value is greater or equals to mid value
      last_flag = peaks[i]
    end
    i += 1
  end
  used_flags == mid # true if we used mid number of flags
end

def get_peaks(a)
  peaks = []
  a_len = a.length
  (1...a_len - 1).each do |i|
    peaks << i if a[i - 1] < a[i] && a[i] > a[i + 1] # check if the peak is greater than the next one and smaller than the one before
  end
  peaks
end

# puts solution([1,5,3,4,3,4,1,2,3,4,6,2])
puts faster_solution([1,5,3,4,3,4,1,2,3,4,6,2])