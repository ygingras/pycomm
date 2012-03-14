# -*- coding: utf-8 -*- 
<%inherit file="base.mako"/>

% if events:
<table class="table table-bordered table-striped">
	<thead>
		<tr>
			<th colspan="2">Upcoming vents</th>
		</tr>
	</thead>
	<tbody>
		% for event in events:
		<tr>
			<td>${event.title}</td>
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
