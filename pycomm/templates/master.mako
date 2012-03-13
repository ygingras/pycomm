# -*- coding: utf-8 -*- 
<%inherit file="base.mako"/>

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

  ${self.common.flash()}
  ${next.body()}

  <hr>

  <footer>
    <p>&copy; Pycomm 2012</p>
  </footer>

</div> <!-- /container -->

<%def name="extra_footer_js()">
  <script src="${request.static_url('pycomm:static/js/jquery-1.7.1.min.js')}"></script>
  ##<script src="${request.static_url('pycomm:static/js/bootstrap-transition.js')}"></script>
  <script src="${request.static_url('pycomm:static/js/bootstrap-alert.js')}"></script>
  ##<script src="${request.static_url('pycomm:static/js/bootstrap-modal.js')}"></script>
  ##<script src="${request.static_url('pycomm:static/js/bootstrap-dropdown.js')}"></script>
  ##<script src="${request.static_url('pycomm:static/js/bootstrap-scrollspy.js')}"></script>
  ##<script src="${request.static_url('pycomm:static/js/bootstrap-tab.js')}"></script>
  ##<script src="${request.static_url('pycomm:static/js/bootstrap-tooltip.js')}"></script>
  ##<script src="${request.static_url('pycomm:static/js/bootstrap-popover.js')}"></script>
  ##<script src="${request.static_url('pycomm:static/js/bootstrap-button.js')}"></script>
  ##<script src="${request.static_url('pycomm:static/js/bootstrap-collapse.js')}"></script>
  ##<script src="${request.static_url('pycomm:static/js/bootstrap-carousel.js')}"></script>
  ##<script src="${request.static_url('pycomm:static/js/bootstrap-typeahead.js')}"></script>
</%def>