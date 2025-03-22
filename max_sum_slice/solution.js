function solution(a) {
  let maxSum = currentMaxSlice = a[0];
  for (let i = 1; i < a.length; i++) {
    currentMaxSlice = Math.max(a[i], currentMaxSlice + a[i])
    maxSum = Math.max(maxSum,currentMaxSlice)
  }
  return maxSum
}

console.log(solution([3,2,-6,4,0]))