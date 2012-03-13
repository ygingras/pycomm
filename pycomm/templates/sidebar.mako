# -*- coding: utf-8 -*- 
<%inherit file="base.mako"/>

<ul>
  % for event in events:
  <li>
      ${event.title}
  </li>
  % endfor
</ul>
