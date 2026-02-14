#!/bin/sh
# base16-shell
# Scheme: spaceduck-light (derived from spaceduck-light.xresources)

export BASE16_THEME=spaceduck-light

# -----------------------------------------------------------------------------
# ANSI 0–15 (EXACT match to Xresources COLOR0–15)
# -----------------------------------------------------------------------------

color00="2b/2e/44" # color0
color01="e3/34/00" # color1
color02="00/a3/70" # color2
color03="8e/7d/c6" # color3
color04="00/88/aa" # color4
color05="c9/a8/00" # color5
color06="63/47/aa" # color6
color07="3e/40/55" # color7

color08="3e/40/55" # color8
color09="c7/2d/00" # color9
color10="00/8c/5e" # color10
color11="7a/68/b0" # color11
color12="00/6f/8c" # color12
color13="a8/8b/00" # color13
color14="52/3a/8e" # color14
color15="ff/ff/ff" # color15

# -----------------------------------------------------------------------------
# Extended Base16 slots (mapped coherently from palette)
# -----------------------------------------------------------------------------

color16="c7/2d/00" # base09 (accent red variant)
color17="52/3a/8e" # base0F (deep accent)

color18="f0/f1/ce" # base01 (light background variant)
color19="3e/40/55" # base02 (selection / dark neutral)
color20="3e/40/55" # base04 (dim foreground)
color21="ff/ff/ff" # base06 (lightest foreground)

# -----------------------------------------------------------------------------
# Foreground / background (STRICT from Xresources)
# -----------------------------------------------------------------------------

color_foreground="0f/11/1b" # FOREGROUND
color_background="f0/f1/ce" # BACKGROUND

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
# Apply 16-color palette
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
# Extended 256-color slots
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

put_template_var 10 "$color_foreground"
put_template_var 11 "$color_background"
put_template_custom 12 ";7"

# -----------------------------------------------------------------------------
# Cleanup
# -----------------------------------------------------------------------------

unset -f put_template put_template_var put_template_custom
unset color00 color01 color02 color03 color04 color05 color06 color07
unset color08 color09 color10 color11 color12 color13 color14 color15
unset color16 color17 color18 color19 color20 color21
unset color_foreground color_background
