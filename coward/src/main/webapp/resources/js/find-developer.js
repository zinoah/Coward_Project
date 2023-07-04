// // gallerycard hover시 이벤트
// const sliderCard = document.querySelectorAll(".contest-slider-card");

// const cardInfoTitle = document.querySelector(
//   ".contest-slider-card-info-title > p"
// );

// sliderCard.forEach((card) =>
//   card.addEventListener("mouseenter", function () {
//     this.classList.add("is-hover");
//   })
// );

// sliderCard.forEach((card) =>
//   card.addEventListener("mouseleave", function () {
//     this.classList.remove("is-hover");
//   })
// );

const sliderInfo = document.querySelectorAll(".developer-card");

sliderCard.forEach((card) =>
  card.addEventListener("mouseenter", function () {
    this.classList.add("is-hover");
  })
);

sliderCard.forEach((card) =>
  card.addEventListener("mouseleave", function () {
    this.classList.remove("is-hover");
  })
);

sliderInfo.forEach((card) =>
  card.addEventListener("mouseenter", function () {
    this.classList.add("is-hover");
  })
);

// Note: 개발자 찾기 무한 스크롤 적용

/** 무한스크롤 페이징 기법용 변수 */
let page = 1;

// Note: developer 요청 Ajax
function getDevAjax() {
  $.ajax({
    url: "findDev",
    type: "POST",
    data: { page: page },
    dataType: "json",
    success: function (devList) {
      devList.forEach((dev) => {
        showDevAfterTwoSecond(dev);
      });
      page++;
    },
    error: function () {
      console.log("getDevCardAjax 실패");
    },
  });
}

// Note: 무한 스크롤용 인터섹션 옵저버 API
const observeIntersection = (target, callback) => {
  const observer = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        callback();
      }
    });
  });
  observer.observe(target);
};

// TODO: 승미씨가 만들어
// is-new
const createDev = (dev) => {
  const developerCard = document.createElement("div");
  developerCard.setAttribute("class", "developer-card");
  const developerProfile = document.createElement("div");
  developerProfile.setAttribute("class", "developer-profile");
  const developerImg = document.createElement("div");

  developerImg.setAttribute("class", "developer-img");
  const profileImgAvatar = document.createElement("div");
  profileImgAvatar.setAttribute("class", "profile-img avatar");
  const avatarImg = document.createElement("img");

  const developerInfo = document.createElement("div");
  const developerTitle = document.createElement("div");
  const developerNick = document.createElement("p");
  const developerType = document.createElement("div");
  const developerOneline = document.createElement("div");
  const developerRecord = document.createElement("div");
  const recordDiv1 = document.createElement("div");
  const recordSpan1 = document.createElement("div");
  const recodP1 = document.createElement("p");
  const recordDiv2 = document.createElement("div");
  const recordSpan2 = document.createElement("div");
  const recodP2 = document.createElement("p");
  const recordDiv3 = document.createElement("div");
  const recordSpan3 = document.createElement("div");
  const recodP3 = document.createElement("p");

  const devleoperChatBtn = document.createElement("div");
  const chatBtnA = document.createElement("a");
  const chatBtn = document.createElement("button");

  const likeButton = document.createElement("button");
  const likeButtonLable = document.createElement("label");
  const likeIcon = document.createElement("i");

  // <div class="developer-card">
  //   <div class="developer-profile">
  //     <div class="developer-img">
  //       <div class="profile-img avatar">
  //         <img src="${contextPath}/${devList.profileImg}" />
  //       </div>
  //     </div>
  //     <div class="developer-info">
  //       <div class="developer-title">
  //         <p class="developer-nick">${devList.memberNick}</p>
  //         <div class="developer-type">${devList.stack}</div>
  //       </div>
  //       <p class="developer-oneline">${devList.slogan}</p>
  //     </div>
  //   </div>
  //   <div class="developer-record">
  //     <div>
  //       <span>총 수익</span>
  //       <p>${devList.totalPrice}만원</p>
  //     </div>
  //     <div>
  //       <span>우승</span>
  //       <p>${devList.victoryCount}회</p>
  //     </div>
  //     <div>
  //       <span>총 참가</span>
  //       <p>${devList.attendCount}건</p>
  //     </div>
  //   </div>

  //   <div>
  //     <div class="developer-chat-btn">
  //       <a
  //         class="profile-btn btn-primary btn-32"
  //         href="${contextPath}/mypage/info/${devList.memberNo}"
  //       >
  //         프로필 보기
  //       </a>

  //       <button type="submit" class="btn-primary btn-32">
  //         채팅 하기
  //       </button>
  //     </div>
  //     <button id="like-btn" class="like-btn" />
  //     <label for="like-btn">
  //       <i class="ic-like-filled"></i>
  //     </label>
  //   </div>
  // </div>;
};

// TODO: 개발자 카드 요소 스켈레톤
// is-skeleton
const createDevSkeleton = () => {};

/** 스켈레톤 UI에서 dev로 전환 */
function showDevAfterTwoSecond(dev) {
  createDevSkeleton();
  createDev(dev);

  const skeletons = document.querySelectorAll(".is-skeleton");
  const newDev = document.querySelectorAll(".is-new");

  // 2초 뒤 스켈레톤 숨기고, 실제 콘텐츠 보여주기
  setTimeout(() => {
    skeletons.forEach((sk) => (sk.style.display = "none"));
    newDev.forEach((nd) => (nd.style.display = "block"));
  }, 700);
}

observeIntersection(target, getDevAjax);
