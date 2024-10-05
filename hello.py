from flask import Flask
app = Flask(__name__)
@app.route('/')
def hello():
    return '<p>Hello, World!</p>'

@app.route('/about')
def about():
    return '''
     <h1>About Page</h1>
     <p>This is the about page for the Flask app. It gives more information 
      about the application.</p>
      '''
