var step1 = document.getElementById("custom-step-1");
var step2 = document.getElementById("custom-step-2");
var step3 = document.getElementById("custom-step-3");
var btn1 = document.getElementById("next1");
var btn2 = document.getElementById("next2");
var btn3 = document.getElementById("next3");

function next1() {
  step1.style.display = "none";
  step2.style.display = "block";
  btn1.style.display = "none";
  btn2.style.display = "block";
}

function next2() {
  step2.style.display = "none";
  step3.style.display = "block";
  btn2.style.display = "none";
  btn3.style.display = "block";
}

/*
const slideValue = document.getElementById("custom-reward-slide-bubble");
const inputSlider = document.getElementById("custom-reward-slide");
inputSlider.oninput = () => {
  let value = inputSlider.value;
  slideValue.style.left = value / 2 + "%";
};*/
