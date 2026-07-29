# My RC

Personal Neovim configuration, managed with [lazy.nvim](https://github.com/folke/lazy.nvim).

## Requirements

- **Neovim** >= 0.10 (developed on 0.11.2)
- **git**
- **A C compiler** — needed to compile Treesitter parsers. This config pins
  `CC=gcc` (see `lua/jamal/lazy_init.lua`), so on Windows you need MinGW-w64
  gcc, e.g. via [MSYS2](https://www.msys2.org/).
- **ripgrep** (`rg`) — required by Telescope's `live_grep`/`grep_string`
  pickers (`<leader>ps`, `<leader>pws`, `<leader>pWs`) and used for
  `find_files` (`<leader>pf`).
- **fd** — used by some Telescope pickers.
- **Node.js** — required by Mason to install the `ts_ls` (TypeScript)
  language server.
- **Zig toolchain** *(optional)* — only needed if you edit Zig files; enables
  the `zls` LSP handler.

## Windows setup (winget)

```powershell
winget install Neovim.Neovim
winget install Git.Git
winget install BurntSushi.ripgrep.MSVC
winget install sharkdp.fd
winget install OpenJS.NodeJS.LTS
winget install MSYS2.MSYS2
```

After MSYS2 installs, open "MSYS2 MinGW 64-bit" from the Start menu once and run:

```bash
pacman -S mingw-w64-x86_64-gcc
```

Then add MSYS2's `mingw64\bin` (default `C:\msys64\mingw64\bin`) to your
`PATH` so `gcc` is on it.

**Restart your terminal** after installing so the updated `PATH` takes effect.

## Clone

```powershell
git clone git@github.com:Croisade/neovimrc.git "$env:LOCALAPPDATA\nvim"
```

(On Linux/macOS, clone to `~/.config/nvim` instead.)

## First launch

1. Run `nvim` — [lazy.nvim](https://github.com/folke/lazy.nvim) bootstraps
   itself automatically and installs all plugins on first start.
2. Run `:Mason` and confirm `lua_ls` and `ts_ls` install cleanly (they're
   auto-installed via `mason-lspconfig.ensure_installed`).
3. Run `:TSUpdate` to compile Treesitter parsers (requires `gcc` on `PATH`).
4. Restart Neovim once more to be safe.

## Notes

- Leader key is `<space>` (`lua/jamal/remap.lua`).
- Undo history persists to `%USERPROFILE%/.vim/undodir` — created
  automatically on first write.
