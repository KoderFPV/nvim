local harpoon = require "harpoon"

vim.api.nvim_set_keymap(
  "n",
  "<Leader>i",
  ":lua vim.lsp.buf.hover()<CR>",
  { noremap = true, silent = true, desc = "Show info" }
)

-- LSP
vim.api.nvim_set_keymap(
  "n",
  "<Leader>lr",
  ":lua vim.lsp.buf.rename()<CR>",
  { noremap = true, silent = true, desc = "Rename refactor" }
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader>l[",
  ":lua vim.diagnostic.goto_prev()<CR>",
  { noremap = true, silent = true, desc = "Previous diagnostic" }
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader>l]",
  ":lua vim.diagnostic.goto_next()<CR>",
  { noremap = true, silent = true, desc = "Next diagnostic" }
)

vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })
-- Copilot
vim.api.nvim_set_keymap("i", "<C-D>", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false })
vim.g.copilot_no_tab_map = true

-- CopilotChat
vim.api.nvim_set_keymap(
  "n",
  "<leader>go",
  ":CopilotChatOpen<CR>",
  { noremap = true, silent = true, desc = "CopilotChat - Open in vertical split" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>gi",
  ':lua local input = vim.fn.input("Ask Copilot: "); if input ~= "" then vim.cmd("CopilotChat " .. input) end<CR>',
  { noremap = true, silent = true, desc = "CopilotChat - Ask input" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>gq",
  ':lua local input = vim.fn.input("Quick Chat: "); if input ~= "" then vim.cmd("CopilotChatBuffer " .. input) end<CR>',
  { noremap = true, silent = true, desc = "CopilotChat - Quick chat" }
)

vim.keymap.set("n", "gd", function(ev)
  local opts = { buffer = ev.buf }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
end)

vim.keymap.set("n", "<C-Left>", require("smart-splits").resize_left)
vim.keymap.set("n", "<C-Down>", require("smart-splits").resize_down)
vim.keymap.set("n", "<C-Up>", require("smart-splits").resize_up)
vim.keymap.set("n", "<C-Right>", require("smart-splits").resize_right)
-- moving between splits
vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
vim.keymap.set("n", "<C-\\>", require("smart-splits").move_cursor_previous)

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
