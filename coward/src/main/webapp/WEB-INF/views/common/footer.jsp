<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<footer class="footer">
  <div class="container">
    <div class="row">
      <div class="col-sm-4 col-md-2 col-lg-3">
        <h1 class="logo">
          <a href="${contextPath}/home">
            <img
              src="${contextPath}/resources/assets/images/home_logo.svg"
              alt="Coward"
            />
          </a>
        </h1>
      </div>

      <div class="col-sm-4 col-md-5 col-lg-3">
        <div class="service-center">
          <a href="#">
            <h3>고객센터</h3>
            <i class="ic-chevron"></i>
          </a>
        </div>
        <div class="service-info">
          <div class="row">
            <div class="service-info-wrapper">
              <div class="service-info-time">
                <div class="service-info-title">상담시간</div>
                <p>
                  평일 11:00 ~ 17:00 <br />
                  점심 12:30 ~ 13:30 <br />
                  (주말, 공휴일 제외)
                </p>
              </div>

              <div class="service-info-tel">
                <div class="service-info-title">연락처</div>
                <a class="footer-tel" href="tel:02-1234-5678">02-1234-5678</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-sm-4">
      <address class="footer-info sm-hidden">
        <p>서울특별시 강남구 테헤란로14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F</p>
        <p>Copyright © 2023 Coawrd All Right Reserved</p>
      </address>
    </div>

    <div class="col-sm-4">
      <div class="footer-links">
        <div class="row">
          <div class="footer-links-wrapper">
            <div class="icon-link">
              <a
                class="icon-link-item"
                href="https://github.com/zinoah/Coward_Project"
                target="_blank"
                ><img
                  src="${contextPath}/resources/assets/images/github.svg"
                  alt="Github 바로가기"
              /></a>
              <a
                class="icon-link-item"
                href="https://noaharea.notion.site/Coward-dcfa13756a424b4c988a6790d3d93e53?pvs=4"
              >
                <img
                  src="${contextPath}/resources/assets/images/notion.svg"
                  alt="Notion 바로가기"
                />
              </a>
              <a
                class="icon-link-item"
                href="https://www.figma.com/file/JeCS93KejkDwIfCU4EGque/Coward?type=design&node-id=1%3A4&mode=design&t=NYhPFAEyWxmOusse-1"
                target="_blank"
                ><img
                  src="${contextPath}/resources/assets/images/figma.svg"
                  alt="Figma 바로가기"
              /></a>
            </div>

            <div class="text-link">
              <ul class="text-link-list">
                <li class="text-link-item">
                  <a
                    href="https://noaharea.notion.site/Coward-8bebb80d9bfd4c8cad892261f36e8ea8?pvs=4"
                    >이용가이드</a
                  >
                </li>
                <li class="text-link-item">
                  <a href="#">개인정보처리방침</a>
                </li>
                <li class="text-link-item"><a href="#">이용약관</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <address class="footer-info sm-only">
      <p>서울특별시 강남구 테헤란로14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F</p>
      <p>Copyright © 2023 Coawrd All Right Reserved</p>
    </address>
  </div>
</footer>

<c:if test="${ !empty message }">
  <script>
    alert("${message}");
  </script>
</c:if>
