<%@ page import="com.springboot.project4.data.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>냉잔고</title>
    <link href="./css/common.css" rel="stylesheet" type="text/css" />
    <link href="./css/board.css" rel="stylesheet" type="text/css" />

    <!-- fonts -->
    <script src="https://kit.fontawesome.com/aa3cf60179.js" crossorigin="anonymous"></script>
  </head>
  <body>
  <jsp:include page="header.jsp"></jsp:include>
  <section id="board">
    <article class="boardLt">
      <jsp:include page="board_left.jsp"></jsp:include>
    </article>
    <article class="boardRt">
      <div class="board_title">
        <strong>게시글 작성</strong>
      </div>
      <div class="board_write">
        <form action="/post" method="post">
          <div class="input-group">
            <div class="input-tit">제목</div>
            <div class="input-info">
              <label for="title">제목</label>
              <input type="text" id="title" name="title" placeholder="게시글 제목을 작성해주세요." required>
              <span class="focus-border">
                <i></i>
              </span>
            </div>
          </div>
          <div class="input-group">
            <div class="input-tit">아이디</div>
            <div class="input-info">
              <label for="userId">아이디</label>
<%--              <p id="userId" name="userId"><%= ((User)session.getAttribute("loggedInUser")).getUserId() %></p>--%>
              <input type="text" id="userId" name="userId" placeholder="아이디" value="<%= ((User)session.getAttribute("loggedInUser")).getUserId() %>" readonly required>
              <span class="focus-border">
                <i></i>
              </span>
            </div>
          </div>
          <div class="input-group">
            <div class="input-tit">내용</div>
            <div class="input-info">
              <label for="content">내용</label>
              <textarea placeholder="내용 입력" id="content" name="content" required></textarea>
            </div>
          </div>
          <div class="bt_wrap">
            <button type="submit">등록</button>
            <a href="/board_list">목록</a>
          </div>
        </form>
      </div>
    </article>
  </section>
  <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>