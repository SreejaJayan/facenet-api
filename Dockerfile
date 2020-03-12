FROM node:13.10-slim
WORKDIR /app
COPY . /app

RUN apt-get update
RUN apt-get install -y python3
RUN apt install -y python3-pip
RUN pip3 install tensorflow
RUN pip3 install scipy
RUN pip3 install scikit-image


RUN npm install
RUN mkdir core/train_img
RUN mkdir core/pre_img

EXPOSE 3000
CMD ["npm", "start"]
