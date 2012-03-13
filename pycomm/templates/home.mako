# -*- coding: utf-8 -*- 
<%inherit file="base.mako"/>

<h1>HOME</h1>

<ul>
	<li>
		<a href="${request.route_url('add-event')}">Add Event</a>
	</li>
	<li>
		<a href="${request.route_url('sidebar')}">Sidebar</a>
	</li>
</ul>