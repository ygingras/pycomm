# -*- coding: utf-8 -*-

#### FLASH MESSAGES
<%def name="flash()">
% for q in ('','warning','error','success', 'info'):
	% if request.session.peek_flash(queue=q):
	<div class="alert alert-${q or 'block'}">
		<a class="close" data-dismiss="alert" href="#">×</a>
		<% flash = request.session.pop_flash(queue=q) %>
		${'<br>'.join(flash)|n}
	</div>
	% endif
% endfor
</%def>