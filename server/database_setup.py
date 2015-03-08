import sys 
from sqlalchemy import Column, ForeignKey, Integer, String 
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
from sqlalchemy import create_engine

Base = declarative_base()#creates a class from which our classes inherit

class BasicPrompt(Base):
    #associate class with table name
    __tablename__ = 'basic_promt'
    #define fields
    english = Column(String(80), nullable = False)
    hindi = Column(String(80), nullable = False)
    id = Column(Integer, primary_key = True)
    
    @property
    def serialize(self):
        data = {}
        data['english'] = self.english
        data['hindi'] = self.hindi
        data['id'] = self.id
        return data
    
engine = create_engine('sqlite:///polyglot.db')
Base.metadata.create_all(engine)