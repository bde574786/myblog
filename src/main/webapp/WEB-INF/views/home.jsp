<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include file="layout/header.jsp" %>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <button type="button" id="btn-home" onclick="location.href='/blog'" class="btn btn-primary">블로그 홈</button>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>

    <c:choose>
      <c:when test="${empty sessionScope.principal}">
        <div class="col-sm-4">
          <button type="button" id="btn-login" onclick="location.href='/blog/user/login'" class="btn btn-primary">로그인</button>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
          <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
        </div>

        <div class="col-sm-4">
          <button type="button" id="btn-join" onclick="location.href='/blog/user/join'" class="btn btn-primary">회원가입</button>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
          <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
        </div>
      </c:when>

      <c:otherwise>
        <div class="col-sm-4">
          <button type="button" id="btn-writing" onclick="location.href='/blog/user/writing'" class="btn btn-primary">글쓰기</button>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
          <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
        </div>

        <div class="col-sm-4">
          <button type="button" id="btn-" onclick="location.href='/blog/user/logout'" class="btn btn-primary">로그아웃</button>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
          <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
        </div>
        
      </c:otherwise>
    </c:choose>
  </div>
</div>

<%@ include file="layout/footer.jsp" %>
