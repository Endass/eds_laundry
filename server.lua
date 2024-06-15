RegisterNetEvent('laundering:carry_item')
AddEventHandler('laundering:carry_item', function(_source, amount)
    local amount = amount
    local source = source
    if exports.ox_inventory:GetItemCount(source, 'black_money') >= amount then
        TriggerClientEvent('laundering:progress_bar', source, amount)
    else
        TriggerClientEvent('laundering:not_enough_money', source)
    end
end)


RegisterNetEvent('laundering:complete')
AddEventHandler('laundering:complete', function(amount)
    local amount = amount
    local source = source
    TriggerClientEvent('laundering:finished', source)
    exports.ox_inventory:RemoveItem(source, 'black_money', amount)
    local got_amount = amount * Config.FianalMultipler
    local got_amount = math.floor(got_amount+0.5)
    exports.ox_inventory:AddItem(source, 'money', got_amount)

end)
