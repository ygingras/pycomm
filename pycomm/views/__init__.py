# -*- coding: utf-8 -*-

def includeme(config):
    config.add_route('home', '/')
    config.add_route('sidebar', '/sidebar')
    config.add_route('add-event', '/add-event')
    config.add_route('view-event', '/events/{id}')
