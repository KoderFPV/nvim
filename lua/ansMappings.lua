local localProductPages = {
  acom = "http://beta-pl.ans-local:4000/p/tommy-jeans-koszula-13014",
  aro = "http://beta-ro.ans-local:4000/p/vero-moda-palton-56348",
  medpl = "http://beta-pl.med-local:4000/p/bluzka-linen-biala-101",
  ppl = "http://beta-pl.prm-local:4000/pl/p/vans-skarpetki-3-pack-8252",
}

vim.keymap.set("n", "<Leader><Leader>a", "", { desc = "Answear" })
vim.keymap.set("n", "<Leader><Leader>m", "", { desc = "Medicine" })
vim.keymap.set("n", "<Leader><Leader>p", "", { desc = "Prm" })

vim.keymap.set("n", "<Leader><Leader>al", "", { desc = "Local" })
vim.keymap.set("n", "<Leader><Leader>ml", "", { desc = "Local" })
vim.keymap.set("n", "<Leader><Leader>pl", "", { desc = "Local" })

vim.keymap.set("n", "<Leader><Leader>alp", "", { desc = "COM" })
vim.keymap.set("n", "<Leader><Leader>alr", "", { desc = "RO" })
vim.keymap.set("n", "<Leader><Leader>mlp", "", { desc = "PL" })
vim.keymap.set("n", "<Leader><Leader>plp", "", { desc = "PL" })

vim.keymap.set("n", "<Leader><Leader>alpp", function() vim.ui.open(localProductPages.acom) end, { desc = "Product" })
vim.keymap.set("n", "<Leader><Leader>alrp", function() vim.ui.open(localProductPages.aro) end, { desc = "Product" })
vim.keymap.set("n", "<Leader><Leader>mlpp", function() vim.ui.open(localProductPages.medpl) end, { desc = "Product" })
vim.keymap.set("n", "<Leader><Leader>plpp", function() vim.ui.open(localProductPages.ppl) end, { desc = "Product" })
