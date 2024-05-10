FROM node:4.2
RUN ls
RUN pwd
COPY . /src
RUN pwd
RUN ls
RUN cd /src && npm install
RUN ls
EXPOSE 4000
RUN node server.js
