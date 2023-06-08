const next = document.querySelector(".next"); // 다음버튼
const prev = document.querySelector(".prev"); // 이전버튼
const gallery = document.querySelector(".gallery"); // 전체 슬라이드 컨테이너
const galleryWrapper = document.querySelector(".gallery-wrapper"); // 갤러리 래퍼
const galleryWidth = 2030; // 갤러리 총 길이
const slideWidth = 230; // 슬라이드 한 개의 너비
const visibleSlides = Math.floor(galleryWrapper.offsetWidth / slideWidth); // 보여지는 슬라이드 개수
const maxPosition = -(galleryWidth - visibleSlides * slideWidth); // 최대 허용 위치

next.addEventListener("click", function () {
  gallery.style.transition = "left 600ms";
  let currentLeft = parseInt(gallery.style.left) || 0;
  if (currentLeft > maxPosition) {
    let newPosition = currentLeft - slideWidth;
    gallery.style.left = newPosition + "px";
  }
});

prev.addEventListener("click", function () {
  gallery.style.left = "0px";
  gallery.style.transition = "left 600ms";
});

const gallerycard = document.querySelectorAll(".gallery-card");

gallerycard.forEach((card) =>
  card.addEventListener("mouseenter", function () {
    console.log(card.lastElementChild);

    card.lastElementChild.style.bottom = 0;
  })
);

gallerycard.forEach((card) =>
  card.addEventListener("mouseleave", function () {
    card.lastElementChild.style.bottom = "-95px";
  })
);
