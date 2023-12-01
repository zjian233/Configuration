local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '

-- require("lazy").setup({
--     { 'rose-pine/neovim', name = 'rose-pine' }
-- })

-- 主题
require("lazy").setup({

    -- 主题
    { 'navarasu/onedark.nvim', name = 'one-dark' },

    -- 文件树
    { "nvim-tree/nvim-tree.lua", name = "nvim-tree" },
    { "nvim-tree/nvim-web-devicons", name = "nvim-web-devicons" },

    -- lsp
    { "neovim/nvim-lspconfig", name = "lspconfig" },

    -- nvim-cmp
    { 'hrsh7th/cmp-nvim-lsp', name = "cmp-nvim-lsp" },
    { 'hrsh7th/cmp-buffer', name = "cmp-buffer" },
    { 'hrsh7th/cmp-path', name = "cmp-path" },
    { 'hrsh7th/cmp-cmdline', name = "cmp-cmdline" },
    { 'hrsh7th/nvim-cmp', name = "nvim-cmp" },

    -- snip
    { 'hrsh7th/cmp-vsnip', name = "cmp-vsnip" },
    { 'hrsh7th/vim-vsnip', name = "vim-vsnip" }

})

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    hijack_cursor = true,
    -- open_on_setup = false,
    -- open_on_setup_file = true,
    -- ignore_buffer_on_setup = true,
    system_open = {
        cmd = "open",
    },
    view = {
        width = 5,
        adaptive_size = true,
    },
    renderer = {
        group_empty = true,
        icons = {
            show = {
                git = true,
                file = true,
                folder = true,
                folder_arrow = true,
            },
            glyphs = {
                bookmark = " ",
                folder = {
                    arrow_closed = "⏵",
                    arrow_open = "⏷",
                },
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "⌥",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "⊖",
                    ignored = "◌",
                },
            },
        },
    },
    filters = {
        dotfiles = false,
    },
})

require'nvim-web-devicons'.setup {
 -- globally enable different highlight colors per icon (default to true)
 -- if set to false all icons will have the default icon's color
    color_icons = true;
    -- globally enable default icons (default to false)
    -- will get overriden by `get_icons` option
    default = true;
    -- globally enable "strict" selection of icons - icon will be looked up in
    -- different tables, first by filename, and if not found by extension; this
    -- prevents cases when file doesn't have any extension but still gets some icon
    -- because its name happened to match some extension (default to false)
    strict = true;
    -- same as `override` but specifically for overrides by filename
    -- takes effect when `strict` is true
    override_by_filename = {
        [".gitignore"] = {
            icon = "",
            color = "#f1502f",
            name = "Gitignore"
        }
    };
}
require('nvim-cmp')
-- require('lspconfig').tsserver.setup{}



