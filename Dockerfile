FROM mhart/alpine-node:9

WORKDIR /app
COPY . /app

RUN    rm package-lock.json \
    ; rm -rf .idea \
    ; rm -rf node_modules \
    ; npm config set registry "https://registry.npm.taobao.org/" \
    && npm install

EXPOSE 80
CMD ["node", "app.js"]
