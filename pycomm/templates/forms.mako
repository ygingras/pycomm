# -*- coding: utf-8 -*-

<%def name="render(field, show_label=True, show_errors=True, **kwargs)">
<div class="control-group${' error' if field.errors else ''}">
	% if show_label:
	<label class="control-label" for="${field.label.field_id}">${field.label.text}</label>
	% endif
    <div class="controls">
		${field(**kwargs)}
		% if field.errors and show_errors:
		<dl class="input-errors">
			% for error in field.errors:
			<dd>${error}</dd>
			% endfor
		</dl>
		% endif
	</div>
</div>
</%def>