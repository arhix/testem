FROM node:10-alpine
RUN apk add chromium
RUN npm install testem -g --unsafe-perm
WORKDIR /app
CMD testem ci -R teamcity
