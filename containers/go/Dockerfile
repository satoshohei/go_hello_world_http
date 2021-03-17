FROM golang:latest

RUN go get -u github.com/labstack/echo \
  && go get github.com/labstack/echo/middleware \
  && go get github.com/jinzhu/gorm \
  && go get -u github.com/go-sql-driver/mysql \
  && go get github.com/rubenv/sql-migrate/...

EXPOSE 8080

WORKDIR /go/src/api/