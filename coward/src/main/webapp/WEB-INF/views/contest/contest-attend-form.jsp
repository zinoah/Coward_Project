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
                <a
                  href="../detail/${contest.contestNo}"
                  class="btn-outlined btn-32"
                  >브리핑 보러가기</a
                >
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
            <form
              action="${contextPath}/contest/attendForm"
              method="post"
              enctype="multipart/form-data"
            >
              <input
                type="hidden"
                name="contestNo"
                value="${contest.contestNo}"
              />
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
                        maxlength="500"
                        placeholder="500자이내로 입력하세요"
                        name="discription"
                      ></textarea>
                    </div>
                    <div
                      class="contest-attend-form-inner-box-main-info-github-address"
                    >
                      <p class="sub-title">github 주소</p>
                      <input
                        type="url"
                        placeholder="제출품이 있는 레파지토리 주소를 입력해주세요."
                        name="githubAddress"
                      />
                    </div>
                    <div class="contest-attend-form-inner-box-main-info-file">
                      <p class="sub-title">PPT 첨부</p>
                      <label class="btn-secondary">
                        파일 첨부 (zip, ppt)
                        <input
                          type="file"
                          style="display: none"
                          name="pptFile"
                          accept=".zip, .pdf"
                          id="pptFileInput"
                        />
                      </label>
                    </div>
                    <div class="contest-attend-form-inner-box-main-info-skill">
                      <p class="sub-title">사용 기술</p>
                      <div class="tag-box">
                        <label class="tag-gray">
                          JAVA
                          <input type="checkbox" name="skill" value="JAVA" />
                        </label>
                        <label class="tag-gray"
                          >Spring
                          <input type="checkbox" name="skill" value="Spring" />
                        </label>
                        <label class="tag-gray"
                          >Spring Boot
                          <input
                            type="checkbox"
                            name="skill"
                            value="Spring Boot"
                          />
                        </label>
                        <label class="tag-gray"
                          >PHP
                          <input type="checkbox" name="skill" value="PHP" />
                        </label>
                        <label class="tag-gray"
                          >Oracle
                          <input type="checkbox" name="skill" value="Oracle" />
                        </label>
                        <label class="tag-gray"
                          >MySQL
                          <input type="checkbox" name="skill" value="MySql" />
                        </label>
                        <label class="tag-gray"
                          >Python
                          <input type="checkbox" name="skill" value="Python" />
                        </label>
                        <label class="tag-gray"
                          >Kotlin
                          <input type="checkbox" name="skill" value="Kotlin" />
                        </label>
                        <label class="tag-gray"
                          >Swift
                          <input type="checkbox" name="skill" value="Swift " />
                        </label>
                        <label class="tag-gray"
                          >C++
                          <input type="checkbox" name="skill" value="C++" />
                        </label>
                        <label class="tag-gray"
                          >C#
                          <input type="checkbox" name="skill" value="C#" />
                        </label>
                        <label class="tag-gray"
                          >HTML
                          <input type="checkbox" name="skill" value="HTML" />
                        </label>
                        <label class="tag-gray"
                          >CSS
                          <input type="checkbox" name="skill" value="CSS" />
                        </label>
                        <label class="tag-gray"
                          >JavaScript
                          <input
                            type="checkbox"
                            name="skill"
                            value="JavaScript"
                          />
                        </label>
                        <label class="tag-gray"
                          >jQuery
                          <input type="checkbox" name="skill" value="jQuery" />
                        </label>
                        <label class="tag-gray"
                          >Vue.js
                          <input type="checkbox" name="skill" value="Vue.js" />
                        </label>
                        <label class="tag-gray"
                          >React
                          <input type="checkbox" name="skill" value="React" />
                        </label>
                        <label class="tag-gray"
                          >Node.js
                          <input type="checkbox" name="skill" value="Node.js" />
                        </label>
                      </div>
                    </div>
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
