-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  -- { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.typescript" },
}
