class Geo
	#Convert from degrees to radians
	d2r: (degrees) -> (degrees * Math.PI)/180

	#Find a point on a circle based on center points, radius and angle
	circlePoint: (centerX, centerY, radius, angle) ->
		x = centerX + radius * Math.cos(degToRad(angle))
		y = centerY + radius * Math.sin(degToRad(angle))
		{x: x, y: y}

	areaFromRadius: (radius) ->
		Math.PI*Math.pow(radius,2)

	radiusFromArea: (area) ->
		Math.sqrt(area/Math.PI)

	#polar to downward (computer) cardinal coordinates
	p2c: (radius, angle) ->
		angleRadians = d2r(angle)
		x = radius * Math.cos(angleRadians)
		y = radius * Math.sin(angleRadians)
		{x: x, y: y}

window.Geo = Geo