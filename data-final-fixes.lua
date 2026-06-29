local holders = {
    "assembling-machine",
    "mining-drill",
    "furnace",
    "beacon",
    "biochamber",
    "foundry"
}

local function table_contains(tbl, val)
    for _, v in pairs(tbl) do
        if v == val then return true end
    end
    return false
end

-- In 2.0, module slots/categories live directly on the prototype (the 1.1-era
-- module_specification is gone). A machine with no allowed_module_categories
-- already allows every category, so the omega-module category works there for
-- free. We only need to whitelist machines that explicitly restrict categories
-- (e.g. other mods), and even then insertion is still gated by allowed_effects
-- (notably beacons reject productivity/quality, so omega modules can't go in
-- beacons regardless of this).
for _, holder_type in pairs(holders) do
    for _, entity in pairs(data.raw[holder_type] or {}) do
        if entity.allowed_module_categories then
            if not table_contains(entity.allowed_module_categories, "omega-module") then
                table.insert(entity.allowed_module_categories, "omega-module")
            end
        end
    end
end