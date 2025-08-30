# Neovim IDE Configuration

Modern Neovim setup with LSP, autocompletion, file explorer, and more.

## Features

- 🎨 Catppuccin theme
- 📁 File explorer (nvim-tree)
- 🔍 Fuzzy finder (Telescope)
- 🌈 Syntax highlighting (Treesitter)
- 🧠 LSP support with autocompletion
- 📝 Auto-formatting
- 🔧 Git integration
- ⚡ Fast startup with Lazy.nvim

## Requirements

- Neovim 0.8+ (0.10+ for formatting)
- Git
- Node.js & npm
- Python 3
- Rust (optional, for stylua)

## Installation

### 1. Backup existing config
```bash
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
```

### 2. Clone this config
```bash
git clone https://github.com/SEU_USUARIO/nvim-config ~/.config/nvim
```

### 3. Install external dependencies

**Ubuntu/Debian:**
```bash
# Node.js & npm
sudo apt install nodejs npm

# Python formatter
sudo apt install python3-black
# OR use pipx
sudo apt install pipx
pipx install black

# Prettier
npm install -g prettier

# Stylua (optional)
cargo install stylua
```

**macOS:**
```bash
brew install node python-black
npm install -g prettier
cargo install stylua
```

### 4. Launch Neovim
```bash
nvim
```

Plugins will install automatically on first launch.

### 5. Install LSP servers
In Neovim, run:
```
:Mason
```
Select and install desired language servers.

## Key Mappings

| Key | Action |
|-----|--------|
| `<Space>` | Leader key |
| `<leader>e` | Toggle file explorer |
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>f` | Format code |
| `gd` | Go to definition |
| `K` | Hover documentation |
| `<leader>ca` | Code actions |
| `<leader>rn` | Rename symbol |

## Troubleshooting

**Plugins not installing:**
```bash
rm -rf ~/.local/share/nvim
nvim
```

**LSP not working:**
- Check `:Mason` for installed servers
- Run `:LspInfo` in affected file

**Python formatting error:**
```bash
pipx install black
```

## Customization

- **Theme:** Edit `lua/plugins/colorscheme.lua`
- **Keymaps:** Edit `lua/config/keymaps.lua`
- **LSP servers:** Edit `lua/plugins/lsp.lua`
- **Add plugins:** Create new file in `lua/plugins/`

## Languages Supported

- Lua
- JavaScript/TypeScript
- Python
- Rust
- HTML/CSS
- JSON

Add more by installing LSP servers via `:Mason`.
