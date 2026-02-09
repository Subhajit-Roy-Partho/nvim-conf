# nvim-conf

Personal Neovim configuration based on Kickstart, using `lazy.nvim` and a plugin set focused on LSP, completion, Telescope, Git, debugging, terminal workflows, and markdown writing.

## Install

```bash
git clone https://github.com/Subhajit-Roy-Partho/nvim-conf.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
nvim
```

On first start, plugins are installed automatically by `lazy.nvim`.

## What This Config Includes

## Core editor behavior
- Leader key: `<Space>`
- Line numbers, mouse support, persistent undo, smart case search
- Clipboard integration (`unnamedplus`)
- Split defaults: right/below
- Visible whitespace, cursorline, scrolloff
- Yank highlight autocmd

## Navigation and file management
- `nvim-tree` file explorer
- `telescope` fuzzy finder + `telescope-fzf-native` + UI select extension
- Buffer navigation and bufferline cycling
- Hop-based quick jumps (`HopWord`, `HopLine`, `HopChar1`)

## LSP, completion, formatting, linting
- LSP stack: `nvim-lspconfig`, `mason.nvim`, `mason-lspconfig`, `mason-tool-installer`
- Configured language servers:
  - `clangd`, `pyright`, `lua_ls`, `rust_analyzer`
- Completion stack:
  - `nvim-cmp`, `LuaSnip`, `cmp-nvim-lsp`, `cmp-path`, `cmp_luasnip`, `friendly-snippets`
- Formatting:
  - `conform.nvim` with formatters per filetype (Lua/JSON/HTML/Markdown/Python/Rust)
- Linting:
  - `nvim-lint` (hooks configured, default linters mostly left open/customizable)

## Git and project workflow
- `gitsigns.nvim` with hunk navigation/actions
- `lazygit.nvim` integration (`<leader>lg`)
- TODO comment highlighting (`todo-comments.nvim`)

## Debugging
- `nvim-dap`, `nvim-dap-ui`, `mason-nvim-dap`
- JavaScript/TypeScript debugging support is intentionally disabled

## UI and writing tools
- Theme: `vague.nvim` (Catppuccin also configured)
- `which-key.nvim`, `lualine.nvim`, `bufferline.nvim`
- `zen-mode.nvim`
- Markdown helpers: `bullets.vim`, `wrapwidth`, indent guides
- Typst preview: `typst-preview.nvim`

## Keymaps

## Core keymaps
- `<C-s>`: save current buffer (`:w`)
- `<C-S>`: save current buffer (`:w`) (existing compatibility mapping)
- `<C-q>`: force quit (`:q!`)
- `<C-b>`: toggle NvimTree
- `<Esc>`: clear search highlight
- `<Esc><Esc>` (terminal mode): leave terminal to normal mode

## Window and buffer
- `<C-h> <C-j> <C-k> <C-l>`: move between splits
- `<M-h> <M-j> <M-k> <M-l>`: alt-based split navigation
- `<leader>wd`: close current window
- `<leader>w-` / `<leader>w|`: split horizontal/vertical
- `[b` / `]b`: previous/next buffer
- `[B` / `]B`: first/last buffer
- `<C-Tab>` / `<C-S-Tab>`: bufferline next/previous
- `<leader>x`: delete buffer

## Search (Telescope)
- `<leader>sf`: find files
- `<leader>sg`: live grep
- `<leader>sw`: grep word under cursor
- `<leader>sd`: diagnostics
- `<leader>sr`: resume last picker
- `<leader>sk`: keymaps
- `<leader>sh`: help tags
- `<leader>/`: fuzzy search current buffer
- `<leader>sn`: search Neovim config files

## LSP keymaps (on LSP attach)
- `gd`, `gr`, `gI`, `gD`: definition/references/implementation/declaration
- `gpd`, `gps`, `gpi`: plain LSP jumps without Telescope
- `<leader>rn`: rename
- `<leader>ca`: code action
- `K`: hover
- `<C-k>`: signature help
- `[d` / `]d`: diagnostic prev/next
- `<leader>dl`: diagnostics loclist
- `<leader>f`: format

## Git keymaps
- `]c` / `[c`: next/previous hunk
- `<leader>hs`, `<leader>hr`: stage/reset hunk
- `<leader>hS`, `<leader>hR`: stage/reset buffer
- `<leader>hp`: preview hunk
- `<leader>hb`: blame line
- `<leader>hd`, `<leader>hD`: diff views
- `<leader>lg`: open LazyGit

## Debug keymaps
- `<F5>`: continue/start
- `<F1>`: step into
- `<F2>`: step over
- `<F3>`: step out
- `<F7>`: toggle DAP UI
- `<leader>b`: toggle breakpoint
- `<leader>B`: conditional breakpoint

## Terminal
- `<C-`>`: toggle horizontal terminal (`toggleterm`)
- `<A-i>`: toggle floating terminal (`FTerm`)

## Libraries / Plugins

Installed plugin set is pinned in `lazy-lock.json`. Main libraries include:

- Plugin manager:
  - `folke/lazy.nvim`
- LSP and tooling:
  - `neovim/nvim-lspconfig`
  - `williamboman/mason.nvim`
  - `williamboman/mason-lspconfig.nvim`
  - `WhoIsSethDaniel/mason-tool-installer.nvim`
  - `j-hui/fidget.nvim`
  - `nvimdev/lspsaga.nvim`
  - `ray-x/lsp_signature.nvim`
  - `aznhe21/actions-preview.nvim`
- Completion/snippets:
  - `hrsh7th/nvim-cmp`
  - `L3MON4D3/LuaSnip`
  - `saadparwaiz1/cmp_luasnip`
  - `hrsh7th/cmp-nvim-lsp`
  - `hrsh7th/cmp-path`
  - `rafamadriz/friendly-snippets`
- Formatting/linting:
  - `stevearc/conform.nvim`
  - `mfussenegger/nvim-lint`
- Treesitter/editing:
  - `nvim-treesitter/nvim-treesitter`
  - `windwp/nvim-autopairs`
  - `windwp/nvim-ts-autotag`
  - `echasnovski/mini.nvim`
  - `mg979/vim-visual-multi`
  - `tpope/vim-sleuth`
- Navigation/files/search:
  - `nvim-tree/nvim-tree.lua`
  - `nvim-neo-tree/neo-tree.nvim`
  - `nvim-telescope/telescope.nvim`
  - `nvim-telescope/telescope-fzf-native.nvim`
  - `nvim-telescope/telescope-ui-select.nvim`
  - `phaazon/hop.nvim`
- Git/debug/terminal:
  - `lewis6991/gitsigns.nvim`
  - `kdheepak/lazygit.nvim`
  - `mfussenegger/nvim-dap`
  - `rcarriga/nvim-dap-ui`
  - `jay-babu/mason-nvim-dap.nvim`
  - `akinsho/toggleterm.nvim`
  - `numToStr/FTerm.nvim`
- UI/theme:
  - `vague-theme/vague.nvim`
  - `catppuccin/nvim`
  - `nvim-lualine/lualine.nvim`
  - `akinsho/bufferline.nvim`
  - `folke/which-key.nvim`
  - `folke/zen-mode.nvim`
  - `lukas-reineke/indent-blankline.nvim`
- Writing/typst:
  - `bullets-vim/bullets.vim`
  - `rickhowe/wrapwidth`
  - `chomosuke/typst-preview.nvim`

## Non-root setup checklist

Run these first:

```bash
mamba install -y -c conda-forge git make unzip ripgrep fd-find fzf cmake ninja nodejs
mamba install -y -c conda-forge lazygit typst
```

If a package is not available in your environment:
1. Check modules: `module avail <name>` then `module load <name>`.
2. Use user-local install (`npm`, `pip --user`, or local binary in `~/.local/bin`).

Useful checks:

```bash
nvim --headless "+checkhealth" +qa
nvim --headless "+Lazy! sync" +qa
```

## Notes
- `Ctrl` combinations can be intercepted by terminal/tmux; if `<C-s>` does not work, disable terminal flow control (`stty -ixon`) and/or update terminal key handling.
- Mason-managed LSP/format/debug tools are installed under Neovim data dir and do not require root.
