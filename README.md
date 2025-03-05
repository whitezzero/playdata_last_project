# <img src = "https://github.com/whitezzero/playdata_last_project/assets/159407646/d28df2af-bf82-42eb-b8af-c1fc3f04bffa" width="6%" height = "6%"> 냉잔고

## 1. 소개
### 📝Notion
### 👉 [냉잔고](https://www.notion.so/f818d63858cf4170a21a0eee32473027)

 ### 📆 개발 기간
  - 전체 개발 기간 : 2024.01.08 ~ 2024.02.12
  - 모델 구현 : 2024.01.08 ~ 2024.01.23
  - 기능 구현 : 2024.01.15 ~ 2024.02.05
  - UI 구현 : 2024.01.08 ~ 2024.02.05
  - 배포 작업 : 2024.02.05 ~ 2024.02.12
    
![스크린샷 2024-02-08 140428](https://github.com/whitezzero/playdata_last_project/assets/142198289/bf634b6e-73d4-4fdb-9d6d-0e680bcbd18d)

## 2. 프로젝트 소개
 ### 📌 [유튜브 링크](https://youtube.com/shorts/cU_x7xhNzhw?feature=share)
 ### 목적
  - 냉장고에 있는 재료를 최대한으로 활용하여 잉여 재료를 없애고 음식물 쓰레기를 줄이는 것
 ### 기능
- 냉장고의 재료를 촬영하여 냉장고의 재료를 활용하여 레시피 추천
- 집에 남아있는 음식 등 재료를 사진으로 찍어 관련 음식을 탐색 가능
- 찾은 음식의 레시피 소개
- 게시판을 활용하여 질문 및 만든 음식 후기 작성
 ### 효과
  - 냉장고에 있는 잉여 재료를 없애고 냉장고의 공간 확보 가능
  - 음식물 쓰레기의 양을 줄일 수 있어 환경 보호 기능
  - 다양한 재료의 활용으로 요리 실력 증진

## 3. 팀원 소개
김성훈|김유준|박혜민|백민호|지용욱
---|---|---|---|---|
![image](https://github.com/whitezzero/playdata_last_project/assets/159407646/aff059b8-5d4d-4ed7-ad3e-fb286ccc2357)|![image](https://github.com/whitezzero/playdata_last_project/assets/159407646/49fbf1e2-e0f6-4ace-99b6-9a0463a244e9)|![image](https://github.com/whitezzero/playdata_last_project/assets/159407646/9feb2ebf-84f5-49ef-b8ad-25111067b208)|![image](https://github.com/whitezzero/playdata_last_project/assets/159407646/7dd2ee28-72f1-4483-83a5-1b67f5cc0de9)|![image](https://github.com/whitezzero/playdata_last_project/assets/159407646/70f95b58-5945-4e54-a28d-f4734ac8bb06)


## 역할 분담
### 김성훈
 - 아키텍처 작성 및 일정 관리
 - 프로젝트 기획서 작성
 - 식재료 & 레시피 크롤링
### 김유준
 - 식재료 인식 모델 개발
 - 백엔드 개발
 - db 구축 및 연결
 - 식재료 & 레시피 크롤링 
### 박혜민
 - 프론트엔드 개발
 - 식재료 & 레시피 크롤링
### 백민호
 - 식재료 & 레시피 크롤링
 - 유사도 알고리즘 작성
 - db 구축 및 연결
 - 도커 연결
### 지용욱
 - 식재료 인식 모델 개발
 - 유사도 알고리즘 작성
 - 식재료 & 레시피 크롤링
 - 백앤드 개발
 - db 구축 및 연결
 - 도커 연결

## 4. 서비스 소개

### 이미지 업로드
폴더에 있는 사진을 업로드 할 수 있는 팝업이 열립니다.
카메라로 사진을 촬영하여 사진을 업로드 합니다.

### 재료 이미지 업로드 팝업
폴더에 저장되어 있는 이미지를 업로드 할 수 있는 영역에서 업로드할 수 있고, 업로드한 이미지 확인가능.
‘레시피 추천 받기’ 버튼을 누르면 레시피 추천페이지로 이동.

### 레시피 추천 페이지
업로드한 재료가 무엇인지 인식하고,
인식된 재료와 재료에 적합한 추천 레시피 3개를 보여줍니다.

![image](https://github.com/whitezzero/playdata_last_project/assets/159407646/2f8d68b0-24e0-4141-a169-c35a4eeebf2b)





 ## 5. 구조
## 프로젝트 구조

## 프로젝트 아키텍처
![image](https://github.com/whitezzero/playdata_last_project/assets/159407646/71a9c661-0fe9-4c40-8afc-7b4bb7ad5d5e)


## 🛠 개발 환경
- Java
- Springboot
- HTML, CSS, JavaScript, Jquery
- RESTful API
- DB 서버 : MariaDB
- IDE : Intellij
- Collaboration : Notion
- 배포 : Docker & Nginx

- ### DB
<img src="https://img.shields.io/badge/MariaDB-003545F?style=for-the-badge&logo=mariadb&logoColor=white">

- ### Backend
<img src="https://img.shields.io/badge/python-3776AB?style=for-the-badge&logo=python&logoColor=white"><img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white"><img src="https://img.shields.io/badge/intellijidea-ED2761?style=for-the-badge&logo=intellijidea&logoColor=white"><img src="https://img.shields.io/badge/keras-D00000?style=for-the-badge&logo=keras&logoColor=white"><img src="https://img.shields.io/badge/tensorflow-FF6F00?style=for-the-badge&logo=tensorflow&logoColor=white">

- ### Frontend
<img src="https://img.shields.io/badge/html-E34F26?style=for-the-badge&logo=html&logoColor=white"><img src="https://img.shields.io/badge/css3-572B6?style=for-the-badge&logo=css3&logoColor=white"><img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=white"><img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">

- ### 배포
<img src="https://img.shields.io/badge/docker-2496ED?style=for-the-badge&logo=docker&logoColor=white">
