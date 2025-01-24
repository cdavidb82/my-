# syntax=docker/dockerfile:1
FROM ubuntu:24.04

# install app dependencies
RUN apt-get update && apt-get install -y python3 python3-flask

# install app
COPY hello.py /

# final configuration
ENV FLASK_APP=hello
EXPOSE 8000
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "8000"]
