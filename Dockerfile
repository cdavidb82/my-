# syntax=docker/dockerfile:1
FROM python:3.9-alpine

# install app
COPY hello.py /

# Run hello.py
CMD ["python", "hello.py"]

