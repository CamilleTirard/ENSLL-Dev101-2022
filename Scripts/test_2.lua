-- Show Selected Tracks Name
-- Camille Tirard
-- V 1
-- 13/06/2022

function print(i)
  reaper.ShowConsoleMsg(tostring(i).."\n")
end

--function showTrackNumber()
  --local i = reaper.CountTracks()
  --return i
--end



--function showSelectedTracksNumber()

  --local i = reaper.CountSelectedTracks()
  
  --for j = 0, i-1 do
  
    --local u = reaper.GetSelectedTrack(0,j)
    --local _, name = reaper.GetTrackName(u)
    --print(name)
    
  --end
    
  --return "nombre de pistes séléctionnées : "..i
  
--end

--print(showSelectedTracksNumber())


-- Fader Unity
-- Camille Tirard
-- V 1
-- 13/06/2022

--local i = reaper.CountTracks()

--for j = 0, i-1 do
  --local name = reaper.GetTrack(0, j)
  --reaper.SetMediaTrackInfo_Value(name, "D_VOL", 1)  
--end

local i = reaper.CountSelectedTracks()

for j = 0, i-1 do
  local name = reaper.GetSelectedTrack(0, j)
  local vol = reaper.GetMediaTrackInfo_Value(name, "D_VOL")
  reaper.SetMediaTrackInfo_Value(name, "D_VOL", vol*0.708)
end 
