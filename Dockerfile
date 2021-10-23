FROM node:lts-alpine

RUN mkdir /home/nuxt-site
WORKDIR /home/nuxt-site

RUN apk update && apk upgrade
RUN apk add git

COPY .  /home/nuxt-site

RUN npm install
RUN npm run build

EXPOSE 8080

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=8080

CMD [ "npm", "start" ]

