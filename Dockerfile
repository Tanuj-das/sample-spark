FROM node:4.2
WORKDIR /usr/src/app
COPY . /app
RUN cd /app && npm install
RUN ls
EXPOSE 4000
CMD ["node", "server.js"]
