--call your 'Sick' animations 'singDIRECTION-alt '
--e.g. for the left anim, call it 'singLEFT-alt'

function goodNoteHit(id, direction, noteType, isSustainNote)
    if getPropertyFromGroup('notes', id, 'rating') == 'sick' and direction == 0 then
        characterPlayAnim('boyfriend','singLEFT-alt','true')
    elseif getPropertyFromGroup('notes', id, 'rating') == 'sick' and direction == 1 then
        characterPlayAnim('boyfriend','singDOWN-alt','true')
    elseif getPropertyFromGroup('notes', id, 'rating') == 'sick' and direction == 2 then
        characterPlayAnim('boyfriend','singUP-alt','true')
    elseif getPropertyFromGroup('notes', id, 'rating') == 'sick' and direction == 3 then
        characterPlayAnim('boyfriend','singRIGHT-alt','true')
	elseif getPropertyFromGroup('notes', id, 'rating') == 'good' and direction == 3 then
        characterPlayAnim('boyfriend','right beatbox','true')
	elseif getPropertyFromGroup('notes', id, 'rating') == 'good' and direction == 2 then
        characterPlayAnim('boyfriend','up beatbox','true')
	elseif getPropertyFromGroup('notes', id, 'rating') == 'good' and direction == 1 then
        characterPlayAnim('boyfriend','down beatbox','true')
	elseif getPropertyFromGroup('notes', id, 'rating') == 'good' and direction == 0 then
        characterPlayAnim('boyfriend','left beatbox','true')
    end
end