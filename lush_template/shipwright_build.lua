-- shipwright_build.lua
local lushwright = require("shipwright.transform.lush")
local colorscheme = require("lush_template.lua.lush_theme.grace")
run(colorscheme, lushwright.to_lua, { patchwrite, "lua/grace/colorscheme.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE" })
