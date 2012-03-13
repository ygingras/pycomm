from pyramid.view import view_config

from ..models import DBSession
from ..models.events import Event


@view_config(route_name='home', renderer='pycomm:templates/home.mako')
def home(request):
    one = DBSession.query(Event).first()
    return {'one':one, 'project':'pycomm'}
