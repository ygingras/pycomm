# -*- coding: utf-8 -*-

from pyramid.view import view_config

from ..lib.views import BaseView
from ..models import DBSession
from ..models.events import Event


class Events(BaseView):

    @view_config(
    	route_name='home', 
    	renderer='pycomm:templates/home.mako'
    	)
    def home(self):
        events = DBSession.query(Event).all()
        return {'events':events}

