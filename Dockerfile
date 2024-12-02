# Use a minimal Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app/frontend

# Copy the frontend code into the container
COPY frontend/ /app/frontend/

# Expose the port that http.server will run on
EXPOSE 8000

# Run the HTTP server
CMD ["python3", "-m", "http.server", "8000"]
