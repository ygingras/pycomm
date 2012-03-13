from pyramid.view import view_config

from ..forms.events import EventAddForm
from ..models import DBSession
from ..models.events import Event


@view_config(route_name='home', renderer='pycomm:templates/home.mako')
def home(request):
    one = DBSession.query(Event).first()
    return {'one':one, 'project':'pycomm'}

@view_config(route_name='add-event', request_method='GET', renderer='pycomm:templates/add-event.mako')
def add(request):
    form = EventAddForm(request.params)
    return {'form':form}

@view_config(route_name='add-event', request_method='POST', renderer='pycomm:templates/add-event.mako')
def save(request):
    params = request.POST
    form = EventAddForm(params)
    if params:
        if form.validate():
            event = Event()
            form.populate_obj(event)
            DBSession.add(event)
            DBSession.flush()
            request.session.flash(
                u'Event successfully added.',
                queue='success',
            )
        else:
            request.session.flash(
                u'Event not added.',
                queue='error',
            )
    return {'form':form}

