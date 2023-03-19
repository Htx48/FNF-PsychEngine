local defaultNotePos = {}
local spin = 2 -- how much it moves before going the other direction
 
function onSongStart()
    for i = 0, 7 do
        defaultNotePos[i] = {
            getPropertyFromGroup('strumLineNotes', i, 'x'),
            getPropertyFromGroup('strumLineNotes', i, 'y')
        }
    end
end

function onUpdate(elapsed)
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 1000 --How long it will take.
    
    if curStep >= 1288 and curStep < 1544 then
        setProperty("camHUD.angle", spin * math.sin(songPos))
    end
    
    if curStep == 5000 then 
        setProperty("camHUD.angle", 0)
    end
end