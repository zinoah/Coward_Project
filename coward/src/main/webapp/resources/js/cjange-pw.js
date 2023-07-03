const pwChangeBtn = document.querySelector(".pw-change-btn");
const changePw = document.querySelector(".change-pw-box");
const currentPw = document.querySelector(".current-pw-box");

pwChangeBtn.addEventListener("click", function () {
  changePw.style.display = block;
  currentPw.style.display = none;
});
