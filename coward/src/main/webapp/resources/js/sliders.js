// tiny slider

const contestSlider = tns({
  container: ".my-slider",
  items: 2,
  gutter: 20,
  rewind: true,
  swipeAngle: false,
  nav: false,
  autoplay: true,
  autoplayTimeout: 5000,
  autoplayHoverPause: true,
  autoplayButtonOutput: false,
  speed: 400,
  constrols: true,
  controlsContainer: ".slider-controls",
  responsive: {
    490: {
      items: 2,
    },
    570: {
      items: 2,
    },
    630: {
      items: 3,
    },
    700: {
      items: 3,
    },
    800: {
      items: 3,
    },
    1000: {
      items: 4,
    },
    1200: {
      items: 5,
    },
  },
});

// gallerycard hover시 이벤트
const gallerycard = document.querySelectorAll(".gallery-card");

const cardInfoTitle = document.querySelector(".gallery-card-info-title > p");
gallerycard.forEach((card) =>
  card.addEventListener("mouseenter", function () {
    console.log(card.lastElementChild);
    cardInfoTitle.style.whithSpace;
    card.lastElementChild.style.bottom = 0;
  })
);

gallerycard.forEach((card) =>
  card.addEventListener("mouseleave", function () {
    card.lastElementChild.style.bottom = "-95px";
  })
);
