<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // JDBC 드라이버 로드
    Class.forName("org.mariadb.jdbc.Driver");

    // 데이터베이스 연결 설정
    Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/recipe", "root", "1234");
    Statement statement = conn.createStatement();
    ResultSet resultSet = statement.executeQuery("SELECT idx, title, image FROM post_list LIMIT 5");
    ResultSet resultSet2 = statement.executeQuery("SELECT idx, title, image FROM post_list LIMIT 5");
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>냉잔고</title>
        <link href="css/common.css" rel="stylesheet" type="text/css" />
        <link href="css/main.css" rel="stylesheet" type="text/css" />

        <!-- fonts -->
        <script src="https://kit.fontawesome.com/aa3cf60179.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <!-- Main -->
        <section id="main">
            <article class="home-main-01">
                <div class="home-main-inner">
                    <div class="home-main-img">
                        <img class="home-main-image-right" alt="냉잔고, 레시피, 메뉴추천, 점메추, 저메추" src="img/home-main-img001-01.jpg">
                    </div>
                    <div class="home-main-desc">
                        <h1 class="home-main-title">집에 있는 재료로<br>뭘 만들 수 있을까?</h1>
                        <p class="service-desc">
                            색다른 레시피를 원한다면,<br> 냉잔고를 열어 간편하게 찰칵.
                        </p>
                        <ul class="home-btn">
                            <li id="fileImg" class="home-btn-item">
                                <a href="#none" onclick="openUploader(event);">이미지 업로드</a>
                            </li>
                            <li id="cameraImg" class="home-btn-item">
                                <a href="#">카메라 열기</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </article>
            <article class="board">
                <div class="inner flex">
                    <div class="board_lt">
                        <div class="board_head">
                            <h3 class="board_title">음식 질문 게시판</h3>
                            <a href="#" class="btn_more">더보기</a>
                        </div>
                        <div class="board_list">
                            <% while(resultSet.next()) { %>
                            <div class="list">
                                <div class="list_item">
                                    <a href="/post_detail.jsp?postId=<%= resultSet.getInt("idx") %>">
                                        <div class="item_area">
                                            <strong class="tit"><span class="label"></span><%= resultSet.getString("title") %></strong>
                                            <div class="item_info">
                                                <div class="item_num">
                                                    <span class="count like">
                                                        <i class="fa-regular fa-heart"></i>좋아요 개수
                                                    </span>
                                                    <span class="count comment">
                                                        <i class="fa-regular fa-comment-dots"></i>댓글 개수
                                                    </span>
                                                </div>
                                                <span class="board_name"></span>
                                            </div>
                                        </div>
                                        <div class="thumb_area">
                                            <span class="thumb_image_item">
                                                <img src="img/thumb.jpg" alt="첨부파일 이미지" class="thumb_image">
                                            </span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <% } %>
                            <%
                                resultSet.close();
                            %>
                        </div>
                    </div>
                    <div class="board_rt">
                        <div class="board_head">
                            <h3 class="board_title">음식 자랑 게시판</h3>
                            <a href="#" class="btn_more">더보기</a>
                        </div>
                        <div class="board_list">
                            <% while(resultSet2.next()) { %>
                            <div class="list">
                                <div class="list_item">
                                    <a href="post_detail.jsp?postId=<%= resultSet2.getInt("idx") %>">
                                        <div class="item_area">
                                            <strong class="tit"><span class="label"></span><%= resultSet2.getString("title") %></strong>
                                            <div class="item_info">
                                                <div class="item_num">
                                                    <span class="count like">
                                                        <i class="fa-regular fa-heart"></i>좋아요 개수
                                                    </span>
                                                    <span class="count comment">
                                                        <i class="fa-regular fa-comment-dots"></i>댓글 개수
                                                    </span>
                                                </div>
                                                <span class="board_name"></span>
                                            </div>
                                        </div>
                                        <div class="thumb_area">
                                            <span class="thumb_image_item">
                                                <img src="img/thumb.jpg" alt="첨부파일 이미지" class="thumb_image">
                                            </span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <% } %>
                            <%
                                resultSet2.close();
                                statement.close();
                                conn.close();
                            %>
                        </div>
                    </div>
                </div>
            </article>
        </section>
        <div id="fileLoad" class="">
            <div class="inner">
                <form action="/upload" method="post" enctype="multipart/form-data">
                    <div class="head">
                        <div class="tit">
                            재료 이미지 업로드 
                        </div>
                        <div class="close">
                            <span class="ico_close" onclick="closeUploader();"><i class="fa-solid fa-xmark"></i></span>
                        </div>
                    </div>
                    <div class="cont">
                        <!-- input type="file" accept="image/*" required multiple style="display: none;" -->
                        <input style="display:none" type="file" id="fileInput" name="uploadedFile" accept=".jpg, .jpeg, .png">
                        <div class="uploadArea">
                            여기로 이미지를 드래그하거나 <label for="fileInput" class="text-upload">파일을 업로드</label> 하세요
                        </div>
                        <div id="imagePreview" class="image-preview"></div>
                    </div>
                    <div class="submit">
                        <button type="button" id="btn1" class="submit-btn" onclick="document.getElementById('fileInput').click();">업로드</button>
                        <button type="submit" id="btn2" class="submit-btn" style="display: none">업로드</button>
                    </div>
                </form>
            </div>
        </div>

        <script>
            //업로드 창 열림
            function openUploader(event){
<%--                <% if (session.getAttribute("loggedInUser") != null) { %>--%>
                event.preventDefault();
                document.getElementById('fileLoad').style.display = 'block';
                var body = document.querySelector('body');
                if (body.classList.contains('mbile')) {
                    document.getElementById('wrap').style.display = 'block';
                }
<%--                <% } else { %>--%>
<%--                alert("로그인해주세요 제발^^");--%>
<%--                <% } %>--%>
            };

            //닫기
            function closeUploader(){
                document.getElementById('fileLoad').style.display = 'none';
                document.getElementById('wrap').style.display = 'none';
            };

            //파일 업로드
            function getImageFiles(e) {
                const uploadFiles = [];
                const files = e.currentTarget.files;

                //const imagePreview = document.querySelector('.image-preview');
                //const docFrag = new DocumentFragment();

                // 파일 타입 검사
                [...files].forEach(file => {
                    if (!file.type.match("image/.*")) {
                        alert('이미지 파일만 업로드가 가능합니다.');
                        return  ;
                    }

                    if ([...files].length < 2) {
                        uploadFiles.push(file);
                        //파일이 업데이트 되었을 때,
                        document.getElementById("btn1").style.display = "none";
                        document.getElementById("btn2").style.display = "inline";
                        const reader = new FileReader();
                        reader.onload = (e) => {
                            createImagePreview(file);
                            document.querySelector('.imgWrap').style.height = '350px';

                        };
                        reader.readAsDataURL(file);
                    }
                });
            }

            function createImagePreview(file) {
                const imagePreview = document.getElementById('imagePreview');

                const img = document.createElement('img');
                img.setAttribute('src', URL.createObjectURL(file));
                img.setAttribute('data-file', file.name);
                
                // 삭제 버튼 추가
                const deleteButton = document.createElement('button');
                deleteButton.innerText = '삭제';
                deleteButton.className = 'btnDel';
                deleteButton.addEventListener('click', function() {
                    removeImage(file);
                });

                // 리스트 아이템에 추가
                const listItem = document.createElement('div');
                listItem.className = 'imgWrap'; 

                listItem.appendChild(img);
                listItem.appendChild(deleteButton);
                
                imagePreview.appendChild(listItem);
            }

            // 이미지 파일 정보를 저장할 배열
            const deletedImageFiles = [];

            function removeImage(file) {
                const imagePreview = document.getElementById('imagePreview');
                const images = imagePreview.getElementsByTagName('div');

                document.querySelector('.imgWrap').style.height = '0px';

                // 해당 파일명과 일치하는 이미지를 찾아 제거
                for (let i = 0; i < images.length; i++) {
                    const img = images[i].querySelector('img');
                    if (img.getAttribute('data-file') === file.name) {
                        // 삭제된 이미지 파일 정보를 저장
                        deletedImageFiles.push(file.name);

                        images[i].remove();
                        break;
                    }
                }
            }

            // 이미지 다시 업로드 함수 추가
            function reuploadDeletedImages() {
                const imagePreview = document.getElementById('imagePreview');

                // 저장된 삭제된 이미지 파일 정보를 이용하여 다시 업로드
                deletedImageFiles.forEach(fileName => {
                    const file = getFileByName(fileName);
                    if (file) {
                        createImagePreview(file);
                        document.querySelector('.imgWrap').style.height = '350px';
                    }
                });

                // 업로드 후 저장된 삭제된 이미지 파일 정보 초기화
                deletedImageFiles.length = 0;
            }

            // 파일명으로 파일 객체 찾기
            function getFileByName(fileName) {
                const realUpload = document.getElementById('fileInput');
                const files = realUpload.files;
                
                for (let i = 0; i < files.length; i++) {
                    if (files[i].name === fileName) {
                        return files[i];
                    }
                }

                return null;
            }

             // 다시 업로드 함수 호출
            reuploadDeletedImages();

            const realUpload = document.getElementById('fileInput');
            realUpload.addEventListener('change', getImageFiles);
        </script>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>