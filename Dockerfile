FROM node:0.12

RUN useradd -m -d /opt/hubot -s /bin/bash hubot

USER hubot
WORKDIR /opt/hubot

ADD package.json /opt/hubot/package.json
RUN npm i

ADD . /opt/hubot

ENTRYPOINT ["bin/hubot", "--adapter", "slack"]
