<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>냉잔고</title>
    <link href="./css/common.css" rel="stylesheet" type="text/css" />
    <link href="./css/mypage.css" rel="stylesheet" type="text/css" />

    <!-- fonts -->
    <script src="https://kit.fontawesome.com/aa3cf60179.js" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- Main -->
<section id="mypage">
    <article>
        <div class="container">
            <div class="pageTop">
                <div class="info">
                    <div class="userImg">
                        <img src="" alt="등급이미지" />
                    </div>
                    <div class="userTxt">
                        <span class="userGrp">회원등급</span>
                        <span class="userName">회원이름</span>
                        <a href="#" class="infoEdit">정보수정</a>
                    </div>
                </div>
            </div>
            <div class="pageBtm">
                <div class="mypage_title">
                    <strong>게시글 작성 내역</strong>
                    <p>작성했던 게시글들을 한곳에서 확인해보세요.</p>
                </div>
                <div class="mypage_list_wrap">
                    <table class="mypage_list">
                        <colgroup>
                            <col width="5%" />
                            <col width="20%" />
                            <col width="*" />
                            <col width="20%" />
                        </colgroup>
                        <thead>
                        <tr>
                            <td>번호</td>
                            <td>카테고리</td>
                            <td>제목</td>
                            <td>작성일</td>
                        </tr>
                        </thead>
                        <tbody>
                            <tr class="list">
                                <td class="num">
                                    5
                                </td>
                                <td class="cate">
                                    공지사항
                                </td>
                                <td class="tit">
                                    <a href="#">게시글 제목</a>
                                </td>
                                <td class="date">
                                    <span>2024.01.29</span>
                                </td>
                            </tr>
                            <tr class="list">
                                <td class="num">
                                    4
                                </td>
                                <td class="cate">
                                    공지사항
                                </td>
                                <td class="tit">
                                    <a href="#">게시글 제목</a>
                                </td>
                                <td class="date">
                                    <span>2024.01.29</span>
                                </td>
                            </tr>
                            <tr class="list">
                                <td class="num">
                                    3
                                </td>
                                <td class="cate">
                                    공지사항
                                </td>
                                <td class="tit">
                                    <a href="#">게시글 제목</a>
                                </td>
                                <td class="date">
                                    <span>2024.01.29</span>
                                </td>
                            </tr>
                            <tr class="list">
                                <td class="num">
                                    2
                                </td>
                                <td class="cate">
                                    공지사항
                                </td>
                                <td class="tit">
                                    <a href="#">게시글 제목</a>
                                </td>
                                <td class="date">
                                    <span>2024.01.29</span>
                                </td>
                            </tr>
                            <tr class="list">
                                <td class="num">
                                    1
                                </td>
                                <td class="cate">
                                    공지사항
                                </td>
                                <td class="tit">
                                    <a href="#">게시글 제목</a>
                                </td>
                                <td class="date">
                                    <span>2024.01.29</span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </article>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>