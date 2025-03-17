# Build stage
FROM golang:1.20 AS builder

WORKDIR /app

# Copy files
COPY . .

# Build binary with static linking
RUN CGO_ENABLED=0 GOOS=linux go mod tidy && \
    CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o server

# Final stage
FROM alpine:latest

WORKDIR /root/

# Add CA certificates and timezone data
RUN apk --no-cache add ca-certificates tzdata

# Copy binary from builder
COPY --from=builder /app/server .

# Run
CMD ["./server"]