# -*- coding: utf-8 -*-

def includeme(config):
    config.add_route('home', '/')
    config.add_route('sidebar', '/events/sidebar')
    config.add_route('add-event', '/events/add-event')
    config.add_route('view-event', '/events/{id}')
