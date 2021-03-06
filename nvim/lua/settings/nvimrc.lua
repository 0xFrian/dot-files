local options = {
    -- File Configuration
    fileencoding = "utf-8",         -- file encoding
    backup = false,                 -- creates backup file
    writebackup = false,            -- enable different programs from editing the same file simultaneously
    swapfile = false,               -- creates swap file
    -- Clipboard
    clipboard = "unnamedplus",      -- access to system clipboard
    -- Search Settings
    ignorecase = true,              -- ignore case in search patterns
    smartcase = true,               -- enables case-sensitive when user types capitals
    hlsearch = true,                -- highlight all mathces on previous search pattern
    -- Vim UI/Menu Settings
    showtabline = 2,                -- display tabs (top)
    showmode = false,               -- display current Vim mode
    cmdheight = 2,                  -- more space for NeoVim command line to display messages (bottom)
    pumheight = 10,                 -- pop-up menu height
    signcolumn = "yes",             -- display sign column
    number = true,                  -- display line numbers
    numberwidth = 2,                -- set number column width
    wrap = false,                   -- wrapping for long lines of text
    -- Split Window Settings
    splitbelow = true,              -- force horizontal splits to open below current window
    splitright = true,              -- force vertical splits to open to the right of current window
    -- Time Settings
    -- timeoutlen = 100,               -- time to wait for a mapped sequence to complete (in milliseconds)
    -- ttimeoutlen = 0,
    updatetime = 300,               -- faster completion (default: 400ms)
    -- Tab Settings
    expandtab = true,               -- convert tabs to spaces
    autoindent = true,
    smartindent = true,             -- auto-indentation
    shiftwidth = 4,                 -- number of spaces inserted for each indentation
    tabstop = 4,                    -- number of spaces inserted for each tab
    softtabstop = 4,
    -- Scroll Settings
    scrolloff = 2,                  -- lines to trigger scrolling up/downn
    sidescrolloff = 3,              -- characters to trigger scrolling left/right
    -- Cursor Settings
    cursorline = true,              -- highlight current line
    cursorcolumn = true,            -- highlight current column
    -- Misc 
    termguicolors = true,           -- enable colors
    conceallevel = 0,               -- makes `` visible in Markdown files
    mouse = "a",                    -- enables mouse in Vim
    -- undofile = true,                -- preserve undo history from previous sessions
}

vim.opt.shortmess:append "c"

for key, value in pairs(options) do
    vim.opt[key] = value
end

-- Adjust indent according to file type
vim.cmd('filetype plugin indent on')
vim.cmd('au BufReadPost *.ejs set syntax=html')

-- Wrap cursor to prev/next line
-- vim.cmd "set whichwrap+=<,>,[,],h,l"

