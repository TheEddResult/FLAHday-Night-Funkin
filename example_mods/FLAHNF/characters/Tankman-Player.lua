function onUpdate()
 	if keyJustPressed('space') then
		characterPlayAnim('boyfriend', 'Ugh', true);
		setProperty('boyfriend.specialAnim', true);
		playSound('Tankman taunt', 0.8); --plays the "Ugh" SFX, put this  "--"  before 'playsound' to disable, the numbers are the volume, max volume is 1.0.
    end
    --secondary taunt
    if keyJustPressed('back') then
		characterPlayAnim('boyfriend', 'heh', true);
		setProperty('boyfriend.specialAnim', true);
		playSound('Tankman taunt 2', 1.0); --plays the "Pretty Good!" SFX, put this "--" before 'playsound' to disable, the numbers are the volume, max volume is 1.0.
    end
end

--function onCreate()
    --precacheSound('Hey!'); --Optional too, precaches the sound, just in case lol, maybe the SFX can lag the game if the file is too big idk.
--end


    --if keyJustPressed('space') == true and getProperty('boyfriend.idleSuffix') ~= '-alt' then
        --characterPlayAnim('boyfriend', 'hey', false);
        --setProperty('boyfriend.specialAnim', true);
        --playSound('Hey!', 0.3);
   -- end 
   --alternate code, if you don't want the taunts to be spamable, taken from the uberkids psych port from NateTDOM.