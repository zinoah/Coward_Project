// ******************Variables*******************
/** 무한스크롤용 event > container 하단 타겟 지점 */
const target = document.querySelector(".target");
/** 새 이벤트가 추가될 .row 요소 */
const eventRow = document.getElementById("eventRow");

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
        createEvents(event);
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
  colDiv.setAttribute("class", "col-sm-4 col-md-6 col-lg-6");

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

observeIntersection(target, getEventListAjax);
