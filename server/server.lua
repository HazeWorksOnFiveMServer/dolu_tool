lib.callback.register('dmt:getPlayerLocations', function()
    local func, err = load(LoadResourceFile(GetCurrentResourceName(), 'data/locations.lua'), 'locations', 't')
    assert(func, err == nil or '\n^1' .. err .. '^7')
    return func()
end)