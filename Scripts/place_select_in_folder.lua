-- place selected tracks in a folder (multicanal)
-- Camille Tirard
-- V1
-- 14/06/2022


function print(i)
  
  reaper.ShowConsoleMsg(tostring(i))
  
end

function reorder()

-- partie qui compte le max de channel dans les pistes
-- selectionnees, pour que le folder ait le meme nombre de pistes

  local selTrack = reaper.CountSelectedTracks()
  local maxChan = 2
  for k = 0, selTrack-1 do 
    local tr = reaper.GetSelectedTrack(0, k)
    local nChan = reaper.GetMediaTrackInfo_Value(tr,"I_NCHAN")
    if nChan > maxChan then
  
      maxChan = nChan
    end
  
  end
  
  local trackID = reaper.GetSelectedTrack(0, 0)
  if trackID then -- si on ne met pas cette ligne et
            -- qu'on ne selectionne
            -- pas de piste = message d'erreur
    local j = reaper.GetMediaTrackInfo_Value(trackID,"IP_TRACKNUMBER")
    reaper.InsertTrackAtIndex(j-1, true)
   
    --beforeTrack = j - 1
    local track = reaper.GetTrack(0, j-1)
    
    reaper.SetMediaTrackInfo_Value(track, "I_NCHAN", maxChan)
    reaper.ReorderSelectedTracks(j, 1)
  end

end

reorder()
