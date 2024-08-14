FROM golang:1.22.6-bookworm

WORKDIR /app

COPY . .

RUN useradd -m app_user && chown -R app_user:app_user /app

USER app_user


# FROM golang:1.22.6-bookworm AS builder

# WORKDIR /app

# COPY go.mod go.sum ./

# Run go mod download

# COPY . .

# Run go build -o main .

# FROM alpine:latest

# WORKDIR /app

# COPY --from=builder /app/main .

# CMD ["./main"]

