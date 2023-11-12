FROM golang:1.21 AS base

RUN adduser \
  --disabled-password \
  --gecos "" \
  --home "/nonexistent" \
  --shell "/sbin/nologin" \
  --no-create-home \
  --uid 65532 \
  small-user

WORKDIR $GOPATH/src/smallest-golang/app/

COPY . .

RUN go mod download && go mod verify && CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /app ./...
FROM gcr.io/distroless/static-debian11@sha256:d49f214e6f1bae819e24f651156552b073725592cae128a66eade0c6280f02e1

WORKDIR /app/
COPY  --chmod=0644 --from=base app .
CMD ["./app/app"]