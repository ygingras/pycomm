# -*- coding: utf-8 -*-
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Python Communities</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- styles -->
    <link href="${request.static_url('pycomm:static/css/app.css')}?v=${rid}" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    ##<link rel="shortcut icon" href="../assets/ico/favicon.ico">
    ##<link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    ##<link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    ##<link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">

    ## defined as empty in this file, overload if you want these extra header elements
    ${self.extra_header_css()}
    ${self.extra_header_js()}
  </head>

  <body>

    ${next.body()}

    <!-- javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

    ## defined as empty in this file, overload if you want these extra footer elements
    ${self.extra_footer_css()}
    ${self.extra_footer_js()}
    
  </body>
</html>

<%namespace name="common" file="/common.mako" inheritable="True"/>
<%!
    from time import time
    rid = int(time())
%>

<%def name="extra_header_css()"></%def>
<%def name="extra_header_js()"></%def>
<%def name="extra_footer_css()"></%def>
<%def name="extra_footer_js()"></%def>
