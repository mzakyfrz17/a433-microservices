# Build Docker image for frontend
docker build -t docker.pkg.github.com/mzakyfrz17/a433-microservices/karsajobs-ui:latest .

# Login to Docker Hub (replace <username-docker> and <password> with your Docker Hub credentials)
docker login docker.pkg.github.com -u mzakyfrz17 -p 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

# Push Docker image to Docker Hub
docker push docker.pkg.github.com/mzakyfrz17/a433-microservices/karsajobs-ui:latest

# Logout from Docker Hub
docker logout docker.pkg.github.com