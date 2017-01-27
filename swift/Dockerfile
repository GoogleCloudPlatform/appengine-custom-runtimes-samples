# Use the latest Swift from Docker Hub
FROM ibmcom/swift-ubuntu

# Add current application
ADD . /app
WORKDIR /app

# Build release.
RUN swift build --configuration release

# Run the application
ENTRYPOINT [".build/release/MyApplication"]
