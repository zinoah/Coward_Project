const filterBtnList = document.querySelectorAll(".filterBtn");

/** 공모전 카드 생성 ajax */
function filterListCallAjax(parameter) {
  $.ajax({
    url: "filterList",
    data: { parameter: parameter },
    type: "GET",
    success: function (contestList) {
      console.log(contestList);
      const contestArea = document.getElementById("contestArea");
      contestArea.innerHTML = "";
      if (contestList != null) {
        // contestList를 순회하면서 요소를 생성하고 추가.
        contestList.forEach((contest) => {
          const col = document.createElement("div");
          col.className = "col-sm-4 col-md-4 col-lg-3";

          const a = document.createElement("a");
          a.href = "detail/" + contest.contestNo;

          const contestCard = document.createElement("div");
          contestCard.className = "contest-card";

          const contestCardTitle = document.createElement("div");
          contestCardTitle.className = "contest-card-title";
          const contestTitleDiv = document.createElement("div");
          const contestTitleSpan = document.createElement("span");
          contestTitleSpan.innerText = contest.contestTitle;
          contestTitleDiv.append(contestTitleSpan);
          const tagYellow = document.createElement("div");
          tagYellow.className = "tag-yellow";
          tagYellow.innerText = "new"; // TODO: new표시될 기준 정해야함

          contestCardTitle.append(contestTitleDiv);
          contestCardTitle.append(tagYellow);

          const contestCardInfo = document.createElement("div");
          contestCardInfo.className = "contest-card-info";
          const contestCardInfoDetail = document.createElement("div");
          contestCardInfoDetail.className = "contest-card-info-detail";
          const contestCardInfoDetailDiv = document.createElement("div");
          const contestCardInfoDetailSpan1 = document.createElement("span");
          contestCardInfoDetailSpan1.innerText = "남은기간";
          const contestCardInfoDetailSpan2 = document.createElement("span");
          contestCardInfoDetailSpan2.innerText = contest.dueDate;
          contestCardInfoDetailDiv.append(contestCardInfoDetailSpan1);
          contestCardInfoDetailDiv.append(contestCardInfoDetailSpan2);
          const prizeDiv = document.createElement("div");
          const prizeSpan1 = document.createElement("span");
          prizeSpan1.innerText = "상금";
          const prizeSpan2 = document.createElement("span");
          prizeSpan2.innerText = contest.price + "만원";
          prizeDiv.append(prizeSpan1);
          prizeDiv.append(prizeSpan2);

          contestCardInfoDetail.append(contestCardInfoDetailDiv);
          contestCardInfoDetail.append(prizeDiv);

          const contestCardInfoTag = document.createElement("div");
          contestCardInfoTag.className = "contest-card-info-tag";
          const contestCardInfoTagList = document.createElement("div");
          contestCardInfoTagList.className = "contest-card-info-tag-list";

          const tagPurple = document.createElement("div");
          tagPurple.className = "tag-purple";
          tagPurple.innerText = contest.adType;
          contestCardInfoTagList.append(tagPurple);

          contest.skillList.forEach((skill) => {
            const tagPink = document.createElement("div");
            tagPink.className = "tag-pink";
            tagPink.innerText = skill;
            contestCardInfoTagList.append(tagPink);
          });
          contestCardInfoTag.append(contestCardInfoTagList);

          const smOnlyProfile = document.createElement("div");
          smOnlyProfile.className = "sm-only contest-card-info-profile";

          const avatar24 = document.createElement("div");
          avatar24.className = "avatar-24";

          const profileImg = document.createElement("img");
          profileImg.src = contextPath + "/" + contest.companyProfile;

          const profileName = document.createElement("div");
          const profileNameSpan = document.createElement("span");
          profileNameSpan.innerText = contest.companyNick;

          profileName.append(profileNameSpan);
          avatar24.append(profileImg);
          smOnlyProfile.append(avatar24);
          smOnlyProfile.append(profileName);
          contestCardInfoTag.append(smOnlyProfile);

          contestCardInfo.append(contestCardInfoDetail);
          contestCardInfo.append(contestCardInfoTag);

          const smHiddenProfile = document.createElement("div");
          smHiddenProfile.className = "sm-hidden contest-card-profile";

          const avatar24Hidden = document.createElement("div");
          avatar24Hidden.className = "avatar-24";

          const profileImgHidden = document.createElement("img");
          profileImgHidden.src = contextPath + "/" + contest.companyProfile;

          const profileNameHidden = document.createElement("div");
          const profileNameSpanHidden = document.createElement("span");
          profileNameSpanHidden.innerText = contest.companyNick;
          profileNameHidden.appendChild(profileNameSpanHidden);

          avatar24Hidden.append(profileImgHidden);
          smHiddenProfile.append(avatar24Hidden);
          smHiddenProfile.append(profileNameHidden);

          contestCard.append(contestCardTitle);
          contestCard.append(contestCardInfo);
          contestCard.append(smHiddenProfile);

          a.append(contestCard);
          col.appendChild(a);
          contestArea.appendChild(col);
        });
      } else {
        contestArea.innerText = "조회된 공모전이 없습니다!";
      }
    },
    error: function () {
      // 비동기 통신(ajax) 중 오류가 발생한 경우
      console.log("에러 발생");
    },
  });
}

// 각 버튼에 클릭 이벤트를 추가한다
filterBtnList.forEach((filterBtn) => {
  filterBtn.addEventListener("click", function () {
    // 파라미터 값을 가져온다
    const parameter = this.getAttribute("data-parameter");

    console.log(parameter);

    filterBtn.classList.add("filter-btn-active");

    if (parameter != null) {
      filterBtnList.forEach((sibling) => {
        sibling.classList.remove("filter-btn-active");
      });
      filterBtn.classList.add("filter-btn-active");
    } else {
      filterBtn.classList.remove("filter-btn-active");
    }

    filterListCallAjax(parameter);
  });
});
