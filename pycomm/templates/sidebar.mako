# -*- coding: utf-8 -*- 

<html>
  <body>
    <ul>
      % for event in events:
      <li>
          ${event.title}
      </li>
      % endfor
    </ul>
  </body>
</html>