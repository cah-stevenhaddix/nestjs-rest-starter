FROM node:16.3-alpine As development

WORKDIR /usr/src/app

COPY package*.json ./
COPY prisma ./

RUN echo registry=https://artifacts.cahcommtech.com/repository/npm/ > ~/.npmrc && \
    echo always-auth=true >> ~/.npmrc && \
    echo _auth=Y29tbXRlY2g6Q29tbXRlY0g= >> ~/.npmrc
 
ENV PRISMA_BINARIES_MIRROR https://prisma-builds.s3-eu-west-1.amazonaws.com

RUN npm install --only=development

COPY . .

RUN npm run build

FROM node:16.3-alpine as production

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

COPY --from=development /usr/src/app/dist ./dist

CMD ["node", "dist/main"]
