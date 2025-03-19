function solution(H) {
  let wallStack = [];
  let count = 0;
  for (let i = 0; i < H.length; i++) {
    if (wallStack.length === 0) {
      wallStack.push(H[i]);
      count++;
    } else {
      while (wallStack.length > 0 && wallStack[wallStack.length - 1] > H[i]) {
        wallStack.pop();
        if (wallStack.length === 0 || wallStack[wallStack.length - 1] < H[i]) {
          wallStack.push(H[i]);
          count++;
        }
      };
      if (wallStack.length > 0 && wallStack[wallStack.length - 1] < H[i]) {
        wallStack.push(H[i]);
        count++;
      }
    }
  }
  return count;
}

console.log(solution([8,8,5,7,9,8,7,4,8]));