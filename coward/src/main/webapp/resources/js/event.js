// ******************Variables*******************
/** 무한스크롤용 event > container 하단 타겟 지점 */
const target = document.querySelector(".target");
/** 새 이벤트가 추가될 .row 요소 */
const eventRow = document.getElementById("eventRow");
/** 무한스크롤 페이징 기법용 변수 */
let page = 1;

// *****************Request*******************
/** EventList 요청 Ajax */
function getEventListAjax() {
  $.ajax({
    url: "list",
    type: "POST",
    data: { page: page },
    dataType: "json",
    success: function (eventList) {
      eventList.forEach((event) => {
        showEventAfterTwoSecond(event);
      });
      page++;
    },
    error: function () {
      console.log("getEvents 실패");
    },
  });
}

// *******************Functions*****************
/** 무한 스크롤 observeIntersection
 * @param target 무한 스크롤 발생 지점
 * @param callback 호출할 콜백함수 - getEventListAjax
 */
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

/** Event 객체 정보를 이용해 event-item 생성 */
const createEvents = (result) => {
  const colDiv = document.createElement("div");
  colDiv.setAttribute("class", "col-sm-4 col-md-6 col-lg-6 is-new");

  const eventItem = document.createElement("a");
  if (result.statusFl == "Y") {
    eventItem.setAttribute("class", "event-item is-active");
  } else {
    eventItem.setAttribute("class", "event-item");
  }
  eventItem.setAttribute(
    "href",
    contextPath + "/event/detail/" + result.eventNo
  );

  const eventItemImage = document.createElement("div");
  eventItemImage.setAttribute("class", "event-item-image");

  const image = document.createElement("img");
  image.setAttribute("src", contextPath + "/" + result.eventThumbnail);

  const eventItemInfo = document.createElement("div");
  eventItemInfo.setAttribute("class", "event-item-info");

  const status = document.createElement("span");
  status.setAttribute("class", "status");
  if (result.statusFl == "Y") {
    status.textContent = "진행중";
  } else {
    status.textContent = "종료";
  }

  const period = document.createElement("div");
  period.setAttribute("class", "period");

  const createDate = document.createElement("span");
  createDate.setAttribute("class", "event-date");
  createDate.innerHTML = result.createDate + " ~ ";

  const endDate = document.createElement("span");
  endDate.setAttribute("class", "event-date");
  endDate.innerHTML = result.endDate;

  period.appendChild(createDate);
  period.appendChild(endDate);

  eventItemInfo.appendChild(status);
  eventItemInfo.appendChild(period);

  eventItemImage.appendChild(image);

  eventItem.appendChild(eventItemImage);
  eventItem.appendChild(eventItemInfo);

  colDiv.appendChild(eventItem);

  eventRow.appendChild(colDiv);
};

/** Event Item 스켈레톤 UI 생성 */
const createEventSkeleton = () => {
  const colDiv = document.createElement("div");
  colDiv.setAttribute("class", "col-sm-4 col-md-6 col-lg-6 is-skeleton");
  const phCol12 = document.createElement("div");
  phCol12.setAttribute("class", "ph-col-12");
  const phPicture = document.createElement("div");
  phPicture.setAttribute("class", "ph-picture");
  const phRow = document.createElement("div");
  phRow.setAttribute("class", "ph-row");
  const phCol2Big = document.createElement("div");
  phCol2Big.setAttribute("class", "ph-col-2 big");
  const phCol4EmptyBig = document.createElement("div");
  phCol4EmptyBig.setAttribute("class", "ph-col-4 empty big");
  const phCol6Big = document.createElement("div");
  phCol6Big.setAttribute("class", "ph-col-6 big");

  phRow.appendChild(phCol2Big);
  phRow.appendChild(phCol4EmptyBig);
  phRow.appendChild(phCol6Big);

  phCol12.appendChild(phPicture);
  phCol12.appendChild(phRow);

  colDiv.appendChild(phCol12);

  eventRow.appendChild(colDiv);
};

/** 스켈레톤 UI에서 Event Item으로 전환 */
function showEventAfterTwoSecond(event) {
  createEventSkeleton();
  createEvents(event);

  const skeletons = document.querySelectorAll(".is-skeleton");
  const newEvents = document.querySelectorAll(".is-new");

  // 2초 뒤 스켈레톤 숨기고, 실제 콘텐츠 보여주기
  setTimeout(() => {
    skeletons.forEach((sk) => (sk.style.display = "none"));
    newEvents.forEach((event) => (event.style.display = "block"));
  }, 700);
}

observeIntersection(target, getEventListAjax);
