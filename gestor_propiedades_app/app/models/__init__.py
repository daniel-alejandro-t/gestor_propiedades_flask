from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

# Importando los modelos para que sean accesibles
from . import anuncio, pago, usuario