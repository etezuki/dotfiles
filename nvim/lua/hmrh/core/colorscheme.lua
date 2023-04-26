-- set colorscheme to onedark with protected call
-- in case it isn't installed
-- local status, one_dark = pcall(require, "onedark")
-- if not status then
--   print("Onedark theme not found!")
--   return
-- end
--
-- one_dark.setup({
--     transparent = true,
--     style = darker,
-- })
-- one_dark.load()

-- local status, nordic = pcall(require, "nordic")
-- if not status then
--     print("Nordic theme not found")
--     return
-- end
-- nordic.load()



local status, catppuccin = pcall(require, "catppuccin")
if not status then
    print("Catppuccin theme not found")
    return
end


catppuccin.setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = true,
    dim_inactive = {
        enabled = true,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
        notify = false,
        mini = false,
        barbar = true,
        native_lsp = {
            enabled = true,
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})
vim.cmd.colorscheme "catppuccin"
