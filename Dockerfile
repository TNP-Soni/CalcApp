FROM node:15.13-alpine 
WORKDIR /calculator
ENV PATH="./node_modules/.bin:$PATH"
COPY . .
RUN npm i
RUN npm run build
CMD ["npm","start"]