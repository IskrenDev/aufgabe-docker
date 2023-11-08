FROM --platform=linux/amd64 openjdk:20
ENV MONGO_URI=mongodb://localhost:27017/my_db
LABEL maintainer="iskren.radev@aol.de"
EXPOSE 8001
ADD backend/target/app.jar app.jar
CMD [ "sh", "-c", "java -jar /app.jar" ]