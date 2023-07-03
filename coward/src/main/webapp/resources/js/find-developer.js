// // gallerycard hover시 이벤트
// const sliderCard = document.querySelectorAll(".contest-slider-card");

// const cardInfoTitle = document.querySelector(
//   ".contest-slider-card-info-title > p"
// );

// sliderCard.forEach((card) =>
//   card.addEventListener("mouseenter", function () {
//     this.classList.add("is-hover");
//   })
// );

// sliderCard.forEach((card) =>
//   card.addEventListener("mouseleave", function () {
//     this.classList.remove("is-hover");
//   })
// );

const sliderInfo = document.querySelectorAll(".developer-card");

sliderCard.forEach((card) =>
  card.addEventListener("mouseenter", function () {
    this.classList.add("is-hover");
  })
);

sliderCard.forEach((card) =>
  card.addEventListener("mouseleave", function () {
    this.classList.remove("is-hover");
  })
);

sliderInfo.forEach((card) =>
  card.addEventListener("mouseenter", function () {
    this.classList.add("is-hover");
  })
);
