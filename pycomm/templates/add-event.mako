# -*- coding: utf-8 -*- 

<h2>Add Event</h2>

<form method=post action="/add-event">
<dl class="input-errors">
<dl>
    <dd>${ form.title.label } ${ form.title }</dd>
    <dd>${ form.start_date.label } ${ form.start_date }</dd>
    <dd>${ form.end_date.label } ${ form.end_date }</dd>
    <dd>${ form.longitude.label } ${ form.longitude }</dd>
    <dd>${ form.latitude.label } ${ form.latitude }</dd>
    <dd>${ form.description.label } ${ form.description }</dd>
    <dd>${ form.contact_name.label } ${ form.contact_name }</dd>
    <dd>${ form.contact_email.label } ${ form.contact_email }</dd>
</dl>
<input type=submit value='Submit'>
</form>
