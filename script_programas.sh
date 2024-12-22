#!/bin/bash

# [Código anterior permanece o mesmo até os arrays de pacotes]

# Arrays de pacotes por distribuição
declare -A packages
packages["fedora"]=(
    "git"
    "sudo"
    "emacs"
    "neovim"
    "lutris"
    "steam"
    "wine"
    "winetricks"
    "akmod-nvidia"
    "xorg-x11-drv-nvidia"
    "xorg-x11-drv-nvidia-cuda"
    "python3-pip"
    "nodejs"
    "gcc"
    "gcc-c++"
    "kernel-devel"
    "kernel-headers"
    "fish"                    # Adicionado Fish
    "util-linux-user"        # Necessário para chsh
)

packages["arch"]=(
    "git"
    "sudo"
    "emacs"
    "neovim"
    "lutris"
    "steam"
    "wine"
    "winetricks"
    "nvidia"
    "nvidia-utils"
    "lib32-nvidia-utils"
    "nvidia-settings"
    "python-pip"
    "nodejs"
    "base-devel"
    "fish"                    # Adicionado Fish
)

packages["debian"]=(
    "git"
    "sudo"
    "emacs"
    "neovim"
    "lutris"
    "steam"
    "wine"
    "winetricks"
    "nvidia-driver"
    "python3-pip"
    "nodejs"
    "build-essential"
    "fish"                    # Adicionado Fish
)

# [Resto do código anterior permanece o mesmo]

# Função para configurar o Fish shell
setup_fish() {
    echo -e "${GREEN}Configurando Fish shell...${NC}"
    
    # Criar diretório de configuração do Fish se não existir
    mkdir -p ~/.config/fish

    # Configurar Fish como shell padrão
    echo -e "${YELLOW}Definindo Fish como shell padrão...${NC}"
    chsh -s $(which fish)

    # Instalar Fisher (gerenciador de plugins para Fish)
    echo -e "${YELLOW}Instalando Fisher (gerenciador de plugins)...${NC}"
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | fish

    # Criar configuração básica do Fish
    cat > ~/.config/fish/config.fish << 'EOL'
# Aliases úteis
alias ll='ls -lah'
alias update='sudo apt update && sudo apt upgrade'   # Para Debian/Ubuntu
alias pacup='sudo pacman -Syu'                      # Para Arch
alias dnfup='sudo dnf update'                       # Para Fedora

# Definir variáveis de ambiente
set -gx EDITOR nvim
set -gx VISUAL nvim

# Inicializar starship se estiver instalado
if command -v starship > /dev/null
    starship init fish | source
end

# Configurar cores do Fish
set -g fish_color_command green
set -g fish_color_param normal
set -g fish_color_error red
set -g fish_color_normal normal

# Função para criar e entrar em um diretório
function mkcd
    mkdir -p $argv[1]
    and cd $argv[1]
end

# Função para backup rápido de um arquivo
function backup
    cp $argv[1] $argv[1].bak
end
EOL

    # Instalar alguns plugins úteis do Fish
    fish -c "fisher install jorgebucaran/nvm.fish"  # Gerenciador de versões Node.js
    fish -c "fisher install PatrickF1/fzf.fish"     # Pesquisa fuzzy
    fish -c "fisher install jethrokuan/z"           # Navegação rápida entre diretórios

    echo -e "${GREEN}Configuração do Fish concluída!${NC}"
    echo -e "${YELLOW}Para começar a usar o Fish, reinicie seu terminal ou execute: exec fish${NC}"
}

# [Código anterior permanece o mesmo até antes do echo final]

# Adicionar chamada para configuração do Fish
setup_fish

echo -e "${GREEN}Instalação concluída!${NC}"
echo -e "${YELLOW}Recomenda-se reiniciar o sistema para aplicar todas as alterações.${NC}"
echo -e "${YELLOW}Para começar a usar o Fish shell, reinicie seu terminal ou execute: exec fish${NC}"
