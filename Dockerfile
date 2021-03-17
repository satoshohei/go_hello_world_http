FROM golang:latest

RUN go get -u github.com/labstack/echo \
  && go get github.com/labstack/echo/middleware \
  && go get github.com/jinzhu/gorm \
  && go get -u github.com/go-sql-driver/mysql \
  && go get github.com/rubenv/sql-migrate/...

WORKDIR /go/src/api/

COPY ./backend/api /go/src/api

EXPOSE 8080

CMD ["go","run","main.go"]
