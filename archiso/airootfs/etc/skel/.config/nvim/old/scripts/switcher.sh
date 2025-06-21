#!/usr/bin/env bash


# File containing the specific line
file_path="$HOME/.config/nvim/lua/plugins/colors.lua"

# Line number to read from the file
line_number=103  # Change this to the desired line number

# Display the value of the specified line
echo "COLOR:"
value=$(sed -n "${line_number}p" "$file_path") && echo "$value"

# Define color options
colors=("blue" "bole_dark_nvim" "carbonfox" "catppuccin" "catppuccin-frappe" "catppuccin-latte" "catppuccin-macchiato" "catppuccin-mocha"
        "darkblue" "dawnfox" "dayfox" "default" "delek" "desert" "doom-one" "dracula" "duskfox" "elflord" "enfocado" "evening" "everforest" "gruvbox"
        "gruvbox-baby" "gruvbox-material" "habamax" "horizon" "industry" "kanagawa" "kanagawa-dragon" "kanagawa-lotus" "kanagawa-wave"
        "koehler" "lunaperche" "morning" "murphy" "nightfly" "nightfox" "nord" "nordfox" "nvcode" "nvcode-aurora" "nvcode-dracula" "nvcode-gruvbox"
        "nvcode-lunar" "nvcode-metanoia" "nvcode-nord" "nvcode-onedark" "nvcode-palenight" "nvcode-snazzy" "nvcode-xoria" "onedark" "pablo"
        "peachpuff" "primer_dark" "quiet" "ron" "shine" "slate" "synthwave84" "terafox" "tokyonight" "tokyonight-day" "tokyonight-moon" "tokyonight-night" "tokyonight-storm"
        "torte" "zellner")

# Function to display menu and get user choice
select_option() {
    local options=("${!1}")
    local prompt="$2"

    PS3="$prompt"
    select opt in "${options[@]}"; do
        if [[ -n $opt ]]; then
            echo "$opt"
            break
        else
            echo "Invalid option. Please try again."
        fi
    done
}

# Get user input for current_color
current_color=$(select_option colors[@] "Select current_color: ")

# Get user input for new_color
new_color=$(select_option colors[@] "Select new_color: ")

# Execute the script with user-defined options
cd /bin
./02.change-scheme-nvim.sh ~/.config/nvim/lua/plugins/colors.lua "colorscheme $current_color" "colorscheme $new_color"
