# -*- coding: utf-8 -*- 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Pycomm</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- styles -->
    <link href="${request.static_url('pycomm:static/css/app.css')}?v=${rid}" rel="stylesheet">
    <link href="${request.static_url('pycomm:static/css/responsive.css')}?v=${rid}" rel="stylesheet">

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

    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="${request.route_url('home')}">Pycomm</a>
          <div class="nav-collapse">
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container">

      ${next.body()}

      <hr>

      <footer>
        <p>&copy; Pycomm 2012</p>
      </footer>

    </div> <!-- /container -->

    <!-- javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${request.static_url('pycomm:static/js/jquery-1.7.1.min.js')}"></script>
    <script src="${request.static_url('pycomm:static/js/bootstrap-transition.js')}"></script>
    <script src="${request.static_url('pycomm:static/js/bootstrap-alert.js')}"></script>
    <script src="${request.static_url('pycomm:static/js/bootstrap-modal.js')}"></script>
    <script src="${request.static_url('pycomm:static/js/bootstrap-dropdown.js')}"></script>
    <script src="${request.static_url('pycomm:static/js/bootstrap-scrollspy.js')}"></script>
    <script src="${request.static_url('pycomm:static/js/bootstrap-tab.js')}"></script>
    <script src="${request.static_url('pycomm:static/js/bootstrap-tooltip.js')}"></script>
    <script src="${request.static_url('pycomm:static/js/bootstrap-popover.js')}"></script>
    <script src="${request.static_url('pycomm:static/js/bootstrap-button.js')}"></script>
    <script src="${request.static_url('pycomm:static/js/bootstrap-collapse.js')}"></script>
    <script src="${request.static_url('pycomm:static/js/bootstrap-carousel.js')}"></script>
    <script src="${request.static_url('pycomm:static/js/bootstrap-typeahead.js')}"></script>

    ## defined as empty in this file, overload if you want these extra footer elements
    ${self.extra_footer_css()}
    ${self.extra_footer_js()}
  </body>
</html>

<%!
    from time import time
    rid = int(time())
%>

<%def name="extra_header_css()"></%def>
<%def name="extra_header_js()"></%def>
<%def name="extra_footer_css()"></%def>
<%def name="extra_footer_js()"></%def>
