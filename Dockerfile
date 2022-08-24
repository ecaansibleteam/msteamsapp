FROM node:9.4.0-alpine
COPY app.js .
COPY package.json .
COPY w3otp.html .
COPY allmsg.html .
RUN npm install
RUN touch demo.txt
RUN chmod -R 777 w3otp.html
RUN chmod -R 777 allmsg.html
EXPOSE  8090
CMD node app.js
