
from sqlalchemy import (Column, 
                        Integer, 
                        Unicode, 
                        UnicodeText, 
                        DateTime, 
                        Float)
from pycomm.models import Base

class Event(Base):
    __tablename__ = 'events'
    id = Column(Integer, primary_key=True)
    title = Column(Unicode, unique=True)
    start_date = Column(DateTime, nullable=True)
    end_date = Column(DateTime, nullable=True)

    longitude = Column(Float, nullable=True)
    latitude = Column(Float, nullable=True)

    description = Column(UnicodeText, nullable=True)

    contact_name = Column(Unicode)
    contact_email = Column(Unicode)
