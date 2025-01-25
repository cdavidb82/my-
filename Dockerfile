# syntax=docker/dockerfile:1
FROM python:3.9-alpine

# Set working directory to /app
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY hello.py .

# Expose port
EXPOSE 8000

# Run hello.py
CMD ["python", "hello.py"]