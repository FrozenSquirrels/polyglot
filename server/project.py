from bottle import route, run, debug, template, request, post, get, static_file
import bottle
import pymongo
import csv
import sys
import tempfile

import os
import json
import sqlite3
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from database_setup import Base, BasicPrompt

from pymongo import MongoClient
from pymongo import DESCENDING
from bson.objectid import ObjectId

#bottle should look in /static/views for templates
bottle.TEMPLATE_PATH.insert(0,'../static/views')

#client = MongoClient('localhost', 8080)
client = pymongo.MongoClient()
db = client.project
collection = db.word

#root to landing page (same as /project)
@route('/')
def index():
    return template('index')

#html file should go in views
@get('/<filepath:re:.*\.html>')
def static_views(filepath):
    return static('views/'+filepath)


#serve third party javascript and css in bower_components folder
@get('/bower_components/<filepath:path>')
def bower_files(filepath):
    return static_file(filepath, root='../bower_components')

#serve static javascript and html
@get('/static/<filepath:path>')
def static(filepath):
    return static_file(filepath, root='../static')

#get request for get promts, will replace with mongo code
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




#practice section
@route('/practice')
def practice_page():
    return static_file("practice.html", root="../static/views")

######## the home page (first screen )

@route('/project')
def index_page():
	return template('index')

  #####################################

    # To Enter the Admin page
@post('/login')
def do_login():
    username = request.forms.get('username')
    password = request.forms.get('password')

    items = db.word.find().sort("English", pymongo.DESCENDING)
    R = []
    for item in items:
        R.append((item["_id"],item["English"],item["Hindi"]))
    if  username == "Hanan" and password == "hhh" or username == "Reem" and password == "rrr" or username == "Nathan" and password == "nnn" :
        return template('Admin', row=R, name=username)
    else:
        return template('fail')

@route('/login')
def LOG():
    return template('Admin')



    ############################## EDIT GET ###################################

@route('/project/edit/<_id>', method='GET')
def get_edit(_id):
    item = db.work.find_one({ "_id":ObjectId(_id)})
    return template('edit',r1=item["English"],r2=item["Hindi"], item=_id)
    #------------------------------ EDIT POST ---------------------------------------------

@route('/login/insert', method='POST')
def post_new_item():
    print "IN ITEM POST"

    English = request.POST.get('English', '').strip()
    Hindi = request.POST.get('Hindi', '').strip()


    item["English"] = English
    item["Hindi"] = Hindi


    db.word.save(item)

    return template('success',item=_id)


############################## INSERT NEW words ###################################

@route('/login/insert', method='GET')
def get_new_item():
    return template('ADD_Word.tpl')

@route('/login/insert', method='POST')
def post_new_item():
    print "IN ITEM POST"

    English = request.POST.get('English', '').strip()
    Hindi = request.POST.get('Hindi', '').strip()



    db.word.insert({"English":English, "Hindi":Hindi})
    return template('Add_success', C=Cereal)
    commit()


        ############################## DELETE ###################################


@route('/project/delete/<_id>', method='GET')
def delete(_id):
    item = db.word.find_one({ "_id":ObjectId(_id)})
    return template('delete',r1=item["English"],r2=item["Hindi"])


@route('/project/delete/<_id>', method='POST')
def delete(_id):

    item = db.word.find_one({ "_id":ObjectId(_id)})
    English = request.POST.get('English','').strip()
    db.word.remove(item)
    return template('success',item=_id)

#----------------------------------------------



debug(True)
run(host='localhost',port=8080,reloader=True)
