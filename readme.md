# My KDE Terminal Setup 

A complete guide to replicate my personal terminal setup on Fedora Linux with KDE Plasma. This setup features **Zsh**, **Starship Prompt** (with a Catppuccin preset ), a customized **Konsole** appearance, and **Fastfetch**.

![Showcase of the final terminal look](https://github.com/4jib0x/fastfetch/blob/main/assets/md/Konsole%20preview.png)

---

## 🌟 Features

*   **Modern Shell:** Zsh with powerful, must-have plugins.
*   **Smart Prompt:** A beautiful and context-aware prompt powered by Starship.
*   **System Info on Startup:** A clean Fastfetch display every time you open the terminal.
*   **Syntax Highlighting:** Helps catch errors before running commands.
*   **Auto-suggestions:** Finishes your commands based on your history.
*   **Stunning Aesthetics:** A consistent and beautiful look using the Dracula theme, a custom logo, and Nerd Fonts for icons.

---

## 📋 Prerequisites

This guide is tailored for **Fedora Linux (KDE)**. For other distributions, you may need to use a different package manager (e.g. `apt` instead of `dnf`).

---

## 🚀 Full Installation Guide

Follow these steps in order to achieve the final look.

### Step 1: System Update & Essential Tools Installation

First, we'll update the system and install all the necessary tools, including `fastfetch` and `Zsh`.

```bash
# Update all system packages to the latest version
sudo dnf update -y

# Install Fastfetch first
sudo dnf install fastfetch -y

# Install Zsh and set it as the default shell
sudo dnf install zsh -y
chsh -s $(which zsh)

# Install other helper tools
sudo dnf install git curl wget util-linux-user -y
```

### Step 2: Configure Zsh with Plugins

These plugins add syntax highlighting and auto-suggestions

```bash
# Create directories for plugins
mkdir -p ~/.zsh/{plugins,completions,themes}

# Clone the plugins from their repositories
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.zsh/plugins/zsh-completions
```

Now, apply the configuration by copying the .zshrc file from this repository.

```bash
# Backup your current .zshrc (if it exists )
mv ~/.zshrc ~/.zshrc.bak

# Copy the pre-configured .zshrc from this repository
# Make sure you have cloned this repo first!
cp .zshrc ~/
```
### Step 3: Install and Configure Starship Prompt

Starship is the engine that powers our beautiful prompt.

```bash
# Install Starship using the official script

curl -sS https://starship.rs/install.sh | sh
```

Next, copy the starship.toml file which contains the Catppuccin Powerline preset.
```bash
# Create the config directory for Starship
mkdir -p ~/.config

# Copy the starship.toml file from this repository
cp starship.toml ~/.config/
```

### Step 4: Install FiraCode Nerd Font

Nerd Fonts are crucial for displaying icons correctly in the prompt

```bash
# Install font management tools
sudo dnf install wget unzip fontconfig -y

# Create a local fonts directory
mkdir -p ~/.local/share/fonts

# Unzip the FiraCode.zip from this repository into the fonts directory
unzip FiraCode.zip -d ~/.local/share/fonts/FiraCode

# Update the system's font cache
fc-cache -fv
```
### Step 5: Configure Fastfetch with Custom Logo

This step sets up Fastfetch to display system information with our custom logo

```bash
# Create the fastfetch config directory
mkdir -p ~/.config/fastfetch

# Copy the main configuration file
cp config.jsonc ~/.config/fastfetch/

# IMPORTANT: Copy the assets folder which contains the logo
cp -r assets ~/.config/
```
### Step 6: Configure Konsole Manually

Finally, apply the visual settings to Konsole.

    Open Konsole and go to Settings -> Edit Current Profile...
    In the General tab, edit columns to 120 , rows 31  to get best terminal size 
    Make  sure  turn off "Remember window size" form konsole configure "Genenral"
    In the Appearance tab, configure the settings as shown in the image below:
        Set the Font to "FiraCode Nerd Font | Regular | 11".
        Install Dracula Theme form Get New...
        Set the Color scheme to "Dracula".
        Click Edit to edit "Dracula Theme"
![](https://github.com/4jib0x/fastfetch/blob/main/assets/md/Konsole%20preview.png)

        Change Background color to #1e1f29  & Color 4 to #f38ba8  to get the same colors of fastfetch
        Adjust the "Background transparency" to your liking (e.g., 18% )
![](https://github.com/4jib0x/fastfetch/blob/main/assets/md/Konsole%20preview.png)
  
  Click OK to save and restart Konsole to see the final result!

## 🖼️ Wallpaper

The wallpaper used in the showcase is included in this repository. You can find it in the assets/wallpaper directory

## 🎉 Done!

You should now have a fully configured and beautiful terminal. If you liked this setup, please give it a ⭐️!
