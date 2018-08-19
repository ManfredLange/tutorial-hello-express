FROM node:10-alpine
RUN mkdir -p /home/nodejs/app
WORKDIR /home/nodejs/app
COPY . .
RUN npm install --production
CMD ["node", "--inspect=0.0.0.0:9229", "--inspect-brk", "hello_express.js"]
