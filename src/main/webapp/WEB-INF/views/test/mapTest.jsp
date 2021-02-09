<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=65260d296e8ed5eef137e08569a15b63"></script>
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
	
</head>
<body>
<div id="map" style="width:500px;height:400px;"></div>
<script>
	var container = document.getElementById('map');
	var options = { 
		center: new kakao.maps.LatLng(37.480830842281215, 126.88223412134987),
		level: 3
	};
	
	var map = new kakao.maps.Map(container, options);
	
	var mapTypeControl = new kakao.maps.MapTypeControl();
	
	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
	
	var zoomControl = new kakao.maps.ZoomControl();
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
</script>
	
</body>
</html>