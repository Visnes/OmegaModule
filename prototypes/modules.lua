local pollution_enabled = settings.startup["omega-module-pollution"].value

local omega_module_prototypes = {
  {
    name = "omega-module",
    effects = { speed = 0.20, consumption = -0.30, productivity = 0.04, quality = 0.1, pollution = pollution_enabled and 0.01 or 0 },
    tier = 1
  },
  {
    name = "omega-module-2",
    effects = { speed = 0.30, consumption = -0.40, productivity = 0.06, quality = 0.2, pollution = pollution_enabled and 0.025 or 0 },
    tier = 2
  },
  {
    name = "omega-module-3",
    effects = { speed = 0.50, consumption = -0.50, productivity = 0.10, quality = 0.25, pollution = pollution_enabled and 0.05 or 0 },
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
