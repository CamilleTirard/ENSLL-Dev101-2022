-- Split media item under mouse at cursor
-- Camille Tirard
-- V1
-- 14/06/2022

function print(i)

  reaper.ShowConsoleMsg(tostring(i))
  
end

function split()
  local item, mouse = reaper.BR_ItemAtMouseCursor()
  if item then
    --local mouse, _ = reaper.BR_PositionAtMouseCursor(true)
    reaper.SplitMediaItem(item, mouse)
    reaper.UpdateArrange()
  end
end

split()
