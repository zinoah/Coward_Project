const currentPw = document.querySelector(".pw-change-box");
const changePw = document.querySelector(".pw-change-box2");
const nextBtn = document.querySelector(".next-btn");

nextBtn.addEventListener("click", function () {
  currentPw.style.display = "none";
  changePw.style.display = "block";
});
