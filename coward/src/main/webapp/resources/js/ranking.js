// ***********Variables**************
const rankingDropdown = document.querySelector(".ranking-dropdown");

const priceKing = document.getElementById("priceKing");
const victoryKing = document.getElementById("victoryKing");
const likeKing = document.getElementById("likeKing");

rankingDropdown.addEventListener("change", function () {
  const selectedOptionValue =
    rankingDropdown.options[rankingDropdown.selectedIndex].value;

  switch (selectedOptionValue) {
    case "price-king":
      removeActive(selectedOptionValue);
      priceKing.classList.add("is-active");
      break;
    case "victory-king":
      removeActive(selectedOptionValue);
      victoryKing.classList.add("is-active");
      break;
    case "like-king":
      removeActive(selectedOptionValue);
      likeKing.classList.add("is-active");
      break;
  }
});

function removeActive(selectedOptionValue) {
  switch (selectedOptionValue) {
    case "price-king":
      victoryKing.classList.remove("is-active");
      likeKing.classList.remove("is-active");

      break;
    case "victory-king":
      priceKing.classList.remove("is-active");
      likeKing.classList.remove("is-active");

      break;
    case "like-king":
      priceKing.classList.remove("is-active");
      victoryKing.classList.remove("is-active");

      break;
  }
}
