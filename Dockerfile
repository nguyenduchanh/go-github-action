# khai báo phiên bản ngôn ngữ mới nhất của golang
FROM golang:1.13-alpine
# di chuyển tới thư mục chạy
RUN mkdir /app
# cài đặt các thư viên cần thiết

# thêm các thư mục chứa cfile chạy
ADD . /app
# khi báo thư mục chính
WORKDIR /app
# lệnh build
RUN go clean --modcache
RUN go build -o main .
CMD ["/app/main"]

