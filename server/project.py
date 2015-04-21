from bottle import route, run, debug, template, request, post, get, static_file
import bottle
import pymongo
import csv
import sys
import tempfile
import random

import os
from bson.json_util import dumps

from pymongo import MongoClient
from pymongo import DESCENDING
from bson.objectid import ObjectId

#bottle should look in /static/views for templates
bottle.TEMPLATE_PATH.insert(0,'../static/views')

client = pymongo.MongoClient('localhost', 27017)
db = client.polyglot_db
words = db.words

#root to landing page (same as /)
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
@get('/GetPrompts/<category>')
def getPrompt(category):
    category_words = words.find({'category': category})
    num_words = category_words.count()
    selected_indices = random.sample(range(0, num_words), min(10, num_words))
    category_words_list = []
    for word in category_words:
        category_words_list.append(word)
    return dumps(map(lambda index: category_words_list[index], selected_indices))


@get('/GetCategories')
def getCategories():
    categories = words.distinct("category")
    return dumps(categories)


#practice section
@route('/practice')
def practice_page():
    return static_file("practice.html", root="../static/views")


######## the home page (first screen )

@route('/')
def index_page():
	return template('index')

  #####################################

    # To Enter the Admin page
@post('/login')
def do_login():
    username = request.forms.get('username')
    password = request.forms.get('password')

    items = db.words.find().sort("english", pymongo.DESCENDING)
    R = []
    for item in items:
        R.append((item["_id"],item["english"],item["hindi"]))
    if  username == "Hanan" and password == "hhh" or username == "Reem" and password == "rrr" or username == "Nathan" and password == "nnn" :
        return template('Admin', row=R, name=username)
    else:
        return template('fail')

@route('/login')
def LOG():
    return template('Admin')

############## about us #######################
@route('/aboutus')
def about_us():
    return template('about')


############## contact us #######################
@route('/contactus')
def contact_us():
    return template('contact')


    ############################## EDIT GET ###################################

@route('/edit/<_id>', method='GET')
def get_edit(_id):
    item = db.wors.find_one({ "_id":ObjectId(_id)})
    return template('edit',r1=item["english"],r2=item["hindi"], item=_id)
    #------------------------------ EDIT POST ---------------------------------------------

@route('/login/insert', method='POST')
def post_new_item():
    print "IN ITEM POST"

    English = request.POST.get('english', '').strip()
    Hindi = request.POST.get('hindi', '').strip()


    item["english"] = English
    item["hindi"] = Hindi


    db.words.save(item)

    return template('success',item=_id)


############################## INSERT NEW words ###################################

@route('/login/insert', method='GET')
def get_new_item():
    return template('ADD_Word.tpl')

@route('/login/insert', method='POST')
def post_new_item():
    print "IN ITEM POST"

    English = request.POST.get('english', '').strip()
    Hindi = request.POST.get('hindi', '').strip()



    db.words.insert({"english":English, "hindi":Hindi})
    return template('Add_success', C=Cereal)
    commit()


        ############################## DELETE ###################################


@route('/delete/<_id>', method='GET')
def delete(_id):
    item = db.words.find_one({ "_id":ObjectId(_id)})
    return template('delete',r1=item["english"],r2=item["hindi"])


@route('/delete/<_id>', method='POST')
def delete(_id):

    item = db.words.find_one({ "_id":ObjectId(_id)})
    English = request.POST.get('english','').strip()
    db.words.remove(item)
    return template('success',item=_id)

#----------------------------------------------

@route('/dataset')
def Word():

    items = db.words.find().sort("english", pymongo.DESCENDING)
    rows = []
    for item in items:
        rows.append((item["english"],item["hindi"]))
    return template('guest', row=rows)
    commit()


debug(True)
run(host='0.0.0.0',port=8080,reloader=True)
