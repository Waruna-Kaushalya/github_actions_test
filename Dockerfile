# FROM openjdk:8-jre-alpine

# EXPOSE 8080

# COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/
# WORKDIR /usr/app

# ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]



FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY . /usr/app
WORKDIR /usr/app


ENTRYPOINT ["java","-jar","app.jar"]




# FROM openjdk:8-jdk-alpine as build
# COPY . /usr/app
# WORKDIR /usr/app
# RUN chmod +x mvnw \
#     && ./mvnw --version \
#     && ./mvnw clean package

# FROM openjdk:8-jre-alpine
# COPY --from=build /usr/app/target/*.jar app.jar
# EXPOSE 8080

# ENTRYPOINT ["java","-jar","app.jar"]
