local speed_enabled = settings.startup["omega-module-speed"].value
local productivity_enabled = settings.startup["omega-module-productivity"].value
local consumption_enabled = settings.startup["omega-module-consumption"].value
local quality_enabled = settings.startup["omega-module-quality"].value
local pollution_enabled = settings.startup["omega-module-pollution"].value

local omega_module_prototypes = {
  {
    name = "omega-module",
    effects = {
      speed = speed_enabled and 0.20 or 0,
      consumption = consumption_enabled and -0.30 or 0,
      productivity = productivity_enabled and 0.04 or 0,
      quality = quality_enabled and 0.10 or 0,
      pollution = pollution_enabled and 0.01 or 0
    },
    tier = 1
  },
  {
    name = "omega-module-2",
    effects = {
      speed = speed_enabled and 0.30 or 0,
      consumption = consumption_enabled and -0.40 or 0,
      productivity = productivity_enabled and 0.06 or 0,
      quality = quality_enabled and 0.20 or 0,
      pollution = pollution_enabled and 0.025 or 0
    },
    tier = 2
  },
  {
    name = "omega-module-3",
    effects = {
      speed = speed_enabled and 0.50 or 0,
      consumption = consumption_enabled and -0.50 or 0,
      productivity = productivity_enabled and 0.10 or 0,
      quality = quality_enabled and 0.25 or 0,
      pollution = pollution_enabled and 0.05 or 0
    },
    tier = 3
  }
}

for _, mod in pairs(omega_module_prototypes) do
  data:extend({
    {
      type = "module",
      name = mod.name,
      icon = "__OmegaModule__/graphics/icons/" .. mod.name .. ".png",
      icon_size = 64,
      subgroup = "module",
      category = "omega-module",
      tier = mod.tier,
      order = "z[omega]-" .. mod.name,
      stack_size = 50,

      effect = {
        speed = mod.effects.speed,
        consumption = mod.effects.consumption,
        productivity = mod.effects.productivity,
        quality = mod.effects.quality,
        pollution = mod.effects.pollution
      },
    }
  })
end
