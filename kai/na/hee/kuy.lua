--[[Kaitun]]--
local placeId = game.PlaceId
if placeId == 537413528 then
    BABFT = true
end

if BABFT then
    repeat wait() until game:IsLoaded()
	if getgenv().Setting then else
        getgenv().Setting = {
            ["Kaitun"] = false
        }
    end
end

if getgenv().Setting["Kaitun"] == true then

function normalfarm()
    while _G.FarmMoney do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.1480827, 65.9903183, 825.942993,
            -0.999984741, 0.000596735394, -0.00549316173, 4.81166842e-11, 0.994151235, 0.107997037, 0.00552547909,
            0.107995383, -0.994136035)
        wait(.1)
        Tween1(CFrame.new(-48.3229675, 34.0048294, 8803.8125, -0.999902487, 0.00068842771, 0.0139483986, -1.12289102e-10,
            0.998784244, -0.0492953248, -0.0139653767, -0.0492905192, -0.99868685))
        wait(22)
        Tween1(CFrame.new(-55.5586624, -359.302094, 9495.74512, -0.931606233, 5.3427005e-09, -0.363469124, 2.83643757e-08,
            1, -5.80014294e-08, 0.363469124, -6.43440643e-08, -0.931606233))
        wait(3)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.5586624, -359.302094, 9495.74512,
            -0.931606233, 5.3427005e-09, -0.363469124, 2.83643757e-08, 1, -5.80014294e-08, 0.363469124, -6.43440643e-08,
            -0.931606233)
        wait(20)
    end
end

function Gold()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.1480827, 65.9903183, 825.942993,
        -0.999984741, 0.000596735394, -0.00549316173, 4.81166842e-11, 0.994151235, 0.107997037, 0.00552547909,
        0.107995383, -0.994136035)
    wait(.1)
    Tween2(CFrame.new(-48.3229675, 34.0048294, 8803.8125, -0.999902487, 0.00068842771, 0.0139483986, -1.12289102e-10,
        0.998784244, -0.0492953248, -0.0139653767, -0.0492905192, -0.99868685))
    wait(2.3)
    Tween2(CFrame.new(-55.5586624, -359.302094, 9495.74512, -0.931606233, 5.3427005e-09, -0.363469124, 2.83643757e-08, 1,
        -5.80014294e-08, 0.363469124, -6.43440643e-08, -0.931606233))
    wait(20)
end

local DiscordLib = loadstring(game:HttpGet "https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("Build A Boat For Treasure | Kaitun Edition")

local Kaitun = win:Server("Tab1", "rbxassetid://12974189594")
local Toggle = Kaitun:Channel("Kaitun")
Toggle:Seperator()
Toggle:Toggle("Start", false, function(Value)
_G.FarmMoney = Value
    if _G.FarmMoney then
        local decalsyeeted = true   -- Leaving this on makes games look shitty but the fps goes up by at least 20.
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        sethiddenproperty(l, "Technology", 2)
        sethiddenproperty(t, "Decoration", false)
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = 0
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(w:GetDescendants()) do
            if v:IsA("BasePart") and not v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("MeshPart") and decalsyeeted then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            elseif v:IsA("SpecialMesh") and decalsyeeted then
                v.TextureId = 0
            elseif v:IsA("ShirtGraphic") and decalsyeeted then
                v.Graphic = 0
            elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
                v[v.ClassName .. "Template"] = 0
            end
        end
        for i = 1, #l:GetChildren() do
            e = l:GetChildren()[i]
            if
                e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or
                e:IsA("BloomEffect") or
                e:IsA("DepthOfFieldEffect")
            then
                e.Enabled = false
            end
        end
        w.DescendantAdded:Connect(
            function(v)
                wait()
                --prevent errors and shit
                if v:IsA("BasePart") and not v:IsA("MeshPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v.Enabled = false
                elseif v:IsA("MeshPart") and decalsyeeted then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    v.TextureID = 10385902758728957
                elseif v:IsA("SpecialMesh") and decalsyeeted then
                    v.TextureId = 0
                elseif v:IsA("ShirtGraphic") and decalsyeeted then
                    v.ShirtGraphic = 0
                elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then
                    v[v.ClassName .. "Template"] = 0
                end
            end)
        while task.wait() do
            if game:GetService("Players").LocalPlayer.Data.Gold.Value <= 10000 then
                normalfarm()
            elseif game:GetService("Players").LocalPlayer.Data.Gold.Value >= 10000 then
                Gold()
            end
        end
        while _G.FarmMoney do
            game:GetService("VirtualUser"):CaptureController()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
            wait(5)
        end
    end
end)
Toggle:Seperator()
--------------------------------------------[[Misc]]--------------------------------------------
local A = "And Money 10000+ Then AutoFarm Gold"
Toggle:Label("it AutoBuy All Tool," .. A)
--------------------------------------------[[Tween]]--------------------------------------------

function Tween1(P)
    Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    speed = 370
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / speed, Enum.EasingStyle.Linear), { CFrame = P }):Play()
end

function Tween2(P)
    Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    speed = 3500
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / speed, Enum.EasingStyle.Linear), { CFrame = P }):Play()
end

--------------------------------------------[[AutoBuy]]--------------------------------------------

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.FarmMoney then
                while _G.FarmMoney do
                    task.wait()
                    workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer("Painting Tool", 1)
                    workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer("Binding Tool", 1)
                    workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer("Property Tool", 1)
                    workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer("Scaling Tool", 1)
                    workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer("Trowel Tool", 1)
                end
            end
        end)
    end
end)

--------------------------------------------[[Noclip]]--------------------------------------------

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.FarmMoney then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(1000000, 1000000, 1000000)
                    Noclip.Velocity = Vector3.new(0, 0, 0)
                    Noclip.CanCollide = false
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end)
    end
end)
coroutine.wrap(function()
    while task.wait() do
         pcall(function()
              if _G.AutoFarm then
                   for _, character in ipairs(game.Players:GetPlayers()) do
                        if character and character.Character then
                             for _, part in ipairs(character.Character:GetDescendants()) do
                                  if part:IsA("BasePart") then
                                  part.CanCollide = false
                                  end
                             end
                        end
                   end
              end
         end)
    end
end)()
elseif getgenv().Setting["Kaitun"] == false then
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/buslate/Build-A-Boat-For-Treasure/main/Build%20A%20Boat%20V.2.lua"), true))()
end
