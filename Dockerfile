FROM node:boron

WORKDIR /usr/src/app
COPY package.json .
RUN npm install

COPY . .

RUN ./node_modules/.bin/bower install --allow-root
RUN ls app
CMD ["npm", "run" , "begin"]

EXPOSE 8000