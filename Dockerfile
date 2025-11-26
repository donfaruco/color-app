# Use an official Python image
FROM demisto/python3

# Set working directory
WORKDIR /app

# Copy index.html into the container
COPY index.html /app/index.html

# Expose port 8000
EXPOSE 8000

# Command to run a simple Python HTTP server
CMD ["python", "-m", "http.server", "8000"]
