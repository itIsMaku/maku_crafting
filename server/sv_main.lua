local esx = exports['es_extended']:getSharedObject()
local webhook = ''

RegisterNetEvent('maku_crafting:server:requestRecipe', function(recipe)
    local client = source
    local details = Recipes[recipe]
    local player = esx.GetPlayerFromId(client)
    local canCraft = {}
    if details.Requirements.money then
        if player.getMoney() >= details.Requirements.money then
            print('can ', recipe)
            canCraft['money'] = true
        else
            canCraft['money'] = false
        end
    end
    if details.Requirements.items then
        for k, v in pairs(details.Requirements.items) do
            if player.getInventoryItem(k).count >= v then
                canCraft[k] = true
            else
                canCraft[k] = false
            end
        end
    end
    TriggerClientEvent('maku_crafting:client:receiveRecipe', client, canCraft, recipe)
end)

RegisterNetEvent('maku_crafting:server:craftItem', function(recipe)
    local client = source
    local details = Recipes[recipe]
    local player = esx.GetPlayerFromId(client)
    if details.Requirements.money then
        player.removeMoney(details.Requirements.money)
    end
    if details.Requirements.items then
        for k, v in pairs(details.Requirements.items) do
            player.removeInventoryItem(k, v)
        end
    end
    player.addInventoryItem(recipe, 1)
    exports['maku_utils']:SendWebhook(webhook, 'Crafting', string.format('Item - %s', recipe), string.format(
                                          '%s vyrobal item **%s**.\n\n %s', player.oocName, recipe, player.identifier),
                                      16777111)
end)

RegisterNetEvent('maku_crafting:server:requestItemsLabels', function()
    local client = source
    local labels = {}
    for k, v in pairs(Recipes) do
        if v.Requirements['items'] then
            for name, count in pairs(v.Requirements['items']) do
                labels[name] = esx.GetItemLabel(name)
            end
        end
    end
    TriggerClientEvent('maku_crafting:client:receiveItemsLabels', client, labels)
end)
