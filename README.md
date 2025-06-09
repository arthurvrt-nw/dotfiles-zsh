# dotfiles-zsh

A personal Zsh configuration setup using Oh My Zsh, with pre-configured plugins and themes for an enhanced terminal experience.

## Features

- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) as the base framework
- Powerline fonts for enhanced terminal appearance
- Pre-configured useful plugins:
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) for Fish-like autosuggestions
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) for command syntax highlighting
- Custom aliases for Git operations
- Uses "robbyrussell" theme by default

## Usage with VS Code Dev Containers

This repository can be used to personalize your Dev Containers with Zsh configuration. To set it up:

1. Open your VS Code settings
2. Add the following configuration:

   ```json
   {
     "dotfiles.repository": "this-repo-path",
     "dotfiles.targetPath": "~/dotfiles",
     "dotfiles.installCommand": "install.sh"
   }
   ```

When you open a project in a Dev Container, VS Code will:

1. Clone this repository into `~/.dotfiles` (or specified target directory)
2. Run the `install.sh` script automatically
3. Set up your Zsh environment with all configured plugins and aliases

This ensures a consistent shell experience across all your Dev Containers.

## Customization

- **Aliases**: Modify Git aliases in the `~/.zshrc` file as per your workflow.
- **Plugins**: Add or remove Oh My Zsh plugins in the `~/.zshrc` file under the `plugins` section.
- **Theme**: Change the theme by modifying the `ZSH_THEME` variable in the `~/.zshrc` file. For example, to use the "agnoster" theme:
  ```bash
  ZSH_THEME="agnoster"
  ```
