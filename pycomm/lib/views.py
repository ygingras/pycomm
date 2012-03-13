
class BaseView(object):
    def __init__(self, request):
        self.request = request
        self.matchdict = request.matchdict
