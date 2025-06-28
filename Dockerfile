#base image
FROM node:18-alpine
#set work directory
WORKDIR /app
#copy to work-directory
COPY package.*json /app
#install dependency 
RUN npm install
#copying rest of the app
COPY . .
#expose port
EXPOSE 3000
#start the app
CMD ["npm","start"]