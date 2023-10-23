from flask import Flask
from .controllers import anuncios_blueprint

app = Flask(__name__)

app.register_blueprint(anuncios_blueprint)
