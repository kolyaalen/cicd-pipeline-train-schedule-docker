
FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN cd /home/cloud_user 
RUN git clone https://github.com/kolyaalen/cicd-pipeline-train-schedule-docker.git
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
