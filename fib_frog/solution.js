function solution(a) {
  const n = a.length
  let fib = new Array(n + 2).fill(0)
  fib[1] = 1
  let jumps = []
  if (a[0] == 1) {
    jumps.push(a[0] - -1)
  }
  if (a[1] == 1) {
    jumps.push(a[1] - -1)
  }

  for (let i = 2; i < n + 1; i++ ) {
    fib[i] = fib[i - 1] + fib[i - 2]
    if (fib[i] > n) break;

    if (a[fib[i]] == 1) {
      if (jumps.length === 0) {
        jumps.push({[i]: fib[i] - -1})
      } else {
        jumps.push({[i]: fib[i] - Object.keys(jumps[jumps.length - 1])[0]})
      }
    }
  }
  return jumps
}

console.log(solution([0,0,0,1,1,0,1,0,0,0,0]))