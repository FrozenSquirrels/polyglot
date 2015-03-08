from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from database_setup import Base, BasicPrompt

#construct database session
engine = create_engine('sqlite:///polyglot.db')
Base.metadata.bind = engine
DBSession = sessionmaker(bind = engine)
session = DBSession()

#create some prompt objects
prompt1 = BasicPrompt(english="Hello", hindi="Namaste")
prompt2 = BasicPrompt(english="How Are You", hindi="Aap kaisey hain")
prompt3 = BasicPrompt(english="Goodbye", hindi="Alvida")

#add prompt objects to session
session.add(prompt1)
session.add(prompt2)
session.add(prompt3)

#commit prompts to database
session.commit()
session.close()
session = DBSession()

#test insertions
results = session.query(BasicPrompt).all()
for result in results:
    print(result.english + "\t" + result.hindi)
session.close()