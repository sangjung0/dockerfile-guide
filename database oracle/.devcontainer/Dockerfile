# 베이스 이미지
FROM ubuntu:22.04

# 메타데이터
LABEL version="1.0"
LABEL authors="sangj"

# 필요 종속성 설치
RUN apt-get update && apt-get install -y openjdk-8-jdk

# jdk 환경 변수 설정
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH="${JAVA_HOME}/bin:${PATH}"

# WORKDIR /workspaces
# COPY .. /workspaces/app