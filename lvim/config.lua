-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Plugins
lvim.plugins = {
    { "szw/vim-maximizer" },
    { "mbbill/undotree" },
    { "catppuccin/nvim" },
    { "christoomey/vim-tmux-navigator" },
}

require("lvim.lsp.null-ls.formatters").setup({ { exe = "black", filetypes = { "python" } } })
-- require("lvim.lsp.manager").setup("matlab_ls", { single_file_support = true })
vim.g.tmux_navigator_no_mappings = 1

-- Options
lvim.colorscheme = "catppuccin"

lvim.format_on_save = true

vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.breakindent = true
vim.opt.smartindent = true

vim.opt.scrolloff = 12
vim.opt.wrap = true
vim.opt.colorcolumn = "80"

vim.opt.timeout = true
vim.opt.timeoutlen = 500
vim.opt.updatetime = 50

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/lvim/undodir"
vim.opt.undofile = true

-- Keymaps in lvim
lvim.builtin.which_key.mappings["m"] = { "<cmd>MaximizerToggle<cr>", "Maximise toggle" }
lvim.builtin.which_key.mappings["u"] = { "<cmd>UndotreeToggle<cr>", "Undotree" }
lvim.builtin.which_key.mappings["sb"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Buffer" }
lvim.builtin.which_key.mappings["sT"] = { "<cmd>Telescope<cr>", "Telescope" }
lvim.builtin.which_key.mappings["s:"] = { "<cmd>Telescope command_history<cr>", "Command history" }
lvim.builtin.which_key.mappings["]"] = { "<cmd>bnext<cr>", "Next buffer" }
lvim.builtin.which_key.mappings["["] = { "<cmd>bprevious<cr>", "Previous buffer" }
lvim.builtin.which_key.mappings["v"] = { "<cmd>wincmd v<cr>", "Split vertically" }
lvim.builtin.which_key.mappings["x"] = { "<cmd>wincmd s<cr>", "Split horizontally" }

lvim.keys.normal_mode["<c-d>"] = "<c-d>zz"
lvim.keys.normal_mode["<c-u>"] = "<c-u>zz"
lvim.keys.normal_mode["n"] = "nzzzv"
lvim.keys.normal_mode["N"] = "Nzzzv"
lvim.keys.normal_mode["J"] = "mzJ`z"
lvim.keys.normal_mode["s"] = "<cmd>set invspell<cr>"
lvim.keys.normal_mode["j"] = "gj"
lvim.keys.normal_mode["k"] = "gk"
lvim.keys.normal_mode["0"] = "g0"
lvim.keys.normal_mode["$"] = "g$"

lvim.keys.normal_mode["<c-h>"] = "<cmd>TmuxNavigateLeft<cr>"
lvim.keys.normal_mode["<c-j>"] = "<cmd>TmuxNavigateDown<cr>"
lvim.keys.normal_mode["<c-k>"] = "<cmd>TmuxNavigateUp<cr>"
lvim.keys.normal_mode["<c-l>"] = "<cmd>TmuxNavigateRight<cr>"

-- Keymaps in nvim
vim.keymap.set("v", "J", ":m \'>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m \'<-2<cr>gv=gv")
vim.keymap.set("v", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>D", "\"_D")
vim.keymap.set("i", "<c-h>", "<left>")
vim.keymap.set("i", "<c-j>", "<down>")
vim.keymap.set("i", "<c-k>", "<up>")
vim.keymap.set("i", "<c-l>", "<right>")
