<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="layout/header.jsp" %> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %><!-- jstl문법 사용선언 -->
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>

  </head>

  <div class="container">
    <form>
      <div class="form-group">
        <label for="title">Title : </label>
        <input
          type="text"
          placeholder="title"
          id="title"
          class="form-control"
        />
      </div>

      <div class="form-group">
        <label for="content">Content : </label>
        <textarea
          class="form-control summernote"
          rows="5"
          id="content"
        ></textarea>
      </div>
      <br />
      <button type="button" onclick="saveBoard()" class="btn btn-primary">
        글쓰기
      </button>
    </form>
    <br />
  </div>

  <script>
    function saveBoard() {
      let title = document.querySelector("#title").value;
      let content = document.querySelector("#content").value;
	
      console.log(content);
      
      let board = {
        title: title,
        content: content
      };

      // 비동기 통신 해주는 자바 스크립트에 내장된 함수 fetch
      fetch("/blog/save", {
        method: "post",
        headers: {
          "content-type": "application/json; charset=utf-8",
        },
        body: JSON.stringify(board), // object를 json으로 변환시켜서 던지게 할 거임.
        // 응답 성공하면 then
      })
        .then((res) => res.text())
        .then((res) => {
          if (res == "ok") {
            alert("글쓰기 성공");
            location.href = "/blog/list";
          } else {
            alert("글쓰기 실패");
          }
        });
    } // end of saveBoard

    $(".summernote").summernote({
      placeholder: "Hello Bootstrap 4",
      tabsize: 2,
      height: 300,
    });
  </script>

</html>
