return {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    init = function()
        require("onedark").setup {
             style = "darker";
        }
        require("onedark").load()
        vim.cmd "highlight colorcolumn guibg=#282C34"
    end,
}
