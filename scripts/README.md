# Scripts / Scripts

Ferramentas e scripts para facilitar o uso do Git.

Tools and scripts to make Git easier to use.

---

## Scripts Disponíveis / Available Scripts

### [git-learn.sh](git-learn.sh) - Tutorial Interativo / Interactive Tutorial (NOVO!)

Tutorial passo a passo para aprender Git do zero.

Step by step tutorial to learn Git from scratch.

**Como usar / How to use:**
```bash
./scripts/git-learn.sh
```

**Conteúdo / Content:**

BÁSICO / BASIC:
1. O que é Git? / What is Git?
2. Configuração inicial / Initial setup
3. Criar repositório / Create repository
4. Status e diferenças / Status and diffs
5. Fazer commits / Making commits
6. Ver histórico / View history

INTERMEDIÁRIO / INTERMEDIATE:
7. Branches - Conceitos / Branches - Concepts
8. Criar e usar branches / Create and use branches
9. Merge - Mesclar branches / Merge branches
10. Repositórios remotos / Remote repositories
11. Push e Pull / Push and Pull
12. Desfazer mudanças / Undo changes

PRÁTICA / PRACTICE:
13. Exercício guiado / Guided exercise

**Para quem é? / Who is it for?**
- Iniciantes que nunca usaram Git / Beginners who never used Git
- Quem quer entender os conceitos / Those who want to understand concepts
- Estudantes aprendendo programação / Students learning programming

---

### [git-cli.sh](git-cli.sh) - CLI Interativo / Interactive CLI

Menu interativo com os comandos Git mais comuns.

Interactive menu with the most common Git commands.

**Como usar / How to use:**
```bash
./scripts/git-cli.sh
```

**Funcionalidades / Features:**
- Interface colorida e intuitiva / Colorful and intuitive interface
- Confirmação para ações perigosas / Confirmation for dangerous actions
- 13 categorias de comandos / 13 command categories
- Bilíngue (PT/EN) / Bilingual (PT/EN)

**Menu principal / Main menu:**
1. Status do repositório / Repository status
2. Ver histórico de commits / View commit history
3. Criar nova branch / Create new branch
4. Mudar de branch / Switch branch
5. Fazer commit / Make commit
6. Push para remoto / Push to remote
7. Pull do remoto / Pull from remote
8. Ver diferenças / View differences
9. Stash (salvar temporariamente) / Stash (save temporarily)
10. Gerenciar branches / Manage branches
11. Desfazer mudanças / Undo changes
12. Ver remotos / View remotes
13. Resolver conflitos / Resolve conflicts

---

### [git-simulator.sh](git-simulator.sh) - Simulador Git / Git Simulator (NOVO!)

Ambiente seguro para praticar Git sem risco de quebrar projetos reais.

Safe environment to practice Git without risk of breaking real projects.

**Como usar / How to use:**
```bash
./scripts/git-simulator.sh
```

**Funcionalidades / Features:**
- Cria ambiente temporário isolado / Creates isolated temporary environment
- 13 operações práticas / 13 practical operations
- Visualização do estado do repositório / Repository state visualization
- Simulação de conflitos / Conflict simulation
- Exercício guiado / Guided exercise
- Ambiente destruído automaticamente ao sair / Environment automatically destroyed on exit
- Interface colorida e intuitiva / Colorful and intuitive interface
- Bilíngue (PT/EN) / Bilingual (PT/EN)

**Menu de operações / Operations menu:**

BÁSICO / BASIC:
1. Ver estado atual / View current state
2. Criar novo arquivo / Create new file
3. Modificar arquivo / Modify file
4. Fazer commit / Make commit
5. Ver histórico / View history

BRANCHES:
6. Criar nova branch / Create new branch
7. Mudar de branch / Switch branch
8. Fazer merge / Merge branches

AVANÇADO / ADVANCED:
9. Simular conflito / Simulate conflict
10. Desfazer último commit / Undo last commit
11. Ver diferenças / View differences
12. Stash mudanças / Stash changes

EXERCÍCIOS / EXERCISES:
13. Exercício guiado / Guided exercise

**Para quem é? / Who is it for?**
- Quem quer praticar sem medo de errar / Those who want to practice without fear
- Professores e instrutores de Git / Teachers and Git instructors
- Workshops e treinamentos / Workshops and training
- Testar comandos antes de usar em projetos reais / Test commands before using on real projects

**Diferença dos outros scripts / Difference from other scripts:**
- git-learn.sh: Tutorial teórico educativo / Educational theoretical tutorial
- git-cli.sh: Ferramenta para uso diário / Tool for daily use
- git-simulator.sh: Ambiente de prática seguro / Safe practice environment

---

### [list-of-comds-how2git.sh](list-of-comds-how2git.sh) - Lista de Comandos / Commands List

Script de referência com comandos Git organizados e comentados.

Reference script with organized and commented Git commands.

**Como usar / How to use:**
```bash
# Ver o conteúdo / View contents
cat scripts/list-of-comds-how2git.sh

# Ou abrir em editor / Or open in editor
vim scripts/list-of-comds-how2git.sh
```

**Conteúdo / Contents:**
- Configuração inicial / Initial setup
- Trabalhando com branches / Working with branches
- Lidando com mudanças / Handling changes
- Colaboração / Collaboration
- Histórico e rastreamento / History and tracking
- Gerenciando tags / Managing tags
- Lidando com remotos / Handling remotes
- Desfazendo mudanças / Undoing changes
- Configurações globais / Global settings
- Workflow para projetos Python / Workflow for Python projects

---

## Como Tornar Scripts Executáveis / How to Make Scripts Executable

Se os scripts não forem executáveis, rode:

If scripts are not executable, run:

```bash
chmod +x scripts/git-learn.sh
chmod +x scripts/git-cli.sh
chmod +x scripts/git-simulator.sh
chmod +x scripts/list-of-comds-how2git.sh
```

---

## Criar Aliases / Create Aliases

Para facilitar o acesso, crie aliases:

To make access easier, create aliases:

### Bash/Zsh
```bash
# Adicione ao ~/.bashrc ou ~/.zshrc
alias git-learn="~/path/to/howtogit/scripts/git-learn.sh"
alias git-cli="~/path/to/howtogit/scripts/git-cli.sh"
alias git-sim="~/path/to/howtogit/scripts/git-simulator.sh"

# Use
git-learn
git-cli
git-sim
```

### Fish
```fish
# Adicione ao ~/.config/fish/config.fish
alias git-learn="~/path/to/howtogit/scripts/git-learn.sh"
alias git-cli="~/path/to/howtogit/scripts/git-cli.sh"
alias git-sim="~/path/to/howtogit/scripts/git-simulator.sh"

# Use
git-learn
git-cli
git-sim
```

---

## Dicas / Tips

### Executar de qualquer lugar / Run from anywhere

Adicione o script ao PATH:

Add script to PATH:

```bash
# Em ~/.bashrc ou ~/.zshrc
export PATH="$PATH:$HOME/path/to/howtogit/scripts"

# Agora pode usar / Now you can use:
git-cli.sh
```

### Integração com Git / Git Integration

Crie aliases do Git:

Create Git aliases:

```bash
git config --global alias.learn '!bash ~/path/to/howtogit/scripts/git-learn.sh'
git config --global alias.cli '!bash ~/path/to/howtogit/scripts/git-cli.sh'
git config --global alias.sim '!bash ~/path/to/howtogit/scripts/git-simulator.sh'

# Use / Use:
git learn
git cli
git sim
```

---

## Contribuindo / Contributing

Tem ideias para novos scripts? Abra uma issue ou PR!

Have ideas for new scripts? Open an issue or PR!

**Ideias de scripts / Script ideas:**
- Script de backup de repositório
- Script de análise de commits
- Script de limpeza de branches antigas
- Gerador de changelog automático

- Repository backup script
- Commit analysis script
- Old branch cleanup script
- Automatic changelog generator

---

## Recursos Relacionados / Related Resources

- [README Principal](../README.md) - Guia completo de comandos
- [Exemplos Práticos](../examples/) - Cenários reais de uso
- [Cheatsheet Visual](../docs/cheatsheet.md) - Referência rápida

---

**Última atualização / Last updated:** 2025-11-05
**Autor / Author:** Madson Aragão
