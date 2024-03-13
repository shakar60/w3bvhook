--Webhook

function webhooks() 
        local Webhook_URL = "https://discord.com/api/webhooks/1217455349662220288/2L9JPdvIof0jnzeEaYDFQw_PSB6pwbEcFTXO9ekMJpPWmepYU2i0lwxefQx6SuvaCwoR"
   
        local Headers = {
            ['Content-Type'] = 'application/json',
        }
       
        local playerName = game.Players.LocalPlayer.Name
        local placeName = game.PlaceId
       
        local data = {
            ["embeds"] = {
                {
                    ["title"] = "Script Executed",
                    ["description"] = "Universal Shakars Hub Executed.",
                    ["type"] = "rich",
                    ["color"] = tonumber("0x8E44AD"), -- Deep Purple
                    ["thumbnail"] = {
                        ["url"] = "https://imgur.com/sRRNIay", -- Replace with a placeholder image URL
                    },
                    ["fields"] = {
                        {
                            ["name"] = "Executed By:",
                            ["value"] = playerName,
                            ["inline"] = true,
                        },
                        {
                            ["name"] = "Executed On",
                            ["value"] = "Map Id " .. placeName .. "!",
                            ["inline"] = true,
                        },
                
                    },
                    ["footer"] = {
                        ["text"] = "Universal Shakars Hub The Best Hub!",
                    },
                },
            },
        }
   
       
        local PlayerData = game:GetService('HttpService'):JSONEncode(data)
       
        local Request = http_request or request or HttpPost or syn.request
        Request({Url = Webhook_URL, Body = PlayerData, Method = "POST", Headers = Headers})
    end 
    webhooks()
