FROM maven:3.9.9-eclipse-temurin-21 AS build

WORKDIR /app

COPY src ./src
COPY pom.xml .

RUN mvn clean package -DskipTests

FROM eclipse-temurin:21-jre AS runtime

WORKDIR /app
COPY --from=build /app/target/*.jar ./api.jar

EXPOSE 8080
CMD ["java", "-jar", "api.jar"]