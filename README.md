# nvim-conf (Minimal Fast Profile Branch)

This branch is tuned for fast startup and lightweight usage focused on:
- reading files
- writing/editing text and markdown
- navigating files quickly

## Branch
- `perf/minimal-reading-nav`

## Kept plugins (essential)
- Theme/UI: `vague.nvim`, `which-key.nvim`, `zen-mode.nvim`
- Navigation: `nvim-tree`, `telescope`, `hop.nvim`
- Editing/writing: `vim-sleuth`, `mini.ai`, `mini.surround`, `bullets.vim`, `wrapwidth`

## Removed/disabled for speed
- LSP stack (`nvim-lspconfig`, mason LSP setup)
- Completion/snippets (`nvim-cmp`, LuaSnip stack)
- Debuggers (`nvim-dap`, JS adapters)
- Formatter/linter stack (`conform.nvim`, `nvim-lint`)
- Compiler/build integrations (cmake tooling)
- Extra duplicate kickstart plugin specs

## Core shortcuts
- `<C-s>` save (`:w`)
- `<C-q>` force quit (`:q!`)
- `<C-b>` file tree toggle
- `<leader>sf` find files
- `<leader>sg` live grep
- `<leader><leader>` buffers
- `<leader>hw` / `<leader>hl` / `<leader>hc` hop navigation

## Install
```bash
git clone -b perf/minimal-reading-nav https://github.com/Subhajit-Roy-Partho/nvim-conf.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
nvim
```
