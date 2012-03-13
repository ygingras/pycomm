from pyramid.view import view_config

from ..forms.events import EventAddForm
from ..lib.views import BaseView
from ..models import DBSession
from ..models.events import Event


class Event(BaseView):

    @view_config(
    	route_name='home', 
    	renderer='pycomm:templates/home.mako'
    	)
    def home(self):
        one = DBSession.query(Event).first()
        return {'one':one, 'project':'pycomm'}

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

