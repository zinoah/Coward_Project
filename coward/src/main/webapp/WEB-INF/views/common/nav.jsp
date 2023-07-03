<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="nav">
  <h2 class="visually-hidden">메뉴</h2>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div class="nav-wrapper">
          <div class="nav-left">
            <ul class="nav-list sm-hidden">
              <!-- is-active로 컨트롤 -->
              <li class="nav-item">
                <a href="${contextPath}/contest/main">공모전</a>
              </li>
              <li class="nav-item">
               <a href="${contextPath}/member/findDev">개발자 찾기</a>
              </li>
              <li class="nav-item">
                <a href="${contextPath}/mypage/companyMain">가격 안내</a>
              </li>
              <li class="nav-item">
                <a href="${contextPath}/chat/roomList">채팅</a>
              </li>
             
            </ul>
          </div>

          <div class="nav-right sm-hidden">
            <form class="nav-search" action="#">
              <input
                class="nav-search-input"
                type="text"
                placeholder="어떤 공모전을 찾으시나요?"
              />
              <i class="ic-search" aria-hidden></i>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</nav>
