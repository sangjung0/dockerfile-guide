## 개요
    Oracle SQL Developer을 GUI로 상요하는 도커파일

## 준비사항
    XServer 필수 설치

## 필요 설치 파일
openjfx-17.0.12_linux-x64_bin-sdk.zip
oracle-database-xe-21c-1.0-1.ol7.x86_64.rpm
sqldeveloper-21.4.3-063.0100.noarch.rpm

## 선택사항
### DevContainer
* devcontainer.json
프로젝트 이름을 변경합니다.
원하는 종속성을 추가합니다.

## 실행방법
* Windows
    ```cmd
        >docker build -t oracle-sqldeveloper .
        >docker run --name sqldeveloper-container oracle-sqldeveloper
    ```

* 데이터베이스 초기 설정
```bash
service oracle-xe-21c configure
# and input password
# and input confirm password
```