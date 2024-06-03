-- Event notes hooks
function onEvent(name, value1, value2)
    local songResume = songLength - getSongPosition()
    local var string = (value1)
    local var length = tonumber(0 + value2)
    if name == "Lyrics Bigf Side" then

        makeLuaText('yappinb', 'Lyrics go here!', 1000, 50, 450)
        setTextString('yappinb',  '' .. string)
        setTextFont('yappinb', 'vcr.ttf')
        setTextColor('yappinb', '00FFFF')
        setTextSize('yappinb', 50);
        addLuaText('yappinb')
        setTextAlignment('yappinb', 'center')
        setObjectCamera("yappinb", 'hud');
        runTimer('lyricalThob', length, 1)
        --removeLuaText('yappinb', true)
        changeDiscordPresence("Lyrics for " .. songName, value1, "", songLength, songResume)
        
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'lyricalThob' then
        removeLuaText('yappinb', true)
    end
end