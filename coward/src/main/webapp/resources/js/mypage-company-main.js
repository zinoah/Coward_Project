// Note: contestList 요청 Ajax
function getContestListAjax(conStatus) {
  $.ajax({
    url: "companyMain",
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
  //const tnsDiv = document.createElement("div");

  //if (index < 3) {
  //  tnsDiv.setAttribute("class", "tns-item tns-slide-active");
  //} else {
  //  tnsDiv.setAttribute("class", "tns-item");
  // }
  //tnsDiv.setAttribute("id", "contest-slider-item" + index);

  // 1

  const outerDivElement = document.createElement("div");
  outerDivElement.className = "col-sm-4 col-md-4";
  outerDivElement.id = "colDiv";

  const anchorElement = document.createElement("a");
  anchorElement.href = `${contextPath}/mypage/winnerSelect/${contest.contestNo}`;

  const cardDivElement = document.createElement("div");
  cardDivElement.className = "contest-slider-card";

  const imgDivElement = document.createElement("div");
  imgDivElement.className = "contest-slider-card-img";

  const imgElement = document.createElement("img");
  imgElement.src = `${contextPath}/${contest.thumbnail}`;

  imgDivElement.appendChild(imgElement);

  const infoDivElement = document.createElement("div");
  infoDivElement.className = "contest-slider-card-info";

  const titleDivElement = document.createElement("div");
  titleDivElement.className = "contest-slider-card-info-title";

  const contestNoElement = document.createElement("p");
  contestNoElement.textContent = contest.contestTitle;

  titleDivElement.appendChild(contestNoElement);

  const detail1DivElement = document.createElement("div");
  detail1DivElement.className = "contest-slider-card-info-detail";

  const priceElement = document.createElement("p");
  priceElement.textContent = contest.dueDate + "일 남음";

  detail1DivElement.appendChild(priceElement);

  const detail2DivElement = document.createElement("div");
  detail2DivElement.className = "contest-slider-card-info-detail";

  const dueDateElement = document.createElement("p");
  dueDateElement.textContent = contest.dueDate + "일";

  detail2DivElement.appendChild(dueDateElement);

  infoDivElement.appendChild(titleDivElement);
  infoDivElement.appendChild(detail1DivElement);
  infoDivElement.appendChild(detail2DivElement);

  cardDivElement.appendChild(imgDivElement);
  cardDivElement.appendChild(infoDivElement);

  anchorElement.appendChild(cardDivElement);

  outerDivElement.appendChild(anchorElement);

  contestSlider2.appendChild(outerDivElement);
}

console.log(filterBtnList);
