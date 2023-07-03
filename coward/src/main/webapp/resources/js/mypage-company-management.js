var btnAll = document.getElementById("all");
var btnRecruiting = document.getElementById("recruiting");
var btnCasting = document.getElementById("casting");
var btnEnd = document.getElementById("end");

var conStatus = document.getElementById("conStatus");

//전체 공모전 조회Ajax
btnAll.addEventListener("click", function () {
  conStatus.value = "전체";
  console.log("전체 Clicked"); // 로그 메시지 추가
  console.log(conStatus.value);

  const conStatus = document.getElementById("conStatus");
  const div = document.getElementById("result1");

  $.ajax({
    url: "companyManagement",
    data: { conStatus: conStatus.value },
    type: "POST",
    dataType: "json",

    success: function (response) {
      const getContestList = response;

      div.innerHTML = "";

      if (getContestList.length > 0) {
        for (let i = 0; i < getContestList.length; i++) {
          const contest = getContestList[i];

          const divContest = document.createElement("div");
          divContest.className = "contest-slider-card";

          const divImg = document.createElement("div");
          divImg.className = "contest-slider-card-img";
          const img = document.createElement("img");
          img.src = contest.thumbnail;
          divImg.appendChild(img);

          const divInfo = document.createElement("div");
          divInfo.className = "contest-slider-card-info";

          const divTitle = document.createElement("div");
          divTitle.className = "contest-slider-card-info-title";
          const pTitle = document.createElement("p");
          pTitle.innerText = "콘테스트 제목: " + contest.contestTitle;
          divTitle.appendChild(pTitle);

          const divDetail1 = document.createElement("div");
          divDetail1.className = "contest-slider-card-info-detail";
          const pDetail1_1 = document.createElement("p");
          pDetail1_1.innerText = "상금";
          const pDetail1_2 = document.createElement("p");
          pDetail1_2.innerText = contest.price + "만원";
          divDetail1.appendChild(pDetail1_1);
          divDetail1.appendChild(pDetail1_2);

          const divDetail2 = document.createElement("div");
          divDetail2.className = "contest-slider-card-info-detail";
          const pDetail2_1 = document.createElement("p");
          pDetail2_1.innerText = "남은기간";
          const pDetail2_2 = document.createElement("p");
          pDetail2_2.innerText = contest.dueDate + "일";
          divDetail2.appendChild(pDetail2_1);
          divDetail2.appendChild(pDetail2_2);

          const divButton = document.createElement("div");
          divButton.className = "contest-slider-card-info-button";
          const button = document.createElement("button");
          button.className = "btn-outlined btn-32";
          button.innerText = "참여하러가기";
          divButton.appendChild(button);

          divInfo.appendChild(divTitle);
          divInfo.appendChild(divDetail1);
          divInfo.appendChild(divDetail2);
          divInfo.appendChild(divButton);

          divContest.appendChild(divImg);
          divContest.appendChild(divInfo);

          div.appendChild(divContest);
        }
      } else {
        const h4 = document.createElement("h4");
        h4.innerText = "일치하는 콘테스트가 없습니다";

        div.append(h4);
      }
    },
    error: function (request, status, error) {
      console.log("AJAX 에러 발생");
      console.log("상태코드 : " + request.status); // 404, 500
    },
  });
});

//모집중 공모전 조회Ajax
btnRecruiting.addEventListener("click", function () {
  conStatus.value = "모집중";
  console.log("모집중 Clicked"); // 로그 메시지 추가
  console.log(conStatus.value);

  const conStatus = document.getElementById("conStatus");
  const div = document.getElementById("result1");

  $.ajax({
    url: "companyManagement",
    data: { conStatus: conStatus.value },
    type: "POST",
    dataType: "json",

    success: function (response) {
      const getContestList = response;

      div.innerHTML = "";

      if (getContestList.length > 0) {
        for (let i = 0; i < getContestList.length; i++) {
          const contest = getContestList[i];

          const divContest = document.createElement("div");
          divContest.className = "contest-slider-card";

          const divImg = document.createElement("div");
          divImg.className = "contest-slider-card-img";
          const img = document.createElement("img");
          img.src = contest.thumbnail;
          divImg.appendChild(img);

          const divInfo = document.createElement("div");
          divInfo.className = "contest-slider-card-info";

          const divTitle = document.createElement("div");
          divTitle.className = "contest-slider-card-info-title";
          const pTitle = document.createElement("p");
          pTitle.innerText = "콘테스트 제목: " + contest.contestTitle;
          divTitle.appendChild(pTitle);

          const divDetail1 = document.createElement("div");
          divDetail1.className = "contest-slider-card-info-detail";
          const pDetail1_1 = document.createElement("p");
          pDetail1_1.innerText = "상금";
          const pDetail1_2 = document.createElement("p");
          pDetail1_2.innerText = contest.price + "만원";
          divDetail1.appendChild(pDetail1_1);
          divDetail1.appendChild(pDetail1_2);

          const divDetail2 = document.createElement("div");
          divDetail2.className = "contest-slider-card-info-detail";
          const pDetail2_1 = document.createElement("p");
          pDetail2_1.innerText = "남은기간";
          const pDetail2_2 = document.createElement("p");
          pDetail2_2.innerText = contest.dueDate + "일";
          divDetail2.appendChild(pDetail2_1);
          divDetail2.appendChild(pDetail2_2);

          const divButton = document.createElement("div");
          divButton.className = "contest-slider-card-info-button";
          const button = document.createElement("button");
          button.className = "btn-outlined btn-32";
          button.innerText = "참여하러가기";
          divButton.appendChild(button);

          divInfo.appendChild(divTitle);
          divInfo.appendChild(divDetail1);
          divInfo.appendChild(divDetail2);
          divInfo.appendChild(divButton);

          divContest.appendChild(divImg);
          divContest.appendChild(divInfo);

          div.appendChild(divContest);
        }
      } else {
        const h4 = document.createElement("h4");
        h4.innerText = "일치하는 콘테스트가 없습니다";

        div.append(h4);
      }
    },
    error: function (request, status, error) {
      console.log("AJAX 에러 발생");
      console.log("상태코드 : " + request.status); // 404, 500
    },
  });
});

//심사중 공모전 조회Ajax
btnCasting.addEventListener("click", function () {
  conStatus.value = "심사중";
  console.log("심사중 Clicked"); // 로그 메시지 추가
  console.log(conStatus.value);

  const conStatus = document.getElementById("conStatus");
  const div = document.getElementById("result1");

  $.ajax({
    url: "companyManagement",
    data: { conStatus: conStatus.value },
    type: "POST",
    dataType: "json",

    success: function (response) {
      const getContestList = response;

      div.innerHTML = "";

      if (getContestList.length > 0) {
        for (let i = 0; i < getContestList.length; i++) {
          const contest = getContestList[i];

          const divContest = document.createElement("div");
          divContest.className = "contest-slider-card";

          const divImg = document.createElement("div");
          divImg.className = "contest-slider-card-img";
          const img = document.createElement("img");
          img.src = contest.thumbnail;
          divImg.appendChild(img);

          const divInfo = document.createElement("div");
          divInfo.className = "contest-slider-card-info";

          const divTitle = document.createElement("div");
          divTitle.className = "contest-slider-card-info-title";
          const pTitle = document.createElement("p");
          pTitle.innerText = "콘테스트 제목: " + contest.contestTitle;
          divTitle.appendChild(pTitle);

          const divDetail1 = document.createElement("div");
          divDetail1.className = "contest-slider-card-info-detail";
          const pDetail1_1 = document.createElement("p");
          pDetail1_1.innerText = "상금";
          const pDetail1_2 = document.createElement("p");
          pDetail1_2.innerText = contest.price + "만원";
          divDetail1.appendChild(pDetail1_1);
          divDetail1.appendChild(pDetail1_2);

          const divDetail2 = document.createElement("div");
          divDetail2.className = "contest-slider-card-info-detail";
          const pDetail2_1 = document.createElement("p");
          pDetail2_1.innerText = "남은기간";
          const pDetail2_2 = document.createElement("p");
          pDetail2_2.innerText = contest.dueDate + "일";
          divDetail2.appendChild(pDetail2_1);
          divDetail2.appendChild(pDetail2_2);

          const divButton = document.createElement("div");
          divButton.className = "contest-slider-card-info-button";
          const button = document.createElement("button");
          button.className = "btn-outlined btn-32";
          button.innerText = "참여하러가기";
          divButton.appendChild(button);

          divInfo.appendChild(divTitle);
          divInfo.appendChild(divDetail1);
          divInfo.appendChild(divDetail2);
          divInfo.appendChild(divButton);

          divContest.appendChild(divImg);
          divContest.appendChild(divInfo);

          div.appendChild(divContest);
        }
      } else {
        const h4 = document.createElement("h4");
        h4.innerText = "일치하는 콘테스트가 없습니다";

        div.append(h4);
      }
    },
    error: function (request, status, error) {
      console.log("AJAX 에러 발생");
      console.log("상태코드 : " + request.status); // 404, 500
    },
  });
});

//완료된 공모전 조회Ajax
btnEnd.addEventListener("click", function () {
  conStatus.value = "완료";
  console.log("완료 Clicked"); // 로그 메시지 추가
  console.log(conStatus.value);

  const conStatus = document.getElementById("conStatus");
  const div = document.getElementById("result1");

  $.ajax({
    url: "companyManagement",
    data: { conStatus: conStatus.value },
    type: "POST",
    dataType: "json",

    success: function (response) {
      const getContestList = response;

      div.innerHTML = "";

      if (getContestList.length > 0) {
        for (let i = 0; i < getContestList.length; i++) {
          const contest = getContestList[i];

          const divContest = document.createElement("div");
          divContest.className = "contest-slider-card";

          const divImg = document.createElement("div");
          divImg.className = "contest-slider-card-img";
          const img = document.createElement("img");
          img.src = contest.thumbnail;
          divImg.appendChild(img);

          const divInfo = document.createElement("div");
          divInfo.className = "contest-slider-card-info";

          const divTitle = document.createElement("div");
          divTitle.className = "contest-slider-card-info-title";
          const pTitle = document.createElement("p");
          pTitle.innerText = "콘테스트 제목: " + contest.contestTitle;
          divTitle.appendChild(pTitle);

          const divDetail1 = document.createElement("div");
          divDetail1.className = "contest-slider-card-info-detail";
          const pDetail1_1 = document.createElement("p");
          pDetail1_1.innerText = "상금";
          const pDetail1_2 = document.createElement("p");
          pDetail1_2.innerText = contest.price + "만원";
          divDetail1.appendChild(pDetail1_1);
          divDetail1.appendChild(pDetail1_2);

          const divDetail2 = document.createElement("div");
          divDetail2.className = "contest-slider-card-info-detail";
          const pDetail2_1 = document.createElement("p");
          pDetail2_1.innerText = "남은기간";
          const pDetail2_2 = document.createElement("p");
          pDetail2_2.innerText = contest.dueDate + "일";
          divDetail2.appendChild(pDetail2_1);
          divDetail2.appendChild(pDetail2_2);

          const divButton = document.createElement("div");
          divButton.className = "contest-slider-card-info-button";
          const button = document.createElement("button");
          button.className = "btn-outlined btn-32";
          button.innerText = "참여하러가기";
          divButton.appendChild(button);

          divInfo.appendChild(divTitle);
          divInfo.appendChild(divDetail1);
          divInfo.appendChild(divDetail2);
          divInfo.appendChild(divButton);

          divContest.appendChild(divImg);
          divContest.appendChild(divInfo);

          div.appendChild(divContest);
        }
      } else {
        const h4 = document.createElement("h4");
        h4.innerText = "일치하는 콘테스트가 없습니다";

        div.append(h4);
      }
    },
    error: function (request, status, error) {
      console.log("AJAX 에러 발생");
      console.log("상태코드 : " + request.status); // 404, 500
    },
  });
});
