function onCreate()
	-- CHARACTER
	if boyfriendName == ("stan") then
		setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'stan');
	
	-- SOUNDS/MUSICS
		setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'DUMBASS'); --file goes inside sounds/ folder
		setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'gameOver'); --file goes inside music/ folder
		setPropertyFromClass('substates.GameOverSubstate', 'endSoundName', 'gameOverEnd'); --file goes inside music/ folder
		
	end
end