FROM node:10-alpine
RUN mkdir -p /home/nodejs/app
WORKDIR /home/nodejs/app
COPY . .
RUN npm install --production
CMD ["node", "hello_express.js"]