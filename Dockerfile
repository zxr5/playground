# Step 1: Build
FROM golang:1.23-alpine AS builder

RUN apk update && apk add --no-cache make openssh git curl ca-certificates tzdata && update-ca-certificates
