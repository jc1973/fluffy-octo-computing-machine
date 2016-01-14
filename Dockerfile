FROM pm2:latest

MAINTAINER nobody "nobodyy@example.net"

RUN npm install -g log.io --user "root"

ADD app.json app.json

ADD harvester.conf root/.log.io/harvester.conf

CMD pm2 start app.json --no-daemon
