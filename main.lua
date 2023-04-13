*.rb linguist-language=Lua

iGN = input.getNumber
iGB = input.getBool
tI = table.insert
tR = table.remove
oSN = output.setNumber
oSB = output.setBool

reference={}

tiltForward={}
tiltLeft={}
tiltUp={}
verticalSpeed={}
altitude={}
airspeed={}
heading={}
throttle={}
pitch={}
roll={}
yaw={}
gpsX={}
gpsY={}
autopilot={}
stall={}

function onTick()
    recording = iGB(1)
    i_tiltForward = iGN(1)
    i_tiltLeft = iGN(2)
    i_tiltUp = iGN(3)
    i_verticalSpeed = iGN(4)
    i_altitude = iGN(5)
    i_airspeed = iGN(6)
    i_heading = iGN(7)
    i_throttle = iGN(8)
    i_pitch = iGN(9)
    i_roll = iGN(10)
    i_yaw = iGN(11)
    i_gpsX = iGN(12)
    i_gpsY = iGN(13)
    i_autopilot = iGB(2)
    i_stall = iGB(3)
    
    readPoint = iGN(32)
    
    if (recording) then
    tI(reference,1,1)	
    	
    tI(tiltForward,1,i_tiltForward)
    tI(tiltLeft,1,i_tiltLeft)
    tI(tiltUp,1,i_tiltUp)
    tI(verticalSpeed,1,i_verticalSpeed)
    tI(altitude,1,i_altitude)
    tI(airspeed,1,i_airspeed)
    tI(heading,1,i_heading)
    tI(throttle,1,i_throttle)
    tI(pitch,1,i_pitch)
    tI(roll,1,i_roll)
    tI(yaw,1,i_yaw)
    tI(gpsX,1,i_gpsX)
    tI(gpsY,1,i_gpsY)
    tI(autopilot,1,i_autopilot)
    tI(stall,1,i_stall)
	else
	oSN(1,tiltForward[readPoint])
	oSN(2,tiltLeft[readPoint])
	oSN(3,tiltUp[readPoint])
	oSN(4,verticalSpeed[readPoint])
	oSN(5,altitude[readPoint])
	oSN(6,airspeed[readPoint])
	oSN(7,heading[readPoint])
	oSN(8,throttle[readPoint])
	oSN(9,pitch[readPoint])
	oSN(10,roll[readPoint])
	oSN(11,yaw[readPoint])
	oSN(12,gpsX[readPoint])
	oSN(13,gpsY[readPoint])
	
	oSB(2,autopilot[readpoint])
	oSB(3,stall[readpoint])
	end
    
    
    if #reference>3600 then
    	tR(reference,3601)
    	
    	tR(tiltForward,3601)
    	tR(tiltLeft,3601)
    	tR(tiltUp,3601)
    	tR(altitude,3601)
    	tR(airspeed,3601)
    	tR(heading,3601)
    	tR(throttle,3601)
    	tR(pitch,3601)
    	tR(roll,3601)
    	tR(yaw,3601)
    	tR(gpsX,3601)
    	tR(gpsY,3601)
    	tR(autopilot,3601)
    	tR(stall,3601)
	end

end

