function solution(A) {
  const halfLen = A.length / 2
  let nums = {}
  let dominator;
  A.forEach((n, i) => {
    nums[n] === undefined ? nums[n] = 1 : nums[n]++
    if (nums[n] > halfLen) dominator = i
  });
  return dominator === undefined ? -1 : dominator
}

console.log(solution([3,4,3,2,3,-1,3,3]));