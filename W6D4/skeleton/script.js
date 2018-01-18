document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!

  let sfplacesform = document.querySelector(".list-container form");
  console.log(sfplacesform);
  sfplacesform.addEventListener("submit", event => {
    // **cancel** the event; if the event were not canceled the browser
    // would try to submit the form for real.
    event.preventDefault();

    // Get the name input element (type `HTMLInputElement`), get the
    // value, and clear it.
    const sfPlacesNameInputEl = document.querySelector(".favorite-input");
    const sfPlace = sfPlacesNameInputEl.value;
    sfPlacesNameInputEl.value = "";

    // Get the ul of cats.
    const ul = document.getElementById("sf-places");
    // create an li element
    const li = document.createElement("li");
    // set the text of the li to be the value of the input field
    li.textContent = sfPlace;

    // insert it as the last item in the ul.
    ul.appendChild(li);
  });




  // adding new photos

  // --- your code here!



});
