# FROM node:18
# WORKDIR /app
# COPY server-pkg .
# COPY .env .
# EXPOSE ${PORT}
# CMD ["./server-pkg"]
# Use a lightweight base image since you're running a binary
FROM alpine:latest

RUN mkdir /usr/src/app -p

WORKDIR /usr/src/app

COPY server-pkg .
COPY .env ./

ENV PORT=3000
EXPOSE ${PORT}

CMD ["./server-pkg"]
