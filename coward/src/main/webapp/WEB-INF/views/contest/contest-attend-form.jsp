<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="${contextPath}/resources/styles/css/contest-attend-form.css"
    />
    <link
      rel="stylesheet"
      href="https://unpkg.com/dropzone@5/dist/min/dropzone.min.css"
      type="text/css"
    />

    <title>Coward | 공모전 참가하기</title>
  </head>
  <body>
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <jsp:include page="/WEB-INF/views/common/nav.jsp" />
    <section class="banner">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="banner-wrapper">
              <div class="banner-text-box">
                <div class="banner-text-box-inner">
                  <div class="banner-text-box-day">
                    <div class="tag-blue">
                      <p>${contest.dueDate}일</p>
                    </div>
                  </div>
                  <div class="banner-text-box-title">
                    <p>${contest.contestTitle}</p>
                  </div>
                  <div class="banner-text-box-reward">
                    <div>
                      <p>총 상금</p>
                    </div>
                    <div>
                      <p>${contest.price}만원</p>
                    </div>
                  </div>
                </div>
                <div class="banner-button-box sm-hidden">
                  <a
                    href="../detail/${contest.contestNo}"
                    class="btn-outlined btn-40"
                    >브리핑 보러가기</a
                  >
                </div>
              </div>
              <div class="banner-button-box sm-only">
                <a href="#" class="btn-outlined btn-40">브리핑 보러가기</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <main class="contest-attend-form">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <form action="#">
              <div class="contest-attend-form-inner-box">
                <div class="contest-attend-form-inner-box-title">
                  <h3>👉 양식에 맞게 작성해주세요</h3>
                </div>
                <div class="contest-attend-form-inner-box-main">
                  <div class="contest-attend-form-inner-box-main-info">
                    <div
                      class="contest-attend-form-inner-box-main-info-summary"
                    >
                      <p class="sub-title">간단 설명</p>
                      <textarea
                        maxlength="200"
                        placeholder="200자이내로 입력하세요"
                      ></textarea>
                    </div>
                    <div
                      class="contest-attend-form-inner-box-main-info-github-address"
                    >
                      <p class="sub-title">github 주소</p>
                      <input
                        type="url"
                        placeholder="제출품이 있는 레파지토리 주소를 입력해주세요."
                      />
                    </div>
                    <div class="contest-attend-form-inner-box-main-info-skill">
                      <p class="sub-title">사용 기술</p>
                      <div class="tag-box">
                        <label class="tag-gray" name="skill">
                          JAVA
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >Spring
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >Spring Boot
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >PHP
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >Oracle
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >MySQL
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >Python
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >Kotlin
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >Swift
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >C++
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >C#
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >HTML
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >CSS
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >JavaScript
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >jQuery
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >Vue.js
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >React
                          <input type="checkbox" />
                        </label>
                        <label class="tag-gray" name="skill"
                          >Node.js
                          <input type="checkbox" />
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="contest-attend-form-inner-box-main-story-board">
                    <p class="sub-title">스토리보드</p>
                    <!-- 드롭존 - 클릭영역 -->
                    <div class="dropzone"></div>
                  </div>
                </div>
                <div class="contest-attend-form-inner-box-btn">
                  <button class="btn-secondary btn-32 submit-btn">
                    제출하기
                  </button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </main>
    <!-- footer include -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
    <!-- 모달 :: is-open -->
    <jsp:include page="/WEB-INF/views/common/menubar.jsp" />
    <div id="overlay" class="overlay"></div>

    <script src="https://unpkg.com/dropzone@5/dist/min/dropzone.min.js"></script>
    <script src="${contextPath}/resources/js/dropzone.js"></script>
    <script src="${contextPath}/resources/js/header.js"></script>
    <script src="${contextPath}/resources/js/contest-attend-form.js"></script>
    <!-- jQuery -->
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
  </body>
</html>
