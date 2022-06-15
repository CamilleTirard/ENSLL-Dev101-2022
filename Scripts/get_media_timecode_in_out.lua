-- get media timecode in and out
-- Camille Tirard
-- V1
-- 14/06/2022

function print(i)

  reaper.ShowConsoleMsg(tostring(i))
  
end

function timecode()

  local item = reaper.GetSelectedMediaItem(0, 0)
  local debut = reaper.GetMediaItemInfo_Value(item,"D_POSITION")
  local fin = debut + reaper.GetMediaItemInfo_Value(item, "D_LENGTH")
  
  return debut.."\n"..fin
  
end

print(timecode())
