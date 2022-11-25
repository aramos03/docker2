FROM node:latest
WORKDIR  /var/www/html
EXPOSE 9090:80
RUN apt-get update 
RUN apt-get install -y git
RUN git clone https://github.com/aramos03/tema7.git .
RUN npm install
CMD ["node","app.js"]