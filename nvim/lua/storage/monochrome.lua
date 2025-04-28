return {
    "kdheepak/monochrome.nvim",
    lazy = false,
    priority = 1000,
    init = function()
        vim.cmd.colorscheme("monochrome")
        vim.cmd 'highlight colorcolumn guibg=#191919'
    end,
}
