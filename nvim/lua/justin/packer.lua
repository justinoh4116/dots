-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

use{
    'tanvirtin/monokai.nvim',
    as = 'monokai',
    config = function()
        vim.cmd('colorscheme monokai')
    end
}

use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    --                        or, branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
}

use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

use {
    'altermo/ultimate-autopair.nvim',
    event={'InsertEnter','CmdlineEnter'},
    config=function ()
        require('ultimate-autopair').setup({
            --Config goes here
        })
    end,
}

use { 'ms-jpq/coq_nvim', branch = 'coq' } 
use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
use { 'ms-jpq/coq.thirdparty', branch = '3p' }

use 'eandrju/cellular-automaton.nvim'

end)

