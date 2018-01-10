<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Path of Storm</title>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
	width: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
</head>
<body>

<c:out value="${status}" />
 
<c:out value="${name}" />
From 
<c:out value="${year}" />
; 
<c:if test ="${maxWind == '-99'}">wind not measured</c:if> 
<c:if test ="${maxWind != '-99'}">Max Wind
<c:out value="${maxWind}" /> mph
</c:if>   
        
<div id="map"></div>

<script>

	function initMap() {
    	var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 4,
        center: new google.maps.LatLng(30, -50),
        mapTypeId: 'hybrid'
    });
	var image = 'https://storage.googleapis.com/support-kms-prod/SNP_2752125_en_v0';

//this next section adds markers, if desired
/* var image2 = new google.maps.MarkerImage(image, null, 
    // The origin for this image is 0,0.
    new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    new google.maps.Point(5, 4)
);
        var marker = new google.maps.Marker({
          position: {lat: 13.3, lng: - 23.6},
          map: map,
          title: 'Obs 1',
	  icon: image2
        });
        var marker = new google.maps.Marker({
          position: {lat: 13.8, lng: - 24.8},
          map: map,
          title: 'Obs 2',
	  icon: image2
        });
        var marker = new google.maps.Marker({
          position: {lat: 14.1, lng: - 25.9},
          map: map,
          title: 'Obs 3',
	  icon: image2
        });
        var marker = new google.maps.Marker({
          position: {lat: 56.6, lng: - 29.0},
          map: map,
          title: 'Obs 4',
	  icon: image2
        });
        var marker = new google.maps.Marker({
          position: {lat: 30.0, lng: - 75.5},
          map: map,
          title: 'Obs 5',
	  icon: image2
        });
        var marker = new google.maps.Marker({
          position: {lat: 17.8, lng: - 58.2},
          map: map,
          title: 'Obs 6',
	  icon: image2
        }); */

//         var lat = "${latpath}"; 
//        	var lon = "${lonpath}"; 
 		var TrakCoord = [];
//         TrakCoord = lat;

        var latCoord = [];
        <c:forEach items="${latpath}" var="id">
            latCoord.push("${id}"); 
        </c:forEach>
        
        var arrayLength = latCoord.length;
        var lonCoord = [];
        <c:forEach items="${lonpath}" var="id">
            lonCoord.push("${id}"); 
        </c:forEach>

 		var x = 0;
 		var lat = 0;
 		var lon = 0;
        while(x < arrayLength){
        	lat = parseFloat(latCoord[x]);
        	lng = 0 - parseFloat(lonCoord[x]);
            var pos = new google.maps.LatLng(lat, lng);
        	TrakCoord.push(pos);
   //     	TrakCoord.push("{ lat: "+ latCoord[x]+", lng: "+lonCoord[x] +" },");
        	console.log(lat +" "+ lng);
        	x++;
        	}      
//        alert(latCoord[x] + " " + lonCoord[x] + " (types: " + (typeof latCoord[x]) + ", " + (typeof lonCoord[x]) + ", " + (typeof marker)+ ")")
/*       TrakCoord = [
{lat: 13.3, lng: - 23.6},
{lat: 13.8, lng: - 24.8},
{lat: 14.1, lng: - 25.9},
{lat: 14.3, lng: - 27.1},
{lat: 14.6, lng: - 28.3},
{lat: 14.7, lng: - 29.6},
{lat: 14.9, lng: - 31.7},
{lat: 15.0, lng: - 33.8}
];  */


        var flightPath = new google.maps.Polyline({
          path: TrakCoord,
          geodesic: true,
          strokeColor: '#FF0000',
          strokeOpacity: 1.0,
          strokeWeight: 3
        });

        flightPath.setMap(map);

      }
    </script>
 
 <script
  src="https://maps.googleapis.com/maps/api/js?v=3&amp;key=AIzaSyDVdct_1gQqgA4pmKEBuo9YWSUoMARZpfw&callback=initMap">

    </script>
</body>
</html>