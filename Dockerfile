FROM node:16-alpine
#RUN apt-get update && apt-get install curl -y
#RUN curl -sL https://deb.nodesource.com/setup_17.x -o nodesource_setup.sh
#RUN bash nodesource_setup.sh
#RUN apt-get install nodejs
RUN mkdir /test_middleware
WORKDIR /test_middleware
COPY . .
RUN chmod -R 777 .
RUN npm install
CMD npm start && tail -f /dev/null  #  pm2-runtime start build/index.js
EXPOSE 3000
