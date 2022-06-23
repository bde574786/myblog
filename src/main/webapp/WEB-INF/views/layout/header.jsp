<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix = "c" uri =
"http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>나의 블로그</title>

    <!-- Latest compiled and minified CSS -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    
    <!-- include summernote css/js -->
    <!-- start -->
    <link
      href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <!-- end -->


  </head>
  

  <body>
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-bottom">
      <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="#!">Start Bootstrap</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarResponsive"
          aria-controls="navbarResponsive"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="/blog">블로그 홈</a>
            </li>
            <c:choose>
              <c:when test="${empty sessionScope.principal}">
                <li class="nav-item">
                  <a class="nav-link" href="/blog/user/login">로그인</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/blog/user/join">회원가입</a>
                </li>
              </c:when>
              <c:otherwise>
                <li class="nav-item">
                  <a class="nav-link" href="/blog/writing">글 쓰기</a>
                </li>
                  <li class="nav-item">
                  <a class="nav-link" href="/blog/list">글 목록</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/blog/user/logout">로그아웃</a>
                </li>
              </c:otherwise>
            </c:choose>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Page Content-->
    <section>
      <div class="container px-3 px-lg-5">
        <div class="row gx-4 gx-lg-5">
          <div class="col-lg-6">
            <h1 class="mt-5">My Blog</h1>
            <p>
              아는 코드도 다시보기
            </p>
          </div>
        </div>
      </div>
    </section>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
  </body>
</html>
