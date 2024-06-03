local songStarted = false;

function onCreate()

	makeAnimatedLuaSprite('ratscene', 'ratscene', 0, 0)
	addAnimationByPrefix('ratscene', 'ratscene anim', 24, true)
    makeLuaSprite("forest", "foresting", 0, -1)
    setProperty("forest.antialiasing", false)
    setObjectCamera("forest", 'hud')
    addLuaSprite("forest", true)
    makeLuaSprite("blackvoid", null, 0, 0)
    makeGraphic("blackvoid", 1280, 720, '000000')
    setObjectCamera("blackvoid", 'other')
    addLuaSprite("blackvoid", false)
end

function onUpdate()
    setProperty("camZooming", false)
    triggerEvent("Camera Follow Pos", 640, 360)

    setProperty("iconP1.visible", true)
    setProperty("iconP2.visible", true)
    setProperty("healthBar.visible", true)
    setProperty("scoreTxt.visible", true)
    setProperty("boyfriend.visible", true)
    setProperty("timeBar.visible", true)
    setProperty("timeTxt.visible", true)

    for i = 0, 3 do
        noteTweenX('noteMoveDad' .. i, i, _G['defaultOpponentStrumX' .. i] - 5000, 0.1, 'linear');
    end 
end

function onCreatePost()
    if getPropertyFromClass('backend.ClientPrefs', 'data.shaders') == true then
        makeLuaSprite('lowquality')
        makeGraphic('lowquality', screenWidth, screenHeight, '000000')
        initLuaShader('lowquality', 140)
        setSpriteShader('lowquality', 'lowquality')
        addHaxeLibrary('ShaderFilter', 'openfl.filters');
        runHaxeCode([[
            game.camHUD.setFilters([new ShaderFilter(game.getLuaObject('lowquality').shader)]);
            game.camGame.setFilters([new ShaderFilter(game.getLuaObject('lowquality').shader)]);
            game.camOther.setFilters([new ShaderFilter(game.getLuaObject('lowquality').shader)]);
        ]])
    end

    runTimer('songStart', 2)
    runTimer("videostart", 1.7)
end

function onUpdatePost(elapsed)
    if getPropertyFromClass('backend.ClientPrefs', 'data.shaders') == true then
        setShaderFloat('lowquality', 'iTime', os.clock())
    end
    if curBeat == 205 then
        doTweenAlpha("byebyecamgame", "camGame", 0, 0.5, "linear")
    end
end

function onSongStart()
    setProperty("blackvoid.alpha", 0, false)
	 objectPlayAnimation('ratscene', 'anim', 24, true)
	playSound("Audio")
end

function onEndSong()
    setProperty("blackvoid.alpha", 1, false)
end

function onStartCountdown()
	if not songStarted then
		return Function_Stop
	end
    return Function_Continue
end

function onTimerCompleted(tag)
	if tag == 'songStart' then
		songStarted = true
		startCountdown()
	end
end
