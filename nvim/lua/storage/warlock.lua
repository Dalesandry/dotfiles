return {
    "hardselius/warlock",
    lazy = false,
    priority = 1000,
    init = function()
        vim.cmd.colorscheme("warlock")
        vim.cmd 'highlight colorcolumn guibg=#303030'
    end,
}
