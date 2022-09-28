game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Anti-Kick OwO", -- Required
	Text = "Anti-Kick Loaded UwU", -- Required
	Icon = "rbxassetid://1234567890" -- Optional
})

local metatable = getrawmetatable(game)

setreadonly(metatable, false)

local oldmt = metatable.__namecall

metatable.__namecall = newcclosure(function(Self, ...)
    local m = getnamecallmethod()
    if m == 'Kick' then
        game:GetService("StarterGui"):SetCore("SendNotification",{
        	Title = "Anti-Kick OwO", -- Required
        	Text = "Kick Prevented UwU", -- Required
        	Icon = "rbxassetid://10248997674" -- Optional
        })
        wait(9e9)
        return nil
    end
    
    return oldmt(Self, ...)
end)

setreadonly(metatable, true)
