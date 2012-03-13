# -*- coding: utf-8 -*- 

<html>
  <body>
    <ul>
      <li>
        % for event in events:
          ${event.title}
        % endfor
      </li>
    </ul>
  </body>
</html>