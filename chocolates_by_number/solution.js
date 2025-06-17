

function gcd(a, b) {
  if (b === 0) return a;
  return gcd(b, a % b)
}

function solution(n,m) {
  return n / gcd(n, m)
}

console.log(solution(10,4)) // 5

// 0 + 4 % 10 = 4
// 4 + 4 % 10 = 8
// 8 + 4 % 10 = 2
// 2 + 4 % 10 = 6
