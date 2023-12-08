-- utf8
vim.g.encoding="UTF-8"
vim.o.fileencoding="utf-8"

-- jk移动上下保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- 使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true

-- 高亮所在行
vim.wo.cursorline = true

-- 显式左侧图标指示列
vim.wo.signcolumn = "yes"

-- 右侧参考线，超过表示代码过长
vim.wo.colorcolumn = "80"

-- 缩进4个空格等于一个tab
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.softtabstop = 2
vim.o.shiftround = true

-- >> << 移动长度
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

-- 新行对齐当前行，空格代替tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 搜索大小写不敏感，除非包含大小写
vim.o.ignorecase = true
vim.o.smartcase = true

-- 搜索不要高亮
vim.o.hlsearch = false

-- 边输入边搜索
vim.o.incsearch = true

-- 使用增强状态栏后不再需要vim的模式提示
vim.o.showmode = false

-- 命令行高为2，提供足够空间展示
vim.o.cmdheight = 2

-- 文件被外部程序修改后，自动加载
vim.o.autoread = true
vim.bo.autoread = true

-- 禁止折行
vim.o.wrap = false
vim.wo.wrap = false

-- 行尾可以跳到下一行
vim.o.whichwrap = 'b,s,<,>,[,],h,l'

-- 允许隐藏被修改过的buffer
vim.o.hidden = true

-- 鼠标支持
vim.o.mouse = "a"

-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- smaller updatetime
vim.o.updatetime = 300

-- timeoutlen 连击时间
-- vim.o.timeoutlen = 200

-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true

-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"

-- 样式
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true

-- 不可见字符，显示点
vim.o.list = true
vim.o.listchars = "space:·"

-- 补全增强
vim.o.wildmenu = true

-- always show tabline
vim.o.showtabline = 2


-- file tree setting
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- termguicolors hightligh groups
vim.opt.termguicolors = true

