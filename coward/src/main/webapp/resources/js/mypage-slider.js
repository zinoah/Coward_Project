<<<<<<< HEAD
const contestSliderBase = {
=======
// 마이페이지 공모전 슬라이더
const contestSlider = tns({
  container: ".contest-slider",
  controlsContainer: ".slider-controls",
>>>>>>> cccb13442cf6c4d0fd6ea8eb7da90e7a0ec0077e
  items: 3,
  gutter: 20,
  rewind: true,
  swipeAngle: false,
  nav: false,
  autoplay: false,
  role: false,
  autoplayHoverPause: true,
  autoplayButtonOutput: false,

  constrols: true,
};

// 일반 공모전 슬라이더
const contestSlider = tns({
  container: ".contest-slider",
  controlsContainer: ".slider-controls",
  ...contestSliderBase,
});
