return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local wk = require("which-key")
      local builtin = require("telescope.builtin")
      wk.register({
        f = {
          name = "Telescope", -- Group name for 'f' prefix
          f = { builtin.find_files, "Find Files" },
          g = { builtin.live_grep, "Live Grep" },
          b = { builtin.buffers, "Buffers" },
          h = { builtin.help_tags, "Help Tags" },
        },
      }, { prefix = "<leader>" })

      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
