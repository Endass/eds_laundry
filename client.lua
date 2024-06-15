RegisterNetEvent('laundering:canceled', function()
    lib.notify({title = Lang.CancTitle, description = Lang.CancDesc, type = Lang.CancType})
end)

RegisterNetEvent('laundering:finished', function()
    lib.notify({title = Lang.FinlTitle, description = Lang.FinlDesc, type = Lang.FinlType})
end)


RegisterNetEvent('laundering:progress_bar')
AddEventHandler('laundering:progress_bar', function(amount)
    local amount = amount
    local duration = amount * 100
    if lib.progressBar({
        duration = duration,
        label = Lang.PrgbLabel,
        anim = {
            dict = 'missheist_agency3aig_23',
            clip = 'urinal_sink_loop',
            lockX = true,
            lockY = true,
            lockZ = true
        },
    }) then 
        TriggerServerEvent('laundering:complete', amount)
    else
        TriggerEvent('laundering:canceled')
    end
end)


RegisterNetEvent('laundering:not_enough_money', function()
    lib.notify({title = Lang.NemoTitle, description = Lang.NemoDesc, type = Lang.NemoType})
end)


RegisterNetEvent('laundering:wash', function()
    local _source = source
    local success = lib.skillCheck({'easy', 'easy'}, {'w'})
    if success then
        lib.notify({
            title = Lang.SschTitle,
            description = Lang.SschDesc,
            type = Lang.SschType
        })
        local value = lib.inputDialog(Lang.InpdTitle, {
            {type = 'number', label = Lang.InpdQues, icon = Lang.InpdIcon}
        })
        
        if input then
            lib.notify({title = 'no', description = 'no amount', type = 'error'})
        else
            local amount = json.encode(value)
            local amount = amount:gsub('[%p%c%s]', '')
            local amount = tonumber(amount)
            local _source = _source
            TriggerServerEvent('laundering:carry_item', _source, amount)
        end
    end
end)

exports.ox_target:addBoxZone({
    coords = vec3(1135.84, -992.21, 46.13),
    size = vec3(0.5, 0.2, 0.5),
    rotation = 45,
    options = {
        {
            name = "washmoney",
            icon = 'fa-solid fa-washing-machine',
            label = Lang.TgbtLabel,
            event = 'laundering:wash'
        }
    }
})

exports.ox_target:addBoxZone({
    coords = vec3(1135.67, -990.91, 46.11),
    size = vec3(0.5, 0.2, 0.5),
    rotation = 45,
    options = {
        {
            name = "washmoney",
            icon = 'fa-solid fa-washing-machine',
            label = Lang.TgbtLabel,
            event = 'laundering:wash'
        }
    }
})

exports.ox_target:addBoxZone({
    coords = vec3(1135.47, -989.49, 46.11),
    size = vec3(0.5, 0.2, 0.5),
    rotation = 45,
    options = {
        {
            name = "washmoney",
            icon = 'fa-solid fa-washing-machine',
            label = Lang.TgbtLabel,
            event = 'laundering:wash'
        }
    }
})

exports.ox_target:addBoxZone({
    coords = vec3(1135.32, -988.18, 46.11),
    size = vec3(0.3, 0.2, 0.5),
    rotation = 45,
    options = {
        {
            name = "washmoney",
            icon = 'fa-solid fa-washing-machine',
            label = Lang.TgbtLabel,
            event = 'laundering:wash'
        }
    }
})
