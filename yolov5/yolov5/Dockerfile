# 베이스 이미지 설정
FROM python:3.9

# 작업 디렉토리 설정
WORKDIR /app

# 현재 디렉토리의 모든 파일을 /app에 복사
COPY . /app

# 필요한 패키지 설치
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Django 서버 실행
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]