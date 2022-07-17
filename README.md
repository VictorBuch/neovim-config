we need to install python support (node is optional)

- Neovim python support

  ```sh
  pip install pynvim
  ```

- Neovim node support

  ```sh
  npm i -g neovim
  ```

We will also need `ripgrep` for Telescope to work:

- Ripgrep

  ```sh
  sudo apt install ripgrep
  ```

---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).

## Fonts

I recommend using the following repo to get a "Nerd Font" (Font that supports icons)

[getnf](https://github.com/ronniedroid/getnf)

## Configuration

### LSP

To add a new LSP

First Enter:

```
:LspInstallInfo
```

and press `i` on the Language Server you wish to install

Next you will need to add the server to this list: [servers](https://github.com/LunarVim/nvim-basic-ide/blob/8b9ec3bffe8c8577042baf07c75408532a733fea/lua/user/lsp/lsp-installer.lua#L6)

### Formatters and linters

Make sure the formatter or linter is installed and add it to this setup function: [null-ls](https://github.com/LunarVim/nvim-basic-ide/blob/8b9ec3bffe8c8577042baf07c75408532a733fea/lua/user/lsp/null-ls.lua#L13)

**NOTE** Some are already setup as examples, remove them if you want

### Plugins

You can install new plugins here: [plugins](https://github.com/LunarVim/nvim-basic-ide/blob/8b9ec3bffe8c8577042baf07c75408532a733fea/lua/user/plugins.lua#L42)

---

## Plugins

- [packer](https://github.com/wbthomason/packer.nvim)
- [plenary](https://github.com/nvim-lua/plenary.nvim)
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [vim-bbye](https://github.com/moll/vim-bbye)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [impatient.nvim](https://github.com/lewis6991/impatient.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [alpha-nvim](https://github.com/goolord/alpha-nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [cmp-path](https://github.com/hrsh7th/cmp-path)
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer)
- [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)

---
