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

for _, holder_type in pairs(holders) do
    for _, entity in pairs(data.raw[holder_type] or {}) do
        if entity.module_specification then
            entity.module_specification.module_categories = entity.module_specification.module_categories or {}
            if not table_contains(entity.module_specification.module_categories, "omega-module") then
                table.insert(entity.module_specification.module_categories, "omega-module")
            end
        end

        if entity.allowed_module_categories then
            if not table_contains(entity.allowed_module_categories, "omega-module") then
                table.insert(entity.allowed_module_categories, "omega-module")
            end
        end
    end
end