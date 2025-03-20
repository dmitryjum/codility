function solution(A) {
  const halfLen = A.length / 2
  let nums = {}
  let dominator = -1;
  A.forEach((n, i) => {
    nums[n] === undefined ? nums[n] = 1 : nums[n]++
    if (nums[n] > halfLen) dominator = i
  });
  return dominator
}

console.log(solution([3,4,3,2,3,-1,3,3]));