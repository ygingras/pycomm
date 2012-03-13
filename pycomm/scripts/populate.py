# -*- coding: utf-8 -*-

import os
import sys
import transaction
from datetime import datetime

from sqlalchemy import engine_from_config

from pyramid.paster import (
    get_appsettings,
    setup_logging,
    )

from pycomm.models import (
    DBSession,
    Base,
    )

from pycomm.models.events import Event

def usage(argv):
    cmd = os.path.basename(argv[0])
    print('usage: %s <config_uri>\n'
          '(example: "%s development.ini")' % (cmd, cmd)) 
    sys.exit(1)

def main(argv=sys.argv):
    if len(argv) != 2:
        usage(argv)
    config_uri = argv[1]
    setup_logging(config_uri)
    settings = get_appsettings(config_uri)
    engine = engine_from_config(settings, 'sqlalchemy.')
    DBSession.configure(bind=engine)
    Base.metadata.create_all(engine)
    with transaction.manager:
        model = Event(title='Python Boston Workshop', 
                      start_date=datetime.now(), 
                      end_date=datetime.now(),
                      longitude=71.03, 
                      latitude=42.21, 
                      description=('An all-weekend event where newcomers'
                                   ' can learn about programming in Python'))
        DBSession.add(model)

        model = Event(title=u'Montréal-Python 29', 
                      start_date=datetime.now(), 
                      end_date=datetime.now(),
                      longitude=73.35, 
                      latitude=45.30, 
                      description=('An all-weekend event where newcomers'
                                   ' can learn about programming in Python'))
        DBSession.add(model)
