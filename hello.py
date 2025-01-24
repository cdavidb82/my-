import logging

logging.basicConfig(level=logging.INFO)

from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    logging.info('Hello World!')
    return "Hello World!"