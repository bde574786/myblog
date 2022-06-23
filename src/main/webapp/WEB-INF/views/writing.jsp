<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include file="layout/header.jsp" %>


<div class="container">
  <form>
    <div class="form-group">
      <label for="title">Title : </label>
      <input type="text" placeholder="title" id="title" class="form-control" />
    </div>

    <div class="form-group">
      <label for="content">Content : </label>
      <textarea class="form-control summernote" rows="5" id="content"></textarea>
    </div>
    <br />
    <button type="button" onclick="saveBoard()" class="btn btn-primary">글쓰기</button>
  </form>
  <br />
</div>