local hook
hook = hookmetamethod(game, "__namecall", function(obj, ...)
    local method = getnamecallmethod()
    local args = {...}
    
    if not checkcaller() then
        if method == "FireServer" and type(args[1]) == "table" and rawget(args[1], "report") then
            return
        end
    end

    return hook(obj, ...)
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
