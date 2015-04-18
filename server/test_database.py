import pymongo

client = pymongo.MongoClient('localhost', 27017)
db = client.polyglot_db
words = db.words
print(words.find().count())
