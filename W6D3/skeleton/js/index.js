console.log("Hello from the JavaScript console!");

// Your AJAX request here

$.ajax({
  type: 'GET',
  url: "http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=ad1bb21b7cf64cd7e30b7dba83b51ce8",
  success(data) {
    console.log("We have your weather!");
    console.log(data);
  },
  error() {
    console.error("An error occurred.");
  },
});

// Add another console log here, outside your AJAX request

console.log("trololo");
