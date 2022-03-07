FROM node:lts

WORKDIR /app/nestjs

EXPOSE 3000
COPY nestjs/ /app/nestjs

RUN npm install
RUN npm run build

CMD ["npm", "run", "start:prod"]
