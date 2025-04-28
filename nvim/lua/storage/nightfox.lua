return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    init = function()
        if (nvimColorScheme == "nightfox") then
            vim.cmd.colorscheme("nightfox")
            vim.cmd "highlight colorcolumn guibg=#29394f"
        elseif (nvimColorScheme == "carbonfox") then
            vim.cmd.colorscheme("carbonfox")
            vim.cmd "highlight colorcolumn guibg=#353535"
        end
    end,
}
