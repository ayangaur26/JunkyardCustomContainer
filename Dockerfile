# Use Ubuntu as the base image
FROM ubuntu:24.04

# Set environment variables to prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update and install Python and dependencies
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the app directory into the container
COPY ./app /app

# Set the working directory
WORKDIR /app

# Install Python dependencies (if you have a requirements.txt)
# RUN pip3 install -r requirements.txt

# Expose the port the app will run on
EXPOSE 8080

# Run the Python HTTP server
CMD ["python3", "app.py"]
