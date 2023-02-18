local esx = exports['es_extended']:getSharedObject()
local itemsLabels = {}

Citizen.CreateThread(function()
    while esx.GetPlayerData().job == nil do
        Citizen.Wait(500)
    end
    esx.PlayerData = esx.GetPlayerData()
    TriggerServerEvent('maku_crafting:server:requestItemsLabels')
    on()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    esx.PlayerData.job = job
end)

function openCrafting(crafting)
    local details = Craftings[crafting]
    local elements = {}
    for i, v in ipairs(details.Items) do
        table.insert(elements, {
            label = GetMenuElementPrefix(v, 30, 30) .. Recipes[v].Title,
            value = v
        })
    end
    esx.UI.Menu.Open('default', GetCurrentResourceName(), 'crafting', {
        title = 'Výroba',
        align = 'top-right',
        elements = elements
    }, function(data, menu)
        local val = data.current.value
        TriggerServerEvent('maku_crafting:server:requestRecipe', val)
        menu.close()
    end, function(data, menu)
        menu.close()
    end)
end

function openRecipeMenu(recipe, canCraft)
    local details = Recipes[recipe]
    local elements = {}
    local canCraftFully = true
    if details.Requirements.money then
        local suffix = " (<span style='color: lightgreen;'>Dostatek</span>)"
        if not canCraft['money'] then
            canCraftFully = false
            suffix = " (<span style='color: rgb(254, 93, 93);'>Nedostatek</span>)"
        end
        table.insert(elements, {
            label = GetMenuElementPrefix('money', 30, 30) .. details.Requirements.money .. '$' .. suffix,
            value = 'money'
        })
    end
    if details.Requirements.items then
        for k, v in pairs(details.Requirements.items) do
            local suffix = " (<span style='color: lightgreen;'>Dostatek</span>)"
            if not canCraft[k] then
                canCraftFully = false
                suffix = " (<span style='color: rgb(254, 93, 93);'>Nedostatek</span>)"
            end
            table.insert(elements, {
                label = GetMenuElementPrefix(k, 30, 30) .. v .. 'x ' .. itemsLabels[k] .. suffix,
                value = k
            })
        end
    end
    table.insert(elements, {
        label = "<span style='color: lightgreen;'>Vyrobit</span>",
        value = 'craft'
    })
    esx.UI.Menu.Open('default', GetCurrentResourceName(), 'recipe', {
        title = GetMenuElementPrefix(recipe, 40, 40) .. details.Title,
        align = 'top-right',
        elements = elements
    }, function(data, menu)
        local val = data.current.value
        if val == 'craft' then
            if canCraftFully then
                TriggerServerEvent('maku_crafting:server:craftItem', recipe)
                menu.close()
            else
                esx.ShowNotification('Nemáš dostatek surovin!', 'error')
            end
        end
    end, function(data, menu)
        menu.close()
    end)
end

function on()
    Citizen.CreateThread(function()
        while true do
            local wait = true
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)
            for k, v in pairs(Craftings) do
                local distance = #(playerCoords - v.Location)
                if distance < 1.5 then
                    wait = false
                    if esx.PlayerData.job.name == v.Job.Name and esx.PlayerData.job.grade >= v.Job.Grade then
                        DrawText3D(v.Location, v.Text)
                        if IsControlJustReleased(0, 38) then
                            openCrafting(k)
                        end
                    end
                end
            end
            if wait then
                Citizen.Wait(500)
            else
                Citizen.Wait(0)
                wait = true
            end
        end
    end)
end

function DrawText3D(coords, text)
    SetTextScale(0.22, 0.22)
    SetTextFont(13)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry('STRING')
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(coords.x, coords.y, coords.z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0 + 0.0125, 0.015 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

RegisterNetEvent('maku_crafting:client:receiveRecipe', function(canCraft, recipe)
    openRecipeMenu(recipe, canCraft)
end)

RegisterNetEvent('maku_crafting:client:receiveItemsLabels', function(items)
    itemsLabels = items
end)

function GetMenuElementPrefix(item, width, height)
    local prefix = ''
    if MenuItem.Enabled then
        prefix = "<img src='" .. MenuItem.InventoryImagePath .. item .. ".png' width='" .. width .. "' height='" ..
                     height .. "' style='margin-right: 10px; margin-bottom: -5px; margin-top: -5px;'/>"
    end
    return prefix
end
