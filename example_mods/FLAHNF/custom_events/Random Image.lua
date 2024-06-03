function onCreate()
    makeLuaSprite("blackspace", null, 0, 0)
    makeGraphic("blackspace", 1280, 720, '000000')
    setProperty("blackspace.alpha", 0)
    setObjectCamera("blackspace", 'other')
    addLuaSprite("blackspace", true)

    makeLuaSprite("image1", "randomimg/image1", 0, 0)
    setProperty("image1.antialiasing", false)
    screenCenter("image1", 'xy')
    setObjectCamera("image1", 'other')
    addLuaSprite("image1", true)

    makeLuaSprite("image2", "randomimg/image2", 0, 0)
    setProperty("image2.antialiasing", false)
    screenCenter("image2", 'xy')
    setObjectCamera("image2", 'other')
    addLuaSprite("image2", true)

    makeLuaSprite("image3", "randomimg/image3", 0, 0)
    setProperty("image3.antialiasing", false)
    screenCenter("image3", 'xy')
    setObjectCamera("image3", 'other')
    addLuaSprite("image3", true)

    makeLuaSprite("image4", "randomimg/image4", 0, 0)
    setProperty("image4.antialiasing", false)
    screenCenter("image4", 'xy')
    setObjectCamera("image4", 'other')
    addLuaSprite("image4", true)

    makeLuaSprite("image5", "randomimg/image5", 0, 0)
    setProperty("image5.antialiasing", false)
    screenCenter("image5", 'xy')
    setObjectCamera("image5", 'other')
    addLuaSprite("image5", true)

    makeLuaSprite("image6", "randomimg/image6", 0, 0)
    setProperty("image6.antialiasing", false)
    screenCenter("image6", 'xy')
    setObjectCamera("image6", 'other')
    addLuaSprite("image6", true)

    makeLuaSprite("image7", "randomimg/image7", 0, 0)
    setProperty("image7.antialiasing", false)
    screenCenter("image7", 'xy')
    setObjectCamera("image7", 'other')
    addLuaSprite("image7", true)

    setProperty("image1.alpha", 0)
    setProperty("image2.alpha", 0)
    setProperty("image3.alpha", 0)
    setProperty("image4.alpha", 0)
    setProperty("image5.alpha", 0)
    setProperty("image6.alpha", 0)
    setProperty("image7.alpha", 0)
end

function onEvent(n, v1, v2)
    if n == "Random Image" then
        if v1 == "1" then
            setProperty("blackspace.alpha", 1)
            setProperty("image" ..v1.. '.alpha', 1)
            setProperty("image" ..v2.. '.alpha', 0)
        elseif v1 == "2" then
            setProperty("blackspace.alpha", 1)
            setProperty("image" ..v1.. '.alpha', 1)
            setProperty("image" ..v2.. '.alpha', 0)
        elseif v1 == "3" then
            setProperty("blackspace.alpha", 1)
            setProperty("image" ..v1.. '.alpha', 1)
            setProperty("image" ..v2.. '.alpha', 0)
        elseif v1 == "4" then
            setProperty("blackspace.alpha", 1)
            setProperty("image" ..v1.. '.alpha', 1)
            setProperty("image" ..v2.. '.alpha', 0)
        elseif v1 == "5" then
            setProperty("blackspace.alpha", 1)
            setProperty("image" ..v1.. '.alpha', 1)
            setProperty("image" ..v2.. '.alpha', 0)
        elseif v1 == "6" then
            setProperty("blackspace.alpha", 1)
            setProperty("image" ..v1.. '.alpha', 1)
            setProperty("image" ..v2.. '.alpha', 0)
        elseif v1 == "7" then
            setProperty("blackspace.alpha", 1)
            setProperty("image" ..v1.. '.alpha', 1)
            setProperty("image" ..v2.. '.alpha', 0)
        elseif v1 == "nope" then
            setProperty("blackspace.alpha", 0)
            setProperty("image" ..v2.. '.alpha', 0)
        end
    end
end