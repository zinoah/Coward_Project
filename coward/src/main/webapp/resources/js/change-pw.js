const pwChangeBtn = document.querySelector(".pw-change-btn");
const changePwBox = document.querySelector(".change-pw-box");
const currentPwBox = document.querySelector(".current-pw-box");

pwChangeBtn.addEventListener("click", function () {
  changePwBox.style.display = "block";
  currentPwBox.style.display = "none";
});
