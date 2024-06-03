function onCreatePost()
	makeLuaSprite("ground", "ground", -1400, -1000)
	makeLuaSprite("Sky2", "Sky2", -1200, -500)
	addLuaSprite("ground")
	scaleObject("ground", 1.3, 1.3)
	addLuaSprite("Sky2")
	scaleObject("Sky2", 5, 5)
	setObjectOrder("Sky2", 0)
	setProperty("gf.alpha", 0)
end

function onBeatHit() 
    Createcube()
end

function Createcube()
	thespin = getRandomInt(0, 1)

    makeLuaSprite("square" .. i, "blank",getRandomInt(-screenWidth + 1000, screenWidth + 1000), defaultBoyfriendY)
    makeGraphic("square" .. i, 50, 50, '#7B328D')
    setProperty("square" .. i .. ".alpha", 0.5)
    addLuaSprite("square" .. i, true)
	getObjectOrder("square" .. i, 20)
    doTweenX("squareX" .. i, "square" .. i, getRandomInt(-screenWidth + 1000, screenWidth + 1000), 8, "linear")
    doTweenY("squareY" .. i, "square" .. i, -1200, 8, "linear")
	if thespin == 1 then
		doTweenAngle("squareAngle" .. i, "square" .. i, 360, 15, "linear")
	end

	if thespin == 0 then
		doTweenAngle("squareAngle" .. i, "square" .. i, -360, 15, "linear")
	end
    i = i + 1

end



function onTweenCompleted(tag)
	if tag == "squareY" .. L then
		removeLuaSprite("square" .. L, false)
		L = L + 1
	end
end



