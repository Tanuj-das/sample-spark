FROM node:4.2
COPY . /src
RUN cd /src && npm install
RUN ls
EXPOSE 4000
RUN node server.js
