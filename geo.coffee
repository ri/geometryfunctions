class Geo
	#Convert from degrees to radians
	d2r: (degrees) -> (degrees * Math.PI)/180

	#Find a point on a circle based on center points, radius and angle
	circlePoint: (centerX, centerY, radius, angle) ->
		x = centerX + radius * Math.cos(this.d2r(angle))
		y = centerY + radius * Math.sin(this.d2r(angle))
		{x: x, y: y}

	areaFromRadius: (radius) ->
		Math.PI*Math.pow(radius,2)

	radiusFromArea: (area) ->
		Math.sqrt(area/Math.PI)

	#polar to downward (computer) cardinal coordinates
	p2c: (radius, angle) ->
		angleRadians = this.d2r(angle)
		x = radius * Math.cos(angleRadians)
		y = radius * Math.sin(angleRadians)
		{x: x, y: y}

	dist3D: (point1, point2) ->
		Math.sqrt(Math.pow(point1.x - point2.x, 2) + Math.pow(point1.y - point2.y, 2) + Math.pow(point1.z - point2.z, 2))


	distCoordToKm: (lat1, lon1, lat2, lon2) ->
		r = 6371 # Radius of the earth in km
		dLat = this.d2r(lat2-lat1)  #deg2rad below
		dLon = this.d2r(lon2-lon1) 
		a = Math.sin(dLat/2) * Math.sin(dLat/2) + Math.cos(this.d2r(lat1)) * Math.cos(this.d2r(lat2)) * Math.sin(dLon/2) * Math.sin(dLon/2)
		c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
		d = r * c # Distance in km

window.Geo = Geo