local hudBopIntensity = 0;
local bopShit = false

function onEvent(eventName, value1, value2)
    if eventName == 'zoomonbeat' then
	
        if value1 == '' then
            bopShit = false
		else
            bopShit = true
        end
		
		if value2 == '' then
			hudBopIntensity = 1.2
		else
			hudBopIntensity = tonumber(value2)
		end
		
    end
end

function onBeatHit()
    if bopShit == true then
        doTweenZoom("beat", "camGame", hudBopIntensity, 0.001, "linear")
        doTweenZoom("beatdone", "camGame", defaultZoom, 0.8, "backOut")
    end
end