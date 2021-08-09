FROM node:6-alpine
USER root
RUN mkdir ~/.npm-global
RUN npm config set prefix '~/.npm-global'
RUN export PATH=~/.npm-global/bin:$PATH
COPY package.json /app
#RUN npm install 

RUN npm install -g jshint
