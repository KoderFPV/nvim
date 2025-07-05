local links = {
  ls = "http://spj.productionmanager.local:3000/dashboard",
  lz = "http://zoo.productionmanager.local:3000/dashboard",
  bs = "https://spj.app-eko.tech/dashboard",
  bz = "https://zoo.app-eko.tech/dashboard",
}

vim.keymap.set("n", "<Leader><Leader>ls", function() vim.ui.open(links.ls) end, { desc = "Local Spj" })
vim.keymap.set("n", "<Leader><Leader>lz", function() vim.ui.open(links.lz) end, { desc = "Local zoo" })

vim.keymap.set("n", "<Leader><Leader>bs", function() vim.ui.open(links.bs) end, { desc = "Beta Spj" })
vim.keymap.set("n", "<Leader><Leader>bz", function() vim.ui.open(links.bz) end, { desc = "Beta zoo" })
