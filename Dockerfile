#################
# Base image
#################
FROM alpine:3.12 as javascriptweekly-base

USER root

RUN addgroup -g 10001 javascriptweekly && \
    adduser --disabled-password --system --gecos "" --home "/home/javascriptweekly" --shell "/sbin/nologin" --uid 10001 javascriptweekly && \
    mkdir -p "/home/javascriptweekly" && \
    chown javascriptweekly:0 /home/javascriptweekly && \
    chmod g=u /home/javascriptweekly && \
    chmod g=u /etc/passwd

ENV USER=javascriptweekly
USER 10001
WORKDIR /home/javascriptweekly

#################
# Builder image
#################
FROM golang:1.15-alpine AS javascriptweekly-builder
RUN apk add --update --no-cache alpine-sdk
WORKDIR /app
COPY . .
RUN make build

#################
# Final image
#################
FROM javascriptweekly-base

COPY --from=javascriptweekly-builder /app/bin/javascriptweekly /usr/local/bin

# Command to run the executable
ENTRYPOINT ["javascriptweekly"]
