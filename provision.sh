#!/bin/bash

# Update the system and install necessary packages
sudo pacman -Syu --noconfirm
sudo pacman -S git nano vim python 
python-virtualenv python-pip --noconfirm

# Create a Python virtual environment
python -m venv /home/alarm/flask_venv

# Activate the virtual environment and install Flask
source /home/alarm/flask_venv/bin/activate pip install Flask

# Create the Flask application file
cat <<EOF > /home/alarm/hello.py
from flask import Flask
app = Flask(__name__)
@app.route('/')
def hello():
    return '<p>Hello, World!</p>'
EOF

# Run the Flask app (can also use nohup to run it in the background)
flask --app /home/alarm/hello run --host=0.0.0.0 &
