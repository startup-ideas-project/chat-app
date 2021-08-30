FROM node:15.8.0
WORKDIR /usr/src/chat-app
COPY package*.json ./
RUN npm ci --onl=production
COPY . .
USER node
CMD ["node", "index.js"]