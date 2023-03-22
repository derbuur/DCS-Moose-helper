function getRGB(color)
	local color = color or "red"
	local colorList = {["blue"] = {0,0.5,1},
		["hostile"] = {1,0,0},
		["red"] = {1,0,0},
		["friendly"] = {0,0.71,1},
		["neutral"] = {1,1,1},
		["white"] = {1,1,1},
		["black"] = {0,0,0}
		}
		
		return colorList[color]

end


function plotOrbitCircle(Coordinate, Altitude, Speed, Coalition, Color, Alpha, LineType, ReadOnly)
	local fix_coordinate = Coordinate
	local altitude = Altitude
	local speed = Speed or 350
	
	local coalition = Coalition or -1
	local color = Color or {1,0,0}
	local alpha = Alpha or 1
	local lineType = LineType or 1

	speed = UTILS.IasToTas(speed, UTILS.FeetToMeters(altitude), oatcorr)

	local turn_radius = speed/60/3.14159265359
	
	fix_coordinate:CircleToAll(UTILS.NMToMeters(turn_radius), coalition, color, alpha, nil, 0, lineType)--, ReadOnly, Text)


end