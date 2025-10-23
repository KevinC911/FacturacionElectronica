# 🧩 Step 1: Use a lightweight base image with Java
FROM eclipse-temurin:21

# 🌸 Step 2: Set a working directory
WORKDIR /app

# 🐱 Step 3: Copy the jar file into the container
COPY build/libs/AdventureWorks-0.0.1-SNAPSHOT.jar app.jar

# 🌻 Step 4: Expose the port (default Spring Boot port)
EXPOSE 8080

# 🌈 Step 5: Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]