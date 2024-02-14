local attempt = require('attempt')
require('telescope').load_extension 'attempt'

local function map(mode, l, r, desc, opts)
    opts = opts or {}
    opts = vim.tbl_extend('force', { desc = desc, silent=true }, opts)
    vim.keymap.set(mode, l, r, opts)
end

map('n', '<leader>an', attempt.new_select, "[N]ew [A]ttempt")        -- new attempt, selecting extension
map('n', '<leader>ai', attempt.new_input_ext, "[N]ew [A]ttempt")     -- new attempt, inputing extension
map('n', '<leader>ar', attempt.run, "[R]un [A]ttempt")               -- run attempt
map('n', '<leader>ad', attempt.delete_buf, "[D]elete [A]ttempt")        -- delete attempt from current buffer
map('n', '<leader>ac', attempt.rename_buf, "Rename [A]ttempt")        -- rename attempt from current buffer
map('n', '<leader>al', ':Telescope attempt<cr>', "Te[l]escope [A]ttempt")       -- search through attempts
--or: map('n', '<leader>al', attempt.open_select) -- use ui.select instead of telescope
