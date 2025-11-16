local omega_module_prototypes = {
  {
    name = "omega-module",
    effects = { speed = 0.20, consumption = -0.30, productivity = 0.04, quality = 0.1 },
    tier = 1
  },
  {
    name = "omega-module-2",
    effects = { speed = 0.30, consumption = -0.40, productivity = 0.06, quality = 0.2 },
    tier = 2
  },
  {
    name = "omega-module-3",
    effects = { speed = 0.50, consumption = -0.50, productivity = 0.10, quality = 0.25 },
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
        quality = mod.effects.quality
      },
      limitation = { "rocket-silo" },
      limitation_message_key = "production-module-usable-only-on-intermediates"
    }
  })
end
