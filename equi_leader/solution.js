function solution(A) {
  const halfLen = A.length / 2
  let stack = []
  let leader;
  // find the dominating candidate
  A.forEach(n => {
   if (stack.length === 0 || stack[stack.length - 1] === n) {
      stack.push(n)
    } else {
      stack.pop()
    }
  })
  leader = stack[0]
  let counter = 0;
  for (let n of A) if (n === leader) counter ++ // count its occurances
  if (counter <= halfLen) return 0; // return 0 if it isn't greated than half length of the array - not the dominator
  let equiLeaders = 0;
  let leftCount = 0;
  A.forEach((n, i) => {
    if (n === leader) leftCount++; // if it matches the dominator add the left count
    // if left count greather than the half length of the left part AND
    // total occurances minus the left counter (total of right occurances) GREATER THAN half right part length
    if (leftCount > (i + 1) / 2 && (counter - leftCount) > (A.length - i - 1) / 2) {
      equiLeaders++;
    }
  });
  return equiLeaders;
}

console.log(solution([4,3,4,4,4,2])) // 2
console.log(solution([3,4,3,2,3,-1,3,3]))
console.log(solution([1,2,3,4,5,5,6,9,14,2,2,2,2]))