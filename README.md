<div align="center">
  <a href="./assets/banner.png" target="_blank">
    <img src="./assets/banner.png"
         alt="Spaceduck Logo of duck in an astronaut uniform holding computer: credit to Lexi @kalrita_lw"
         style="max-width:90%; height:auto;">
  </a>
</div>

<div align="center">
  <a href="./assets/screenshot-dark.png" target="_blank">
    <img src="./assets/screenshot-dark.png" alt="Dark Mode Screenshot" style="max-width:45%; height:auto; margin:5px;">
  </a>
  <a href="./assets/screenshot-light.png" target="_blank">
    <img src="./assets/screenshot-light.png" alt="Light Mode Screenshot" style="max-width:45%; height:auto; margin:5px;">
  </a>
</div>

<div align="center">
  <h1><span style="font-size: 1.2em">🦆</span> spaceduck.nvim</h1>
</div>

<p align="center">
  <strong>~ Spaceduck, always intergalactic ~</strong>
</p>

> [!NOTE]
> Forked from [spaceduck-theme](https://github.com/spaceduck-theme/nvim), this version expands on the original with a `light` theme (WIP) and extra configurations for my personal toolkit.

# Installation

<details>
<summary>With <a href="https://github.com/folke/lazy.nvim">folke/lazy.nvim</a></summary>

```lua
{
    "https://codeberg.org/mateconpizza/spaceduck.nvim",
    config = function()
      vim.o.background = 'light' -- or 'dark'
      vim.cmd.colorscheme('spaceduck')
    end,
    enabled = true,
}
```

</details>

<details>
<summary>With <a href="https://github.com/wbthomason/packer.nvim">packer.nvim</a></summary>

```lua
use({ "spaceduck-theme/nvim", as = "spaceduck" })
```

</details>

# Extras

<details>
<summary>Tools</summary>

| Tool                                                       | Extra                                    |
| ---------------------------------------------------------- | ---------------------------------------- |
| [base16](https://github.com/tinted-theming/home)           | [extras/base16](./extras/base16)         |
| [bat](https://github.com/sharkdp/bat)                      | [extras/bat](./extras/bat)               |
| [delta](https://github.com/dandavison/delta)               | [extras/delta](./extras/delta)           |
| [dunst](https://dunst-project.org/documentation)           | [extras/dunst](./extras/dunst)           |
| [fzf](https://github.com/junegunn/fzf)                     | [extras/fzf](./extras/fzf)               |
| [newsboat](https://newsboat.org/)                          | [extras/newsboat](./extras/newsboat)     |
| [rofi](https://github.com/davatorium/rofi)                 | [extras/rofi](./extras/rofi)             |
| [xresources](https://wiki.archlinux.org/title/X_resources) | [extras/xresources](./extras/xresources) |
| [zathura](https://pwmt.org/projects/zathura/)              | [extras/zathura](./extras/zathura)       |

</details>

# Author's Inspiration

This theme was inspired from my incessant desire to feel like I'm in space when I stare at a computer.
"Spaceduck" takes its name from my love of [duck dodgers](https://m.media-amazon.com/images/M/MV5BNDY2YjgyZGMtMWY2Zi00ZmQ5LTg0YjgtNjYyMGNkMTMzNWU1XkEyXkFqcGdeQXVyMzM4NjcxOTc@._V1_.jpg) as a kid.

- Thank you [Guillermo Rodriguez](https://github.com/pineapplegiant/spaceduck)

# Plugins support

<details>
<summary>With <a href="https://github.com/hoob3rt/lualine.nvim">Lualine</a></summary>

<center>
  <img  src="https://user-images.githubusercontent.com/32819563/111934957-16f0d780-8a88-11eb-9f33-f02c9ba364c1.png" alt="lualine normal mode screenshot">
  <img  src="https://user-images.githubusercontent.com/32819563/111934981-21ab6c80-8a88-11eb-8118-dfbc2dc3bddf.png" alt="lualine insert mode screenshot">
  <img  src="https://user-images.githubusercontent.com/32819563/111935019-325be280-8a88-11eb-9846-a2d7bfec226c.png" alt="lualine visual mode screenshot">
  <img  src="https://user-images.githubusercontent.com/32819563/111935037-3ab41d80-8a88-11eb-8797-2b6db14cbff8.png" alt="lualine replace mode screenshot">
</center>

```lua
require("lualine").setup({
  options = {
    theme = "spaceduck",
  },
})
```

</details>
