#!/bin/sh
# base16-shell
# Scheme: spaceduck-dark (derived from spaceduck-dark.xresources)

export BASE16_THEME=spaceduck-dark

# -----------------------------------------------------------------------------
# Base colors (from Xresources)
# -----------------------------------------------------------------------------

# background / foreground
color00="0f/11/1b" # base00 - background
color07="68/6f/9a" # base05 approximation via light gray slot
color_foreground="ec/f0/c1"
color_background="0f/11/1b"

# -----------------------------------------------------------------------------
# ANSI 0–15 (STRICTLY from Xresources)
# -----------------------------------------------------------------------------

color00="00/00/00" # color0
color01="e3/34/00" # color1
color02="5c/cc/96" # color2
color03="b3/a1/e6" # color3
color04="00/a3/cc" # color4
color05="f2/ce/00" # color5
color06="7a/5c/cc" # color6
color07="68/6f/9a" # color7

color08="68/6f/9a" # color8
color09="e3/34/00" # color9
color10="5c/cc/96" # color10
color11="b3/a1/e6" # color11
color12="00/a3/cc" # color12
color13="f2/ce/00" # color13
color14="7a/5c/cc" # color14
color15="f0/f1/ce" # color15

# -----------------------------------------------------------------------------
# Extended Base16 slots (derived logically from palette)
# -----------------------------------------------------------------------------

color16="e3/34/00" # base09 (orange substitute -> red accent)
color17="7a/5c/cc" # base0F (purple tone)

color18="0f/11/1b" # base01 (background variant)
color19="00/00/00" # base02 (black)
color20="68/6f/9a" # base04 (light gray)
color21="f0/f1/ce" # base06 (near white)

# -----------------------------------------------------------------------------
# Terminal handling (unchanged base16-shell logic)
# -----------------------------------------------------------------------------

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

# -----------------------------------------------------------------------------
# Apply 16-color space
# -----------------------------------------------------------------------------

put_template 0 $color00
put_template 1 $color01
put_template 2 $color02
put_template 3 $color03
put_template 4 $color04
put_template 5 $color05
put_template 6 $color06
put_template 7 $color07
put_template 8 $color08
put_template 9 $color09
put_template 10 $color10
put_template 11 $color11
put_template 12 $color12
put_template 13 $color13
put_template 14 $color14
put_template 15 $color15

# -----------------------------------------------------------------------------
# Apply 256-color extensions
# -----------------------------------------------------------------------------

put_template 16 $color16
put_template 17 $color17
put_template 18 $color18
put_template 19 $color19
put_template 20 $color20
put_template 21 $color21

# -----------------------------------------------------------------------------
# Foreground / background / cursor
# -----------------------------------------------------------------------------

if [ -n "$ITERM_SESSION_ID" ]; then
    put_template_custom Pg ecf0c1
    put_template_custom Ph 0f111b
    put_template_custom Pi ecf0c1
    put_template_custom Pj 686f9a
    put_template_custom Pk ecf0c1
    put_template_custom Pl ecf0c1
    put_template_custom Pm 0f111b
else
    put_template_var 10 "$color_foreground"
    if [ "$BASE16_SHELL_SET_BACKGROUND" != false ]; then
        put_template_var 11 "$color_background"
        if [ "${TERM%%-*}" = "rxvt" ]; then
            put_template_var 708 "$color_background"
        fi
    fi
    put_template_custom 12 ";7"
fi

# -----------------------------------------------------------------------------
# Cleanup
# -----------------------------------------------------------------------------

unset -f put_template put_template_var put_template_custom
unset color00 color01 color02 color03 color04 color05 color06 color07
unset color08 color09 color10 color11 color12 color13 color14 color15
unset color16 color17 color18 color19 color20 color21
unset color_foreground color_background
