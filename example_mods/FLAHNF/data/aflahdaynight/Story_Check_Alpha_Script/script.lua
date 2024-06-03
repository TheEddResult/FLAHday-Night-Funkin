function onCreate()
    makeLuaSprite('bg', 0, 0);
    makeGraphic('bg', 1280, 720, '000000');
    setObjectCamera('bg', 'other');

    makeLuaText('text', "Disclaimer: this is an extremely early build of the mod FLAHday Night Funkin'. Pretty much EVERYTHING is subject to change. Press Accept to continue.", 1000, 0, 0)
	setTextSize('text', 35)
    setObjectCamera('text', 'other');
    screenCenter('text');
    
    addLuaSprite('bg', false);
    addLuaText('text', false);
end
function onUpdate(elapsed)
    if keyJustPressed('accept') then
        if not allowCountdown then
            allowCountdown = true;
            playSound('confirmMenu', 0.7);
            doTweenAlpha('bg', 'bg', 0, 1, 'linear');
            doTweenAlpha('text', 'text', 0, 1, 'linear');
            setProperty('gf.stunned', false);
            setProperty('dad.stunned', false);
            setProperty('boyfriend.stunned', false);
            startCountdown();
            return Function_Continue;
        end
    end
end
function onStartCountdown()
    if not allowCountdown then
        setProperty('gf.stunned', true);
        setProperty('dad.stunned', true);
		setProperty('boyfriend.stunned', true);
		return Function_Stop;
	end
	return Function_Continue;
end