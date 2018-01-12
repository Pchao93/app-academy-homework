// console.log("Hello World!");

function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}
// mysteryScoping1()
function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}
// mysteryScoping2()
function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    // var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}
mysteryScoping4()
function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  // let x = 'out of block again';
  console.log(x);
}

let madLib = (verb, adjective, noun) => {
   console.log("We shall " + verb.toUpperCase()+" the " + adjective.toUpperCase() + " " + noun.toUpperCase());
};

madLib("make", "best", "guac")


let fizzBuzz = (array) => {
  let result = [];
  for (let i = 0; i < array.length; i++) {
    if (array[i] % 3 === 0 && array[i] % 5 === 0){
      continue;
    } else if (array[i] % 3 === 0 || array[i] % 5 === 0) {
      result.push(array[i]);
    } else {
      continue;
    }
  }
   console.log(result);
};

let isSubstring = (searchString, subString) => {

  for (i = 0; i < searchString.length; i++) {
    var chunk = searchString[i]
    for (j = i + 1; j < searchString.length; j++) {
      chunk += searchString[j]
      if (subString === chunk) {
         console.log(true);
         return
      }
    }
  }
  console.log(false);


}

let isPrime = (number) => {

  for (i = 2; i < number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;

}

let sumOfNPrimes = (n) => {
  var i = 2
  var sum = 0
  var count = 0
  while (count < n) {
    if (isPrime(i)) {
      sum += i
      count++
    }
    i++
  }
  return console.log(sum);



}

let callBack = (names) => {
  names.forEach(function(name) {
    console.log(name);
  });
}

let titleize = (names, callBack) => {
  callBack(names.map(function(name) {
    return "Mx. " + name + " Jingleheimer Schmidt";
  }))
}

titleize(["Mary", "Brian", "Leo"], callBack);
isSubstring("Jump for joy", "joys")
isSubstring("time to program", "time")

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = () => {
  console.log(this.name + "the elephant goes 'phrRRRRRRRRRRR!!!!!!!'");
}

Elephant.prototype.grow = function() {
  this.height += 12
}

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick)
}

Elephant.prototype.play = function() {
  let idx = (Math.random() * 100).floor % this.tricks.length
  trick = this.tricks[0]
  console.log(this.name + " is " + trick);
}

Kitten.prototype.meow = function () {
  console.log(this.name + ' says "meow!"');
};

Elephant.paradeHelper = function(elephant) {
  console.log(elephant.name + " is trotting by!");
}

Elephant.parade = function(herd) {
  herd.forEach(function(elephant) {
    Elephant.paradeHelper(elephant)
  });
}





function Kitten(name, age) {
  this.name = name;
  this.age = age;

  this.meow = function () {
    console.log(this.name + ' says "meow!"');
  };
}

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);
let herd = [ellie, charlie, kate, micah];
Elephant.parade(herd)

ellie.grow()
console.log(ellie.height);
ellie.play()

let dinerBreakfast = () => {
  let breakfastItems = ["cheesy scrambled eggs"]
   return (newItem) => {
    if (newItem) {
      breakfastItems.push(newItem)
    }
    console.log(`I'd like ${ breakfastItems.join(" and ") } please.`);
  };

}

let bfastOrder = dinerBreakfast();
bfastOrder();
bfastOrder("dogs");
bfastOrder("cats");





fizzBuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])

isPrime(2)
isPrime(100)
isPrime(53)
sumOfNPrimes(4)
