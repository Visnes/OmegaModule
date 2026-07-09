local easy = settings.startup["omega-module-easy-recipe"] 
  and settings.startup["omega-module-easy-recipe"].value

local function make_ingredient(name, amount)
  return { type = "item", name = name, amount = amount }
end

local omega_recipes = {
  {
    name = "omega-module",
    energy = 60,
    ingredients = easy and {
      make_ingredient("speed-module", 1),
      make_ingredient("efficiency-module", 1),
      make_ingredient("productivity-module", 1),
      make_ingredient("quality-module", 1),
    } or {
      make_ingredient("speed-module", 1),
      make_ingredient("efficiency-module", 1),
      make_ingredient("productivity-module", 1),
      make_ingredient("quality-module", 1),
      make_ingredient("processing-unit", 20),
      make_ingredient("tungsten-carbide", 10),
      make_ingredient("holmium-plate", 10),
      make_ingredient("bioflux", 10),
    }
  },
  {
    name = "omega-module-2",
    energy = 120,
    ingredients = easy and {
      make_ingredient("omega-module", 2),
      make_ingredient("speed-module-2", 2),
      make_ingredient("efficiency-module-2", 2),
      make_ingredient("productivity-module-2", 2),
      make_ingredient("quality-module-2", 2),
    } or {
      make_ingredient("omega-module", 2),
      make_ingredient("speed-module-2", 2),
      make_ingredient("efficiency-module-2", 2),
      make_ingredient("productivity-module-2", 2),
      make_ingredient("quality-module-2", 2),
      make_ingredient("quantum-processor", 100),
    }
  },
  {
    name = "omega-module-3",
    energy = 180,
    ingredients = easy and {
      make_ingredient("omega-module-2", 5),
      make_ingredient("speed-module-3", 5),
      make_ingredient("efficiency-module-3", 5),
      make_ingredient("productivity-module-3", 5),
      make_ingredient("quality-module-3", 5),
    } or {
      make_ingredient("omega-module-2", 10),
      make_ingredient("speed-module-3", 10),
      make_ingredient("efficiency-module-3", 10),
      make_ingredient("productivity-module-3", 10),
      make_ingredient("quality-module-3", 10),
      make_ingredient("pentapod-egg", 20),
      make_ingredient("supercapacitor", 100),
      make_ingredient("quantum-processor", 100),
      make_ingredient("tungsten-plate", 50),
    }
  }
}

for _, r in pairs(omega_recipes) do
  data:extend({
    {
      type = "recipe",
      name = r.name,
      enabled = false,
      energy_required = r.energy,
      ingredients = r.ingredients,
      results = { { type = "item", name = r.name, amount = 1 } },
      main_product = r.name,
    }
  })
end