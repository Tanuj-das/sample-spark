FROM node:14 AS build
WORKDIR /app
COPY . .
FROM node:14
WORKDIR /app
COPY --from=build /app /app
RUN cd /app && npm install
RUN ls
EXPOSE 4000
RUN node server.js
