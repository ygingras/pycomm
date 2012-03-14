# -*- coding: utf-8 -*- 
<%inherit file="master.mako"/>

<h1>Event Details</h1>

<table class="table table-bordered table-striped">
  <tbody>
    <tr>
      <th>Title</th>
      <td>${event.title}</td>
    </tr>
    <tr>
      <th>Starts On</th>
      <td>${event.start_date.strftime('%Y-%m-%d %H:%M')}</td>
    </tr>
    % if event.description:
    <tr>
      <th>Description</th>
      <td>${event.description}</td>
    </tr>
    % endif
    <tr>
      <th>Contact</th>
      <td>${event.contact_name}</td>
    </tr>
    <tr>
      <th>Email</th>
      <td>${event.contact_email}</td>
    </tr>
  </tbody>
</table>

