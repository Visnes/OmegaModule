-- Defined in the base data stage (not data-updates) on purpose: Space Age's
-- recycler generates the *-recycling recipes during data-updates, so our recipes
-- must already exist by then. data.lua of every mod completes before any
-- data-updates runs, so this guarantees omega modules stay recyclable. The
-- category injection that DOES need a late stage lives in data-final-fixes.lua.
require("prototypes.module-categories")
require("prototypes.modules")
require("prototypes.recipes")
require("prototypes.technology")
