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
    <article id="board_detail" class="board_wrap">
        <div class="board_tit">
            <strong>공지사항</strong>
            <p>어쩌고저쩌고</p>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="tit">
                    <dl>
                        <dt>제목</dt>
                        <dd>작성한 제목</dd>
                    </dl>
                    <dl>
                        <dt>작성자</dt>
                        <dd>작성한 제목</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>작성한 제목</dd>
                    </dl>
                </div>
                <div class="cont">
                    컨텐츠 내용
                </div>
            </div>
            <div class="bt_wrap">
                <a href="/board_list" class="btn on">목록</a>
                <a href="edit.html" class="btn">수정</a>
                <a href="#" class="btn">삭제</a>
            </div>
        </div>
    </article>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
