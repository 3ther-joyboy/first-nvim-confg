local tl = require("telescope.builtin")
vim.keymap.set("n","<leader>ff",tl.find_files, {})
vim.keymap.set("n","<leader>M",tl.marks)
vim.keymap.set("n","<leader>fb",":Telescope file_browser<CR>")

require("telescope").setup {
  extensions = {
    file_browser = {
	  hidden = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },

  },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"
