import bottle
from bottle import route, run, debug, template, request, post, get
import pymongo
import csv
import sys
import tempfile
#import server.words

from pymongo import MongoClient
from pymongo import DESCENDING
from bson.objectid import ObjectId

#client = MongoClient('localhost', 8080)
client = pymongo.MongoClient()
db = client.project
collection = db.word

bottle.TEMPLATE_PATH.insert(0,'./static/views');

 
@route('/')
def index_page():
    return template('index')

@route('/words/random')
def randomWord():
    return server.words.random(db, 'hi')

#####################################

    # To Enter the Admin page
@post('/login')
def do_login():
    username = request.forms.get('username')
    password = request.forms.get('password')

    if  username == "Hanan" and password == "hhh" or username == "Reem" and password == "rrr" or username == "Nathan" and password == "nnn" :
        return template('Admin', row=R, name=username)
    else:
        return template('fail')

@route('/login')
def LOG():
    return template('Admin')


############## for guest #######################


@route('/dataset')
def Word():

    items = db.word.find().sort("English", pymongo.DESCENDING)
    rows = []
    for item in items:
        rows.append((item["English"],item["Hindi"]))
    return template('guest', row=rows)
    commit()


############## about us #######################
@route('/aboutus')
def about_us():
    return template('about')


############## contact us #######################
@route('/contactus')
def contact_us():
    return template('contact')

############################## EDIT GET  not yet ###################################

@route('/edit/<_id>', method='GET')
def get_edit(_id):
    item = db.work.find_one({ "_id":ObjectId(_id)})
    return template('edit',r1=item["English"],r2=item["Hindi"], item=_id)

############################## EDIT GET ###################################
@route('/login/insert', method='POST')
def post_new_item():
    print "IN ITEM POST"

    English = request.POST.get('English', '').strip()
    Hindi = request.POST.get('Hindi', '').strip()


    item["English"] = English
    item["Hindi"] = Hindi


    db.word.save(item)

    return template('success',item=_id)


############################## INSERT NEW Cereal ###################################

@route('/login/insert', method='GET')
def get_new_item():
    return template('insert.tpl')

@route('/login/insert', method='POST')
def post_new_item():
    print "IN ITEM POST"

    English = request.POST.get('English', '').strip()
    Hindi = request.POST.get('Hindi', '').strip()



    db.word.insert({"English":English, "Hindi":Hindi})
    return template('status/views/Add_success', C=English)
    commit()


############################## DELETE not yet ###################################


@route('/delete/<_id>', method='GET')
def delete(_id):
    item = db.word.find_one({ "_id":ObjectId(_id)})
    return template('delete',r1=item["English"],r2=item["Hindi"])


@route('/delete/<_id>', method='POST')
def delete(_id):

    item = db.word.find_one({ "_id":ObjectId(_id)})
    English = request.POST.get('English','').strip()
    db.word.remove(item)
    return template('success',item=_id)

#----------------------------------------------

debug(True)
run(host='0.0.0.0',port=8080,reloader=True)
