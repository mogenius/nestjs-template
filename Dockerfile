FROM node:lts

WORKDIR /app/nestjs

EXPOSE 3000
COPY . /app/nestjs

RUN npm install
RUN npm run build

CMD ["npm", "run", "start:prod"]
