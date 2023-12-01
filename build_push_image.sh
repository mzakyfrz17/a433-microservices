# Build Docker image for backend
docker build -t docker.pkg.github.com/mzakyfrz17/a433-microservices/shipping-service:latest .


# Login to Docker Hub (replace <username-docker> and <password> with your Docker Hub credentials)
docker login docker.pkg.github.com -u mzakyfrz17 -p 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


# Push Docker image to Docker Hub
docker push docker.pkg.github.com/mzakyfrz17/a433-microservices/shipping-service:latest


# Logout from Docker Hub
docker logout docker.pkg.github.com