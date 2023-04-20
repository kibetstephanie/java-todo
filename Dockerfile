#Using openJDK as the base image
FROM openjdk

VOLUME /javatodo

#Creating an app directory for my application files. You can also do RUN mkdir /app
WORKDIR /app

#Copy the app files from host machine to image filesystem
COPY build.gradle build.gradle

COPY . .

CMD ["App.java"]