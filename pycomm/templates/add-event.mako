# -*- coding: utf-8 -*- 
<%inherit file="master.mako"/>
<%namespace name="forms" file="/forms.mako"/>

<h1>Add Event</h1>

<form
	id="add-form"
	class="form-horizontal"
	method="post"
	action="${request.route_url('add-event')}",
	enctype="multipart/form-data">

    ${forms.render(form.title)}
    ${forms.render(form.start_date)}
    ${forms.render(form.end_date)}
    ${forms.render(form.longitude)}
    ${forms.render(form.latitude)}
    ${forms.render(form.description)}
    ${forms.render(form.contact_name)}
    ${forms.render(form.contact_email)}

	<div class="form-actions">
		<button type="submit" name="save" class="btn btn-primary">Add</button>
		<a href="${request.route_url('home')}" class="btn">Cancel</a>
	</div>

</form>

<%def name="extra_footer_css()">
  <link type="text/css"   
        href="${request.static_url('pycomm:static/css/jquery-ui-1.8.18.custom.css')}" 
        rel="Stylesheet" />	
</%def>

<%def name="extra_footer_js()">
  ${parent.extra_footer_js()}
  <script type="text/javascript"
          src="${request.static_url('pycomm:static/js/jquery-1.7.1.min.js')}">
  </script>

  <script type="text/javascript"
          src="${request.static_url('pycomm:static/js/jquery-ui-1.8.18.custom.min.js')}">
  </script>

  <script>
    $(document).ready(function() {
      $('#start_date').datepicker();
      $('#end_date').datepicker();
    });
  </script>
</%def>
