#!/bin/sh
# base16-shell
# Generated from custom palette
export BASE16_THEME=spaceduck-dark

# Base colors
color00="0f/11/1b"  # Base 00 - Background (blackish)
color01="e3/34/00"  # Base 08 - Red
color02="5c/cc/96"  # Base 0B - Green
color03="f2/ce/00"  # Base 0A - Yellow
color04="7a/5c/cc"  # Base 0D - Blue
color05="ce/6f/8f"  # Base 0E - Magenta
color06="00/a3/cc"  # Base 0C - Cyan
color07="ec/f0/c1"  # Base 05 - Foreground

color08="1b/1c/36"  # Base 03 - Bright Black
color09=$color01    # Base 08 - Bright Red
color10=$color02    # Base 0B - Bright Green
color11=$color03    # Base 0A - Bright Yellow
color12=$color04    # Base 0D - Bright Blue
color13=$color05    # Base 0E - Bright Magenta
color14=$color06    # Base 0C - Bright Cyan
color15="ff/ff/ff"  # Base 07 - Bright White

# Extended Base16 colors
color16="e3/94/00"  # Base 09 - Orange
color17="30/36/5f"  # Base 0F - Dark Purple
color18="16/17/2d"  # Base 01
color19="1b/1c/36"  # Base 02
color20="81/85/96"  # Base 04
color21="c1/c3/cc"  # Base 06

color_foreground="ec/f0/c1" # Base 05
color_background="0f/11/1b" # Base 00

# --- terminal handling (unchanged base16-shell logic) ---

if [ -n "$TMUX" ]; then
    put_template() { printf '\033Ptmux;\033\033]4;%d;rgb:%s\033\033\\\033\\' "$@"; }
    put_template_var() { printf '\033Ptmux;\033\033]%d;rgb:%s\033\033\\\033\\' "$@"; }
    put_template_custom() { printf '\033Ptmux;\033\033]%s%s\033\033\\\033\\' "$@"; }
elif [ "${TERM%%[-.]*}" = "screen" ]; then
    put_template() { printf '\033P\033]4;%d;rgb:%s\007\033\\' "$@"; }
    put_template_var() { printf '\033P\033]%d;rgb:%s\007\033\\' "$@"; }
    put_template_custom() { printf '\033P\033]%s%s\007\033\\' "$@"; }
elif [ "${TERM%%-*}" = "linux" ]; then
    put_template() { [ "$1" -lt 16 ] && printf "\e]P%x%s" "$1" "$(echo "$2" | sed 's/\///g')"; }
    put_template_var() { true; }
    put_template_custom() { true; }
else
    put_template() { printf '\033]4;%d;rgb:%s\033\\' "$@"; }
    put_template_var() { printf '\033]%d;rgb:%s\033\\' "$@"; }
    put_template_custom() { printf '\033]%s%s\033\\' "$@"; }
fi

# 16 color space
put_template 0  $color00
put_template 1  $color01
put_template 2  $color02
put_template 3  $color03
put_template 4  $color04
put_template 5  $color05
put_template 6  $color06
put_template 7  $color07
put_template 8  $color08
put_template 9  $color09
put_template 10 $color10
put_template 11 $color11
put_template 12 $color12
put_template 13 $color13
put_template 14 $color14
put_template 15 $color15

# 256 color space
put_template 16 $color16
put_template 17 $color17
put_template 18 $color18
put_template 19 $color19
put_template 20 $color20
put_template 21 $color21

# Foreground / background / cursor
if [ -n "$ITERM_SESSION_ID" ]; then
    put_template_custom Pg ecf0c1
    put_template_custom Ph 0f111b
    put_template_custom Pi ecf0c1
    put_template_custom Pj 1b1c36
    put_template_custom Pk ecf0c1
    put_template_custom Pl ecf0c1
    put_template_custom Pm 0f111b
else
    put_template_var 10 $color_foreground
    if [ "$BASE16_SHELL_SET_BACKGROUND" != false ]; then
        put_template_var 11 $color_background
        if [ "${TERM%%-*}" = "rxvt" ]; then
            put_template_var 708 $color_background
        fi
    fi
    put_template_custom 12 ";7"
fi

# Cleanup
unset -f put_template put_template_var put_template_custom
unset color00 color01 color02 color03 color04 color05 color06 color07
unset color08 color09 color10 color11 color12 color13 color14 color15
unset color16 color17 color18 color19 color20 color21
unset color_foreground color_background
