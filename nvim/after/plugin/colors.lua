function ColorMyFish(color)
    color = color or "monokai"
    vim.cmd.colorscheme(color)
end

ColorMyFish()
