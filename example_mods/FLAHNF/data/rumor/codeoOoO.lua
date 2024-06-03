local songStarted = false;
function onCreatePost()
    makeLuaSprite("blackscreen", "black", 0, 0)
    scaleObject("blackscreen", 10, 5)
    setObjectCamera("blackscreen", "camHud")
    makeAnimatedLuaSprite("stab", "jackcord", 1250, -220)
    addAnimationByPrefix("stab", "stab", "jackcord stab", 24, false)
end
function onCreate()
	makeAnimatedLuaSprite('ratscene', 'ratscene', 0, 0)
	addAnimationByPrefix('ratscene', 'ratscene', 'anim', 24, false)
	objectPlayAnimation('ratscene', 'anim')
	runTimer("videostart", 1)
end
function onStepHit()
    if curStep == 1776 then
        addLuaSprite("stab")
        objectPlayAnimation("stab", "stab")
    end
    if curStep == 1792 then
        addLuaSprite("blackscreen")
    end
    if curStep == 1795 then
        doTweenAlpha("blackscreengone", "blackscreen", 0, 3, "linear")
    end
	if curStep == 2656 then
        removeLuaSprite("stab")
	end
end

function onTweenCompleted(tag)
    if tag == "blackscreengone" then
        removeLuaSprite("blackscreen", true)
    end
end
function onTimerCompleted(tag)
	if tag == 'videostart' then
		songStarted = true
		allowCountdown = true
	end
end