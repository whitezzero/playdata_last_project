<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.springboot.project4.data.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // JDBC 드라이버 로드
    Class.forName("org.mariadb.jdbc.Driver");

    // 데이터베이스 연결 설정
    Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/recipe", "root", "1234");

    Statement statement = conn.createStatement();
    ResultSet resultSet = statement.executeQuery("SELECT idx, title, content, user_id, created_at FROM post_list");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>냉잔고</title>
    <link href="css/common.css" rel="stylesheet" type="text/css" />
    <link href="css/board.css" rel="stylesheet" type="text/css" />

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
            <strong>공지사항</strong>
            <p>냉잔고의 새로운 소식들과 유용한 정보들을 한곳에서 확인해보세요.</p>
        </div>
        <div class="board_list_wrap">
            <table class="board_list">
                <colgroup>
                    <col width="5%" />
                    <col width="*" />
                    <col width="10%" />
                    <col width="20%" />
                </colgroup>
                <thead>
                    <tr>
                        <td>번호</td>
                        <td>제목</td>
                        <td>작성자</td>
                        <td>작성일</td>
                    </tr>
                </thead>
                <tbody>
                <% while(resultSet.next()) { %>
                <tr class="list">
                    <td class="num">
                        <%= resultSet.getInt("idx") %>
                    </td>
                    <td class="tit">
                        <a href="post_detail.jsp?postId=<%= resultSet.getInt("idx") %>">
                            <%= resultSet.getString("title") %>
                        </a>
                    </td>
                    <td class="writer">
                        <%= resultSet.getString("user_id") %>
                    </td>
                    <td class="date">
                        <span><%= resultSet.getString("created_at") %></span>
                    </td>
                </tr>
                <% } %>
                <%
                    resultSet.close();
                    statement.close();
                    conn.close();
                %>
                </tbody>
            </table>
            <div class="bt_wrap">
                <% if (session.getAttribute("loggedInUser") != null) { %>
                <a href="/board_write" class="on">등록</a>
                <% } else { %>
                <% } %>
            </div>
        </div>
    </article>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>