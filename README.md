```markdown
# Script de Instalação Multi-Distribuição Linux
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Shell Script](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)

## 📝 Descrição

Este script automatiza a instalação de várias ferramentas de desenvolvimento e aplicativos em diferentes distribuições Linux (Fedora, Arch e Debian/Ubuntu/Zorin). O script detecta automaticamente sua distribuição e utiliza o gerenciador de pacotes apropriado.

## 🚀 Recursos

O script instala e configura:

### 📦 Aplicativos Principais
- Editores: Emacs, Neovim
- Shell: Fish (com plugins e configurações)
- Ferramentas de Desenvolvimento: Git, GCC
- Jogos: Steam, Lutris, Wine
- Drivers NVIDIA
- Epic Games (via Heroic Games Launcher)

### 🐟 Configuração do Fish Shell
- Gerenciador de plugins (Fisher)
- Aliases úteis
- Funções personalizadas
- Plugins populares:
  - nvm.fish (Node.js)
  - fzf.fish (pesquisa fuzzy)
  - z (navegação rápida)

## 📋 Pré-requisitos

- Sistema operacional Linux (Fedora, Arch, ou baseado em Debian)
- Acesso root (sudo)
- Conexão com a internet

## 💻 Como Usar

1. Baixe o script:
```bash
wget https://[URL_DO_SCRIPT]/install_programs.sh
```

2. Dê permissão de execução:
```bash
chmod +x install_programs.sh
```

3. Execute o script:
```bash
./install_programs.sh
```

## ⚙️ O que o script faz

1. **Detecção do Sistema**
   - Identifica automaticamente sua distribuição Linux
   - Seleciona o gerenciador de pacotes apropriado

2. **Atualização do Sistema**
   - Atualiza os repositórios
   - Configura repositórios adicionais quando necessário

3. **Instalação de Pacotes**
   - Instala todos os pacotes necessários
   - Gerencia dependências automaticamente

4. **Configuração do Fish Shell**
   - Define Fish como shell padrão
   - Instala e configura plugins
   - Adiciona aliases e funções úteis

5. **Configuração do Git**
   - Solicita nome e email do usuário
   - Configura as preferências globais

## 🛠️ Personalização

Para adicionar ou remover pacotes, edite os arrays `packages` no script:

```bash
packages["sua_distribuição"]=(
    "pacote1"
    "pacote2"
)
```

## 🔧 Comandos Úteis do Fish

Após a instalação, você pode usar:

```fish
# Autocomplete inteligente
[Tab][Tab]

# Pesquisa no histórico
Ctrl + R

# Navegação rápida
z nome_diretorio

# Criar e entrar em diretório
mkcd novo_diretorio

# Backup rápido
backup arquivo.txt
```

## ⚠️ Notas Importantes

- Faça backup dos seus dados antes de executar o script
- Algumas instalações podem requerer downloads grandes
- Reinicie o sistema após a conclusão
- Em caso de erro, verifique os logs em `/var/log/`

## 🐛 Resolução de Problemas

Se encontrar problemas:

1. Verifique sua conexão com a internet
2. Confirme que tem privilégios sudo
3. Verifique os logs do sistema
4. Certifique-se de que sua distribuição é suportada

## 🤝 Contribuindo

Sinta-se à vontade para:
- Reportar bugs
- Sugerir novos recursos
- Enviar pull requests

## 📄 Licença

Este projeto está sob a licença [ Licença Pública Geral GNU 3].

## ✨ Agradecimentos

- Comunidade Open Source
- Mantenedores dos pacotes
- Contribuidores

