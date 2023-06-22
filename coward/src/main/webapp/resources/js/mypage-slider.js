
// 마이페이지 공모전 슬라이더
const contestSlider = tns({
  container: ".contest-slider",
  controlsContainer: ".slider-controls",
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
