function onCreate()
    makeLuaSprite("blackspaces", null, 0, 0)
    makeGraphic("blackspaces", 1280, 720, '000000')
    setProperty("blackspaces.alpha", 0)
    setObjectCamera("blackspaces", 'other')
    addLuaSprite("blackspaces", true)
end

function onUpdatePost(elapsed)   
    if curBeat == 343 then
        doTweenAlpha("endsongwoo", "blackspaces", 1, 2, "linear")
    end         
end