return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			vim.opt.termguicolors = true
			require("bufferline").setup({
        vim.keymap.set('n', '<leader><BS>', ':bdelete <CR>'),
        vim.keymap.set('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>'),
        vim.keymap.set('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>'),
        vim.keymap.set('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>'),
        vim.keymap.set('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>'),
        vim.keymap.set('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>'),
      })
		end,
	},
}
