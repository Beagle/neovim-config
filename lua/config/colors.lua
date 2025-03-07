------------
-- colors --
------------

-- import colorscheme
require("tokyonight").setup({
    style = "night",

    ----------------------------------------------------------
    -- Customize colors
    -- See more at https://github.com/folke/tokyonight.nvim
    ----------------------------------------------------------
    on_colors = function(colors)
        colors.bg_statusline = colors.bg_dark1
    end,
    on_highlights = function(hl, colors)
        hl.LineNr = { bg = "#444444" , fg = colors.black }
        hl.ColorColumn = { bg = colors.black }
    end,
})

vim.cmd.colorscheme("tokyonight") -- specify colorscheme to use

vim.cmd([[autocmd FileType gitcommit call matchadd('Error', '\%1l\%>50v')]])
