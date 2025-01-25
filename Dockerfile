# syntax=docker/dockerfile:1
FROM python:3.9-alpine

# Set working directory to /app
WORKDIR /app

# Copy application code
COPY hello.py .

# Expose port
EXPOSE 8000

# Run hello.py
CMD ["python", "hello.py"]
