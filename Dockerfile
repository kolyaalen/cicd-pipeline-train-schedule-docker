
FROM node:carbon
WORKDIR /home/cloud_user
COPY package*.json ./
RUN npm install
#RUN cd /home/cloud_user 
RUN git clone https://github.com/kolyaalen/cicd-pipeline-train-schedule-docker.git
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
