from flask import render_template, request, redirect, url_for
from src import app
from src.config.globals import DB
import json


@app.route('/')
def index():
    if (DB == False):
        return redirect(url_for('iniciando'))
    else:
        return render_template('index.html')

@app.route('/iniciando', methods=('GET','POST'))
def iniciando():
    if request.method == 'GET':

        return render_template('instalacion.html')

    
    host = request.form.get('host')
    port = request.form.get('port')
    user = request.form.get('user')
    password = request.form.get('password')
    database = request.form.get('database')
    config = {
    'host': host,
    'port': int(port),
    'user': user,
    'password': password,
    'database': database
    }
    
    archivo=open("src/config/conexion.json","w")
    archivo.write(json.dumps(config))
    archivo.close()

   # print(config_json)

    return redirect(url_for('index'))


    #return redirect(url_for('iniciando'))


    

