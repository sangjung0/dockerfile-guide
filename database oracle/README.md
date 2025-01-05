## 개요
    Oracle SQL Developer을 GUI로 상요하는 도커파일

## 준비사항
    XServer 필수 설치

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