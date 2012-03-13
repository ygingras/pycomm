# -*- coding: utf-8 -*- 
<%inherit file="base.mako"/>

<h1>HOME</h1>

<ul>
	<li>
		<a href="${request.route_url('add-event')}">Add Event</a>
	</li>
	<li>
		<a href="${request.route_url('sidebar')}">Sidebar</a>
	</li>
</ul>

<div id="current">Initializing...</div>
<div id="map_canvas" style="width:100%; height:300px"></div>



<%def name="extra_footer_js()">
    <script src="http://code.google.com/apis/gears/gears_init.js" type="text/javascript" charset="utf-8"></script>
    <script src="${request.static_url('pycomm:static/js/geo.js')}" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
    function initialize()
    {
        // Initialize map

        var myOptions = {
              zoom: 4,
              mapTypeControl: true,
              mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
              navigationControl: true,
              navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL},
              mapTypeId: google.maps.MapTypeId.ROADMAP      
            }   
        map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

        // Get position

        if(geo_position_js.init())
        {
            document.getElementById('current').innerHTML="Receiving...";
            geo_position_js.getCurrentPosition(show_position,function(){document.getElementById('current').innerHTML="Couldn't get location"},{enableHighAccuracy:true});
        }
        else
        {
            document.getElementById('current').innerHTML="Functionality not available";
        }
    }

    function show_position(p)
    {
        document.getElementById('current').innerHTML="latitude="+p.coords.latitude.toFixed(2)+" longitude="+p.coords.longitude.toFixed(2);
        var pos=new google.maps.LatLng(p.coords.latitude,p.coords.longitude);
        map.setCenter(pos);
        map.setZoom(14);

        var infowindow = new google.maps.InfoWindow({
            content: "<strong>yes</strong>"
        });

        var marker = new google.maps.Marker({
            position: pos,
            map: map,
            title:"You are here"
        });

        google.maps.event.addListener(marker, 'click', function() {
          infowindow.open(map,marker);
        });
        
    }

    function loadScript() {
        var script = document.createElement("script");
        script.type = "text/javascript";
        script.src = "http://maps.googleapis.com/maps/api/js?key=AIzaSyDsQESaB2ry-KEAjIvOePZnh0HjYOZyY74&sensor=false&callback=initialize";
        document.body.appendChild(script);
    }
    window.onload = loadScript;
    </script>
</%def>
