// Note: contestList 요청 Ajax
function getContestListAjax(conStatus) {
  $.ajax({
    url: "companyManagement",
    type: "POST",
    data: { conStatus: conStatus },
    dataType: "json",
    success: function (contestList) {
      contestSlider2.innerHTML = "";
      contestSlider2.style.width = 265 * contestList.length + "px";

      contestList.forEach((contest) => {
        createContestList(contest);
        index++;
      });

      index = 0;
    },
    error: function () {
      console.log("getContestListAjax 실패");
    },
  });
}

// Note: 공모전 필터링 적용
const filterBtnList = document.querySelectorAll(".filterBtn");

filterBtnList.forEach((filterBtn) => {
  filterBtn.addEventListener("click", function () {
    const conStatus = this.getAttribute("data-parameter");

    console.log(conStatus);

    getContestListAjax(conStatus);
  });
});

// Note: contest 동적 생성 구문
// 공모전 목록을 결과 창에 표시하는 함수
const contestSlider2 = document.getElementById("contest-slider");
let index = 0;

function createContestList(contest) {
  const tnsDiv = document.createElement("div");
  if (index < 3) {
    tnsDiv.setAttribute("class", "tns-item tns-slide-active");
  } else {
    tnsDiv.setAttribute("class", "tns-item");
  }
  tnsDiv.setAttribute("id", "contest-slider-item" + index);

  // 1
  const parentDiv = document.createElement("div");

  // 2
  const sliderCard = document.createElement("div");
  sliderCard.setAttribute("class", "contest-slider-card");

  // 3
  const sliderCardImage = document.createElement("div");
  sliderCardImage.setAttribute("class", "contest-slider-card-img");

  const sliderCardInfo = document.createElement("div");
  sliderCardInfo.setAttribute("class", "contest-slider-card-info");

  // 4
  const sliderCardImgTag = document.createElement("img");
  sliderCardImgTag.setAttribute("src", contextPath + "/" + contest.thumbnail);

  const title = document.createElement("div");
  title.setAttribute("class", "contest-slider-card-info-title");
  const titleP = document.createElement("p");
  titleP.innerText = contest.contestTitle;

  const detailPrice = document.createElement("div");
  detailPrice.setAttribute("class", "contest-slider-card-info-detail");
  const detailPriceP1 = document.createElement("p");
  detailPriceP1.innerText = "상금";
  const detailPriceP2 = document.createElement("p");
  detailPriceP2.innerText = contest.price + "만원";

  const detailDate = document.createElement("div");
  detailDate.setAttribute("class", "contest-slider-card-info-detail");
  const detailDateP1 = document.createElement("p");
  detailDateP1.innerText = "남은기간";
  const detailDateP2 = document.createElement("p");
  detailDateP2.innerText = contest.dueDate + "일";

  // 5
  const Button = document.createElement("div");
  Button.setAttribute("class", "contest-slider-card-info-button");
  const ButtonA = document.createElement("a");
  ButtonA.setAttribute("class", "btn-outlined btn-32");
  ButtonA.setAttribute("href", "detail/" + contest.contestNo);
  ButtonA.innerText = " 참여하러가기";

  Button.appendChild(ButtonA);

  detailDate.appendChild(detailDateP1);
  detailDate.appendChild(detailDateP2);

  detailPrice.appendChild(detailPriceP1);
  detailPrice.appendChild(detailPriceP2);

  title.appendChild(titleP);

  sliderCardInfo.appendChild(title);
  sliderCardInfo.appendChild(detailPrice);
  sliderCardInfo.appendChild(detailDate);
  sliderCardInfo.appendChild(Button);

  sliderCardImage.appendChild(sliderCardImgTag);

  sliderCard.appendChild(sliderCardImage);
  sliderCard.appendChild(sliderCardInfo);

  parentDiv.appendChild(sliderCard);

  tnsDiv.appendChild(parentDiv);

  contestSlider2.appendChild(tnsDiv);
}

console.log(filterBtnList);
