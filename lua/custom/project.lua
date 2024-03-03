require('telescope').load_extension('projects')

vim.keymap.set({"n", "v"}, "<leader>sp","<cmd>lua require'telescope'.extensions.projects.projects{}<cr>", { desc = "[S]earch [P]rojects", silent = true })
