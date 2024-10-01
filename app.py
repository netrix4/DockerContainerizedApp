import flask
app = flask.Flask(__name__)

@app.route('/')
def home():
    return '''
        Nombre: Mario De Jesus Arias Hernandez<br>
        Matricula: 21760701
    '''