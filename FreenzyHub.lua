local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

Fluent:Notify({ Title = "Freenzy", Content = "Obrigado por usar o meu script!" })

local Window = Fluent:CreateWindow({
    Title = "FreenzyHB " .. Fluent.Version,
    TabWidth = 160, Size = UDim2.fromOffset(580, 460), Theme = "Dark"
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

Tabs.Main:AddParagraph({ Title = "Freenzy", Content = "Só para ter algo aqui mesmo" })

Tabs.Main:AddButton({ Title = "Infinite jump", Callback = function() 
loadstring(game:HttpGet("https://pastebin.com/raw/Q0F1njnh"))()
 end })

Tabs.Main:AddButton({ Title = "FE gui bypass", Callback = function() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/gc0lXploiter/g00lXploiter/main/Fe%20bypass"))()
 end })
 
 Tabs.Main:AddButton({ Title = "GhostHub", Callback = function() 
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
 end })

Tabs.Main:AddButton({ Title = "FTAP", Callback = function() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/BlizTBr/scripts/main/FTAP.lua"))()
 end })

Tabs.Main:AddButton({ Title = "CYE", Callback = function() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Freenzy-69/Scripts/refs/heads/main/script"))()
 end })

Tabs.Main:AddButton({ Title = "Inf yield", Callback = function() 
loadstring(game:HttpGet('https://pastebin.com/raw/MjBzRjmT'))()
 end })


Tabs.Main:AddButton({ Title = "Ro-Xploit", Callback = function() 
loadstring(game:HttpGet(('https://raw.githubusercontent.com/rusello/scripts/main/Ro-Xploit'),true))()
 end })


Tabs.Main:AddButton({ Title = "TW-hub", Callback = function() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/hannes12334/Roblox-scripts/refs/heads/main/TW-Hub%20V2%20NEW.txt"))()
 end })


Tabs.Main:AddButton({ Title = "Touch to fling", Callback = function() 
loadstring(game:HttpGet("https://pastefy.app/JGCKyB0C/raw"))()
 end })


Tabs.Main:AddButton({ Title = "Scripts(Se estiver errado, eu mudo o nome depois", Callback = function() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Freenzy-69/Scripts/refs/heads/main/FE%20bypass"))()
 end })


Tabs.Main:AddButton({ Title = "OP Destroyer Hub", Callback = function() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Freenzy-69/Scripts/refs/heads/main/OP%20destroyer%20Hub"))()
 end })


Tabs.Main:AddButton({ Title = "Ultra X Hub", Callback = function() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Freenzy-69/Scripts/refs/heads/main/Ultra%20x%20hub"))()
 end })


Tabs.Main:AddButton({ Title = "C00lGui", Callback = function() 
loadstring(game:HttpGet("loadstring(game:GetObjects("rbxassetid://11801763945")[1].Source)()"))()"))()
 end })


Tabs.Main:AddButton({ Title = "PrisonLife", Callback = function() 
loadstring(game:HttpGet("loadstring(game:HttpGet('https://raw.githubusercontent.com/devguy100/PrizzLife/main/Source/release_v0.8.1.lua'))()"))()"))()
 end })
