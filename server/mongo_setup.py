from pymongo import MongoClient
#read in words from file
words = []
word_file = open("words.csv","r")
for line in word_file.readlines():
    (english, hindi, transliteration, category) = line.split(",")
    words.append({
        'english': english.strip(),
        'hindi': hindi.strip(),
        'transliteration': transliteration.strip(),
        'category': category.strip()
    })
word_file.close()
#bulk insert into the words collection
client = MongoClient('localhost', 27017)
polyglot_db = client.polyglot_db
words_collection = polyglot_db.words
words_collection.remove()#start from scratch
words_collection.insert_many(words)
print(str(words_collection.find().count()) + " words in polyglot!")
client.close()
