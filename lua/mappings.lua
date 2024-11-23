-- Show fn interface
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

-- Jumps to the declaration of the symbol under the cursor.
-- vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

-- Jumps to the definition of the symbol under the cursor.
vim.keymap.set("n", "gd", function(ev)
  local opts = { buffer = ev.buf }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
end)

-- recommended mappings
-- resizing splits
-- these keymaps will also accept a range,
-- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
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
-- swapping buffers between windows
vim.keymap.set("n", "<leader><leader>h", require("smart-splits").swap_buf_left)
vim.keymap.set("n", "<leader><leader>j", require("smart-splits").swap_buf_down)
vim.keymap.set("n", "<leader><leader>k", require("smart-splits").swap_buf_up)
vim.keymap.set("n", "<leader><leader>l", require("smart-splits").swap_buf_right)
