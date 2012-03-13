
from sqlalchemy import Column, Integer, Text
from pycomm.models import Base

class Event(Base):
    __tablename__ = 'models'
    id = Column(Integer, primary_key=True)
    name = Column(Text, unique=True)

    def __init__(self, name):
        self.name = name

