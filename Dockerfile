FROM node:lts-buster
RUN git clone https://github.com/blessedmeki18/Rude-MD_V1/root/RUDE-MD_V1
WORKDIR /root/RUDE-MD_V1
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
