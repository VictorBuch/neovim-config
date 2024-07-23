local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Navigate buffers
keymap.set("n", "<S-l>", ":tabnext<CR>", opts)
keymap.set("n", "<S-h>", ":tabprevious<CR>", opts)

-- Close current buffer
keymap.set("n", "<S-q>", ":bd!<CR>", opts)

-- Better Paste
keymap.set("v", "p", '"_dP', opts)

-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Better paste
keymap.set("v", "p", '"_dP', opts)

-- Insert --
-- Press jk fast to enter
keymap.set("i", "jk", "<ESC>", opts)
keymap.set("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Visual Block --
-- Move text up and down
keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Telescope
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, opts)
keymap.set("n", "<leader>fg", builtin.live_grep, opts)
keymap.set("n", "<leader>fr", builtin.oldfiles, opts)
keymap.set("n", "<leader>fb", builtin.buffers, opts)

-- Neotree
keymap.set("n", "<leader>e", ":Neotree filesystem toggle left <CR>", opts)

-- LSP
keymap.set("n", "K", vim.lsp.buf.hover, opts) -- Show information under cursor
keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- Show information under cursor
keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- Show information under cursor

-- None-ls (formatter/ linting)
keymap.set("n", "<leader>gf", vim.lsp.buf.format, opts)
