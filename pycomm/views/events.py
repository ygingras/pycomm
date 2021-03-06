# -*- coding: utf-8 -*-

from pyramid.httpexceptions import HTTPNotFound
from pyramid.view import view_config

from ..forms.events import EventAddForm
from ..lib.views import BaseView
from ..models import DBSession
from ..models.events import Event


class Events(BaseView):

    @view_config(
        route_name='view-event',
        request_method='GET',
        renderer='pycomm:templates/view-event.mako'
        )
    def view(self):
        event = DBSession.query(Event)\
            .filter_by(id=self.matchdict.get('id'))\
            .first()
        if not event:
            return HTTPNotFound()
        return {'event':event}

    @view_config(
    	route_name='add-event',
    	request_method='GET',
    	renderer='pycomm:templates/add-event.mako'
    	)
    def add(self):
        form = EventAddForm(self.request.params)
        return {'form':form}

    @view_config(
    	route_name='add-event',
    	request_method='POST',
    	renderer='pycomm:templates/add-event.mako'
    	)
    def save(self):
        params = self.request.POST
        form = EventAddForm(params)
        if params:
            if form.validate():
                event = Event()
                form.populate_obj(event)
                DBSession.add(event)
                DBSession.flush()
                self.request.session.flash(
                    u'Event successfully added.',
                    queue='success',
                    )
            else:
                self.request.session.flash(
                    u'Event not added.',
                    queue='error',
                    )
        return {'form':form}

    @view_config(
        route_name='sidebar', 
        renderer='pycomm:templates/sidebar.mako'
        )
    def sidebar(self):
        events = DBSession.query(Event).all()
        return dict(events=events)
