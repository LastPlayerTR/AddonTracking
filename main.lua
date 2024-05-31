hook.Add("Think", "lastplayer_washere", function()
if (lastplayerbenitakipettimi) then
else
lastplayerbenitakipettimi = true
local last = print
last("AddonTracking System")
last("No more tracking go home :)")
hook.Remove("Think", "lastplayer_washere")
end
end)
