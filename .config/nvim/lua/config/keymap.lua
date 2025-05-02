vim.keymap.set("n", "<leader>-", "<cmd>Oil --float<CR>", { desc="Open parent directory in Oil" });
vim.keymap.set("n", "<leader>gl", function () vim.diagnostic.open_float() end, { desc="Open diagnostcs in float" });
vim.keymap.set("n", "<leader>cf", function () require('conform').format() end, { desc="Format current file" });
