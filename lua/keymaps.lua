-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Switch '0' and '^'
vim.keymap.set({ 'n', 'v' }, '0', '^', { silent = true })
vim.keymap.set({ 'n', 'v' }, '^', '0', { silent = true })

vim.keymap.set('n', '<leader>tt', ':TransparentToggle<cr>', { desc = "toggle transparency", silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })

-- [[ Buffers ]]
vim.keymap.set('n', '<C-n>', ":bn<cr>", { desc = "[N]ext [B]uffer" })
vim.keymap.set('n', '<C-p>', ":bp<cr>", { desc = "[P]revious [Buffer" })
vim.keymap.set('n', '<leader>bn', ":bn<cr>", { desc = "[N]ext [B]uffer" })
vim.keymap.set('n', '<leader>bp', ":bp<cr>", { desc = "[P]revious [Buffer" })
vim.keymap.set('n', '<leader>bC', ":BufferCloseAllButCurrentOrPinned<cr>", { desc = "[C]lose All [B]uffers" })
vim.keymap.set('n', '<leader>bc', ":BufferClose<cr>", { desc = "[C]lose [B]uffer" })
vim.keymap.set('n', '<leader>bm', ":BufferPin<cr>", { desc = "Pin [B]uffer" })
vim.keymap.set('n', '<leader>br', ":BufferRestore<cr>", { desc = "[R]estore [B]uffer" })
vim.keymap.set('n', '<leader>bR', ":ReachOpen buffers<cr>", { desc = "[R]each [B]uffers" })
-- Order Buffers
vim.keymap.set('n', '<leader>bod', ":BufferOrderByDirectory<cr>", { desc = "[O]rder by [D]irectory" })
vim.keymap.set('n', '<leader>bol', ":BufferOrderByLanguage<cr>", { desc = "[O]rder by [L]anguage" })
vim.keymap.set('n', '<leader>bow', ":BufferOrderByWindowNumber<cr>", { desc = "[O]rder by [W]indow Number" })
vim.keymap.set('n', '<leader>bob', ":BufferOrderByBufferNumber<cr>", { desc = "[O]rder by [B]uffer Number" })

vim.keymap.set('n', '<leader>l', ':Lazy<cr>', { desc = "[L]azy" })

vim.keymap.set('n', '<M-x>s', ':ToggleTerm size=12<cr>', { desc = "Horizontal [S]plit", silent = true })
vim.keymap.set('n', '<M-x>v', ':ToggleTerm direction=vertical size=70<cr>', { desc = "[V]ertical Split", silent = true })
vim.keymap.set('n', '<M-x>p', ':ToggleTerm direction=float<cr>', { desc = "[P]opup Terminal", silent = true })
vim.keymap.set('n', '<M-x>t', ':ToggleTerm direction=tab<cr>', { desc = "[T]erminal", silent = true })

vim.keymap.set("n", "<leader>rr", [[:s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "[R]ename over line" })
vim.keymap.set("n", "<leader>rR", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "[R]ename over file" })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Make file executable", silent = false })

vim.keymap.set("n", "<leader>aa", "<cmd>Alpha<CR>", { desc = "Start Page", silent = true })

vim.keymap.set("n", "<M-C-n>", "<cmd>Scratch<cr>", { desc = "Scratch File", silent = true })
vim.keymap.set("n", "<M-C-o>", "<cmd>ScratchOpen<cr>", { desc = "Scratch File", silent = true })

-- document existing key chains
require('which-key').register {
  ['<leader>b'] = { name = '[B]uffers', o = "[O]rder",_ = 'which_key_ignore' },
  ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
  ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
  ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
  ['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
  ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
  ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
  ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
  ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
}
-- register which-key VISUAL mode
-- required for visual <leader>hs (hunk stage) to work
require('which-key').register({
  ['<leader>'] = { name = 'VISUAL <leader>' },
  ['<leader>h'] = { 'Git [H]unk' },
}, { mode = 'v' })
