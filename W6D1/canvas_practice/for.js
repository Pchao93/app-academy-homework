let sumNums = function(arr) {
  let sum = 0;
  arr.forEach(el => {
    sum += el;
  });
  return sum;
};

console.log(sumNums([1, 2, 3, 4, 5]));
