// tiny slider

const contestSliderBase = {
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
};

// 일반 공모전 슬라이더
const contestSlider = tns({
  container: ".contest-slider",
  controlsContainer: ".slider-controls",
  ...contestSliderBase,
});

// 신규 공모전 슬라이더
const newContestSlider = tns({
  container: ".contest-slider.is-new",
  controlsContainer: ".slider-controls.is-new",
  ...contestSliderBase,
});

// gallerycard hover시 이벤트
const sliderCard = document.querySelectorAll(".contest-slider-card");

const cardInfoTitle = document.querySelector(
  ".contest-slider-card-info-title > p"
);
sliderCard.forEach((card) =>
  card.addEventListener("mouseenter", function () {
    console.log(card.lastElementChild);
    card.lastElementChild.style.bottom = 0;
  })
);

sliderCard.forEach((card) =>
  card.addEventListener("mouseleave", function () {
    card.lastElementChild.style.bottom = "-95px";
  })
);
