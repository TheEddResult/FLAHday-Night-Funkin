function onEvent(eventName, value1, value2)
    if eventName == 'zoombeat' then
        doTweenZoom("beat2", "camGame", value1, 0.001, "linear")
        doTweenZoom("beatdone2", "camGame", value2, 0.6, "backOut")
    end
end   