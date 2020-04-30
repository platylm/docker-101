FROM golang:1.12 as builder
WORKDIR /app
COPY go.mod .
COPY go.sum .
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o ./bin/app ./main.go 

FROM alpine:3
WORKDIR /root/
COPY --from=builder /app/bin/app .
ENV GIN_MODE release
EXPOSE 8080
CMD ./app

# FROM golang:1.12
# WORKDIR /app
# COPY go.mod .
# COPY go.sum .
# RUN go mod download
# COPY . .
# RUN go build -o ./bin/app ./main.go 
# EXPOSE 8080
# CMD ./bin/app
