-- Event notes hooks
function onEvent(name, value1, value2)
    local songResume = songLength - getSongPosition()
    local var string = (value1)
    local var length = tonumber(0 + value2)
    if name == "Lyrics Opp Side" then

        makeLuaText('yappin', 'Lyrics go here!', 900, 50, 500)
        setTextString('yappin',  '' .. string)
        setTextFont('yappin', 'vcr.ttf')
        setTextColor('yappin', 'FF0000')
        setTextSize('yappin', 25);
        addLuaText('yappin')
        setTextAlignment('yappin', 'center')
        setObjectCamera("yappin", 'hud');
        runTimer('lyricalTho', length, 1)
        --removeLuaText('yappin', true)
        changeDiscordPresence("Lyrics for " .. songName, value1, "", songLength, songResume)
        
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'lyricalTho' then
        removeLuaText('yappin', true)
    end
end