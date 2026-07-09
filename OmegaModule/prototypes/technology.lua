local multiplier = settings.startup["omega-module-science-multiplier"] 
                   and settings.startup["omega-module-science-multiplier"].value or 1

multiplier = math.max(multiplier, 0.5)

local omega_techs = {
  {
    name = "omega-module",
    localised_name = {"technology.omega-module"},
    localised_description = {"technology.omega-module-description"},
    icon = "__OmegaModule__/graphics/technology/omega-modules.png",
    prerequisites = { "productivity-module", "speed-module", "efficiency-module", "quality-module", "space-science-pack", "planet-discovery-fulgora", "planet-discovery-gleba", "planet-discovery-vulcanus" },
    effects = { { type = "unlock-recipe", recipe = "omega-module" } },
    unit = { count = 5000, ingredients = { {"automation-science-pack",1}, {"logistic-science-pack",1}, {"chemical-science-pack",1}, {"production-science-pack",1}, {"space-science-pack",1}, {"metallurgic-science-pack",1}, {"electromagnetic-science-pack",1}, {"agricultural-science-pack",1} }, time = 60 },
    order = "y-a1"
  },
  {
    name = "omega-module-2",
    localised_name = {"technology.omega-module-2"},
    localised_description = {"technology.omega-module-2-description"},
    icon = "__OmegaModule__/graphics/technology/omega-modules-2.png",
    prerequisites = { "productivity-module-2", "speed-module-2", "efficiency-module-2", "quality-module-2", "omega-module", "planet-discovery-aquilo" },
    effects = { { type = "unlock-recipe", recipe = "omega-module-2" } },
    unit = { count = 10000, ingredients = { {"automation-science-pack",1}, {"logistic-science-pack",1}, {"chemical-science-pack",1}, {"production-science-pack",1}, {"space-science-pack",1}, {"metallurgic-science-pack",1}, {"electromagnetic-science-pack",1}, {"agricultural-science-pack",1}, {"cryogenic-science-pack",1} }, time = 60 },
    order = "y-a2"
  },
  {
    name = "omega-module-3",
    localised_name = {"technology.omega-module-3"},
    localised_description = {"technology.omega-module-3-description"},
    icon = "__OmegaModule__/graphics/technology/omega-modules-3.png",
    prerequisites = { "productivity-module-3", "speed-module-3", "efficiency-module-3", "quality-module-3", "omega-module-2", "captivity" },
    effects = { { type = "unlock-recipe", recipe = "omega-module-3" } },
    unit = { count = 50000, ingredients = { {"automation-science-pack",1}, {"logistic-science-pack",1}, {"chemical-science-pack",1}, {"production-science-pack",1}, {"space-science-pack",1}, {"metallurgic-science-pack",1}, {"electromagnetic-science-pack",1}, {"agricultural-science-pack",1}, {"cryogenic-science-pack",1}, {"promethium-science-pack",1} }, time = 60 },
    order = "y-a3"
  }
}

for _, t in pairs(omega_techs) do
  local tech = table.deepcopy(t)
  tech.unit.count = tech.unit.count * multiplier

  data:extend({
    {
      type = "technology",
      name = tech.name,
      localised_name = tech.localised_name,
      localised_description = tech.localised_description,
      icon = tech.icon,
      icon_size = 128,
      prerequisites = tech.prerequisites,
      effects = tech.effects,
      unit = tech.unit,
      order = tech.order
    }
  })
end