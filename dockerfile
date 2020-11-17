FROM node:14-alpine

# install dependencies
RUN apk -U --no-cache add bash openjdk11

RUN npm i npm -g
RUN npm i firebase-tools -g

RUN firebase setup:emulators:firestore
