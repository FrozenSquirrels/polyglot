import os
import json
import sqlite3
import words
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from database_setup import Base, BasicPrompt
from bottle import *

@route('/')
def index():
    return static_views('index.html')

@route('/words/random')
def hello():
    return words.random('')

@error(404)
def error404(error):
    return 'This is not the page you are looking for.'

@get('/<filepath:re:.*\.html>')
def static_views(filepath):
    return static('views/'+filepath)


@get('/static/<filepath:path>')
def static(filepath):
    return static_file(filepath, root='../static')

@get('/getBasicPrompts')
def getPrompt():
    #construct database session
    engine = create_engine('sqlite:///polyglot.db')
    Base.metadata.bind = engine
    DBSession = sessionmaker(bind = engine)
    session = DBSession()
    results = session.query(BasicPrompt).all()
    print(results)
    return json.dumps([x.serialize for x in results])
    session.close()

@get('/bower_components/<filepath:path>')
def bower_files(filepath):
    return static_file(filepath, root='../bower_components')

#for running locally
if __name__ == '__main__':
    port = int(os.environ.get('PORT', 1337))
    run(host='0.0.0.0', port=port, debug=True, reloader=True)
else:
    #for running on python anywhere
    application = default_app()
