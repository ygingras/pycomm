# -*- coding: utf-8 -*- 
<%inherit file="base.mako"/>

% if events:
<table class="table table-bordered table-striped">
	<thead>
		<tr>
			<th colspan="2">Upcoming Events</th>
		</tr>
	</thead>
	<tbody>
		% for event in events:
		<tr>
			<td>
				<a href="${request.route_url('view-event', id=event.id)}" target="_blank">${event.title}</a>
			</td>
			<td>${event.start_date.strftime('%Y-%m-%d %H:%M')}</td>
		</tr>
		% endfor
	</tbody>
</table>
% else:
<div class="alert alert-block">
	<strong>No events</strong>
</div>
% endif
