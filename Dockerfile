FROM node:14-alpine3.16
RUN apk update
RUN apk add busybox>=1.35.0-r16 --repository=http://dl-cdn.alpinelinux.org/alpine/v3.16/main
RUN apk upgrade

WORKDIR /app

# install other requirements

RUN apk add graphicsmagick ffmpeg ffmpeg-dev ghostscript

# install node package

# COPY package*.json ./
# RUN npm install
COPY . .

# start app

EXPOSE 9666
CMD ["node", "spacedeck.js"]
