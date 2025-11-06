#!/bin/bash

# GIT LEARN - TUTORIAL INTERATIVO / INTERACTIVE GIT TUTORIAL
# Tutorial passo a passo para aprender Git
# Step by step tutorial to learn Git
# Autor / Author: Madson Aragão

# Cores / Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Função para exibir cabeçalho / Function to display header
show_header() {
    clear
    echo ""
    echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${NC}                                                            ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}     ${YELLOW}ᗧ···${NC} ${RED}GIT${NC} ${YELLOW}···${NC} ${RED}GIT${NC} ${YELLOW}···${NC} ${RED}GIT${NC} ${YELLOW}···${NC}   ${PURPLE}T U T O R I A L${NC}         ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}                                                            ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}         ${GREEN}▶  A P R E N D A   G I T   J O G A N D O  ${NC}         ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}         ${BLUE}▶  L E A R N   G I T   B Y   P L A Y I N G  ${NC}       ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}                                                            ${CYAN}║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
}

# Função para pausar
pause() {
    echo ""
    echo -e "${YELLOW}Pressione ENTER para continuar...${NC}"
    echo -e "${YELLOW}Press ENTER to continue...${NC}"
    read
}

# Função para mostrar dica
show_tip() {
    echo -e "${CYAN}DICA / TIP:${NC} $1"
    echo ""
}

# Função para mostrar comando
show_command() {
    echo -e "${GREEN}COMANDO / COMMAND:${NC}"
    echo -e "${YELLOW}  $1${NC}"
    echo ""
}

# Função para explicar
explain() {
    echo -e "${BLUE}$1${NC}"
    echo ""
}

# Menu principal
show_menu() {
    show_header
    echo -e "${GREEN}Escolha uma lição / Choose a lesson:${NC}"
    echo ""
    echo -e "${GREEN}BÁSICO / BASIC${NC}"
    echo ""
    echo -e "  1. O que é Git? / What is Git?"
    echo -e "  2. Configuração inicial / Initial setup"
    echo -e "  3. Criar repositório / Create repository"
    echo -e "  4. Status e diferenças / Status and diffs"
    echo -e "  5. Fazer commits / Making commits"
    echo -e "  6. Ver histórico / View history"
    echo ""
    echo -e "${GREEN}INTERMEDIÁRIO / INTERMEDIATE${NC}"
    echo ""
    echo -e "  7. Branches - Conceitos / Branches - Concepts"
    echo -e "  8. Criar e usar branches / Create and use branches"
    echo -e "  9. Merge - Mesclar branches / Merge branches"
    echo -e "  10. Repositórios remotos / Remote repositories"
    echo -e "  11. Push e Pull / Push and Pull"
    echo -e "  12. Desfazer mudanças / Undo changes"
    echo ""
    echo -e "${GREEN}PRÁTICA / PRACTICE${NC}"
    echo ""
    echo -e "  13. Exercício guiado / Guided exercise"
    echo ""
    echo -e "${GREEN}SAIR / EXIT${NC}"
    echo ""
    echo -e "   ${RED}0. Sair / Exit${NC}"
    echo ""
    echo -e "${YELLOW}Digite o número / Enter number:${NC} "
}

# Lição 1: O que é Git
lesson_01() {
    show_header
    echo -e "${PURPLE}═══ LIÇÃO 1: O QUE É GIT? / LESSON 1: WHAT IS GIT? ═══${NC}"
    echo ""

    explain "Git é um sistema de controle de versão distribuído."
    explain "Git is a distributed version control system."
    echo ""

    explain "O que isso significa? / What does this mean?"
    echo ""

    echo -e "${BLUE}Português:${NC}"
    echo "  - Controla diferentes versões do seu código"
    echo "  - Permite trabalhar em equipe sem conflitos"
    echo "  - Guarda histórico completo de todas as mudanças"
    echo "  - Permite voltar a versões antigas"
    echo "  - Permite criar 'branches' para testar ideias"
    echo ""

    echo -e "${BLUE}English:${NC}"
    echo "  - Controls different versions of your code"
    echo "  - Allows teamwork without conflicts"
    echo "  - Keeps complete history of all changes"
    echo "  - Allows going back to old versions"
    echo "  - Allows creating 'branches' to test ideas"
    echo ""

    show_tip "Git é diferente de GitHub. Git é a ferramenta, GitHub é um serviço online."
    show_tip "Git is different from GitHub. Git is the tool, GitHub is an online service."

    echo ""
    echo -e "${GREEN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}O QUE VOCÊ APRENDEU: / WHAT YOU LEARNED:${NC}"
    echo -e "${GREEN}═══════════════════════════════════════════${NC}"
    echo -e "  ${GREEN}✓${NC} Git é um sistema de controle de versão"
    echo -e "  ${GREEN}✓${NC} Permite trabalhar em equipe sem conflitos"
    echo -e "  ${GREEN}✓${NC} Mantém histórico completo de mudanças"
    echo -e "  ${GREEN}✓${NC} Git ≠ GitHub (ferramenta vs serviço)"
    echo ""

    pause
}

# Lição 2: Configuração
lesson_02() {
    show_header
    echo -e "${PURPLE}═══ LIÇÃO 2: CONFIGURAÇÃO INICIAL / INITIAL SETUP ═══${NC}"
    echo ""

    explain "Antes de usar Git, precisamos configurar seu nome e email."
    explain "Before using Git, we need to configure your name and email."
    echo ""

    echo -e "${BLUE}Por quê? / Why?${NC}"
    echo "Cada mudança (commit) registra quem fez a alteração."
    echo "Each change (commit) records who made it."
    echo ""

    show_command "git config --global user.name \"Seu Nome\""
    explain "Define seu nome globalmente / Sets your name globally"

    show_command "git config --global user.email \"seu@email.com\""
    explain "Define seu email globalmente / Sets your email globally"

    echo ""
    echo -e "${BLUE}Ver suas configurações / View your settings:${NC}"
    show_command "git config --list"

    echo ""
    echo -e "${YELLOW}Quer configurar agora? (s/n) / Configure now? (y/n)${NC} "
    read resposta

    if [[ "$resposta" =~ ^([sS]|[yY])$ ]]; then
        echo ""
        echo -e "${YELLOW}Digite seu nome / Enter your name:${NC} "
        read nome
        echo -e "${YELLOW}Digite seu email / Enter your email:${NC} "
        read email

        git config --global user.name "$nome"
        git config --global user.email "$email"

        echo ""
        echo -e "${GREEN}Configuração salva! / Configuration saved!${NC}"
        echo ""
        echo "Suas configurações / Your settings:"
        git config --global user.name
        git config --global user.email
    fi

    echo ""
    echo -e "${GREEN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}O QUE VOCÊ APRENDEU: / WHAT YOU LEARNED:${NC}"
    echo -e "${GREEN}═══════════════════════════════════════════${NC}"
    echo -e "  ${GREEN}✓${NC} Git precisa saber quem você é (nome e email)"
    echo -e "  ${GREEN}✓${NC} Use: git config --global user.name \"Nome\""
    echo -e "  ${GREEN}✓${NC} Use: git config --global user.email \"email@email.com\""
    echo -e "  ${GREEN}✓${NC} Cada commit registrará suas informações"
    echo ""

    pause
}

# Lição 3: Criar repositório
lesson_03() {
    show_header
    echo -e "${PURPLE}═══ LIÇÃO 3: CRIAR REPOSITÓRIO / CREATE REPOSITORY ═══${NC}"
    echo ""

    explain "Um repositório é uma pasta onde o Git rastreia mudanças."
    explain "A repository is a folder where Git tracks changes."
    echo ""

    echo -e "${BLUE}Há duas formas de começar: / There are two ways to start:${NC}"
    echo ""

    echo -e "${CYAN}1. Criar novo repositório / Create new repository:${NC}"
    show_command "git init"
    explain "Cria um repositório Git na pasta atual"
    explain "Creates a Git repository in the current folder"

    echo -e "${CYAN}2. Clonar repositório existente / Clone existing repository:${NC}"
    show_command "git clone <url>"
    explain "Baixa uma cópia de um repositório remoto"
    explain "Downloads a copy of a remote repository"

    show_tip "git init cria uma pasta oculta .git com todo o histórico"
    show_tip "git init creates a hidden .git folder with all history"

    echo ""
    echo -e "${GREEN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}O QUE VOCÊ APRENDEU: / WHAT YOU LEARNED:${NC}"
    echo -e "${GREEN}═══════════════════════════════════════════${NC}"
    echo -e "  ${GREEN}✓${NC} git init - cria novo repositório local"
    echo -e "  ${GREEN}✓${NC} git clone <url> - copia repositório remoto"
    echo -e "  ${GREEN}✓${NC} Repositório = pasta com controle de versão"
    echo -e "  ${GREEN}✓${NC} Pasta .git armazena todo o histórico"
    echo ""

    pause
}

# Lição 4: Status e diferenças
lesson_04() {
    show_header
    echo -e "${PURPLE}═══ LIÇÃO 4: STATUS E DIFERENÇAS / STATUS AND DIFFS ═══${NC}"
    echo ""

    explain "Comandos para ver o que mudou no seu código."
    explain "Commands to see what changed in your code."
    echo ""

    show_command "git status"
    explain "Mostra o estado atual do repositório:"
    explain "Shows the current state of the repository:"
    echo "  - Arquivos modificados / Modified files"
    echo "  - Arquivos novos / New files"
    echo "  - Arquivos prontos para commit / Files ready to commit"
    echo ""

    show_command "git diff"
    explain "Mostra as diferenças exatas nas linhas de código"
    explain "Shows exact differences in code lines"
    echo "  - Linhas removidas aparecem em vermelho com -"
    echo "  - Linhas adicionadas aparecem em verde com +"
    echo "  - Removed lines appear in red with -"
    echo "  - Added lines appear in green with +"
    echo ""

    show_command "git diff --staged"
    explain "Mostra diferenças dos arquivos que estão no staging"
    explain "Shows differences of files that are staged"

    show_tip "Use 'git status' frequentemente para saber onde está!"
    show_tip "Use 'git status' frequently to know where you are!"

    pause
}

# Lição 5: Fazer commits
lesson_05() {
    show_header
    echo -e "${PURPLE}═══ LIÇÃO 5: FAZER COMMITS / MAKING COMMITS ═══${NC}"
    echo ""

    explain "Commit é como salvar uma versão do seu código."
    explain "Commit is like saving a version of your code."
    echo ""

    echo -e "${BLUE}Processo de commit tem 2 passos: / Commit process has 2 steps:${NC}"
    echo ""

    echo -e "${CYAN}PASSO 1: Adicionar ao staging / STEP 1: Add to staging${NC}"
    show_command "git add arquivo.txt"
    explain "Adiciona um arquivo específico / Adds a specific file"

    show_command "git add ."
    explain "Adiciona todos os arquivos modificados / Adds all modified files"

    echo ""
    echo -e "${CYAN}PASSO 2: Fazer o commit / STEP 2: Make the commit${NC}"
    show_command "git commit -m \"Mensagem descritiva\""
    explain "Salva as mudanças com uma mensagem / Saves changes with a message"

    echo ""
    echo -e "${BLUE}Boas práticas de mensagens: / Message best practices:${NC}"
    echo "  - Use verbos no imperativo / Use imperative verbs"
    echo "  - Seja específico / Be specific"
    echo "  - Exemplos / Examples:"
    echo "    'Adiciona função de login' / 'Add login function'"
    echo "    'Corrige bug no formulário' / 'Fix form bug'"
    echo "    'Remove código não usado' / 'Remove unused code'"
    echo ""

    show_tip "Commits pequenos e frequentes são melhores que grandes commits raros!"
    show_tip "Small frequent commits are better than large rare commits!"

    echo ""
    echo -e "${GREEN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}O QUE VOCÊ APRENDEU: / WHAT YOU LEARNED:${NC}"
    echo -e "${GREEN}═══════════════════════════════════════════${NC}"
    echo -e "  ${GREEN}✓${NC} Commit = salvar versão do código"
    echo -e "  ${GREEN}✓${NC} Passo 1: git add (adicionar ao staging)"
    echo -e "  ${GREEN}✓${NC} Passo 2: git commit -m \"mensagem\""
    echo -e "  ${GREEN}✓${NC} Mensagens devem ser claras e descritivas"
    echo -e "  ${GREEN}✓${NC} Commits pequenos > commits grandes"
    echo ""

    pause
}

# Lição 6: Ver histórico
lesson_06() {
    show_header
    echo -e "${PURPLE}═══ LIÇÃO 6: VER HISTÓRICO / VIEW HISTORY ═══${NC}"
    echo ""

    explain "Ver todos os commits feitos no projeto."
    explain "View all commits made in the project."
    echo ""

    show_command "git log"
    explain "Mostra histórico completo de commits / Shows complete commit history"
    echo "  - Hash do commit / Commit hash"
    echo "  - Autor / Author"
    echo "  - Data / Date"
    echo "  - Mensagem / Message"
    echo ""

    show_command "git log --oneline"
    explain "Mostra histórico resumido (1 linha por commit)"
    explain "Shows summarized history (1 line per commit)"
    echo ""

    show_command "git log --graph --all"
    explain "Mostra histórico com gráfico visual de branches"
    explain "Shows history with visual branch graph"
    echo ""

    show_command "git log --author=\"Nome\""
    explain "Filtra commits por autor / Filters commits by author"
    echo ""

    show_command "git show <hash>"
    explain "Mostra detalhes de um commit específico"
    explain "Shows details of a specific commit"

    show_tip "Aperte 'q' para sair do git log"
    show_tip "Press 'q' to quit git log"

    pause
}

# Lição 7: Branches - Conceitos
lesson_07() {
    show_header
    echo -e "${PURPLE}═══ LIÇÃO 7: BRANCHES - CONCEITOS / BRANCHES - CONCEPTS ═══${NC}"
    echo ""

    explain "Branch é uma linha paralela de desenvolvimento."
    explain "Branch is a parallel line of development."
    echo ""

    echo -e "${BLUE}Por que usar branches? / Why use branches?${NC}"
    echo "  - Desenvolver features sem afetar código principal"
    echo "  - Testar ideias sem risco"
    echo "  - Trabalhar em múltiplas tarefas ao mesmo tempo"
    echo "  - Develop features without affecting main code"
    echo "  - Test ideas without risk"
    echo "  - Work on multiple tasks simultaneously"
    echo ""

    echo -e "${BLUE}Visualização / Visualization:${NC}"
    echo ""
    echo "  main    ----●----●----●---->"
    echo "               \\"
    echo "  feature       ●----●"
    echo ""

    explain "Branch padrão geralmente se chama 'main' ou 'master'"
    explain "Default branch is usually called 'main' or 'master'"
    echo ""

    show_tip "Cada branch é independente. Mudanças em uma não afetam a outra."
    show_tip "Each branch is independent. Changes in one don't affect the other."

    pause
}

# Lição 8: Criar e usar branches
lesson_08() {
    show_header
    echo -e "${PURPLE}═══ LIÇÃO 8: CRIAR E USAR BRANCHES / CREATE AND USE BRANCHES ═══${NC}"
    echo ""

    show_command "git branch"
    explain "Lista todas as branches locais / Lists all local branches"
    explain "Branch atual tem * / Current branch has *"
    echo ""

    show_command "git branch nome-da-branch"
    explain "Cria uma nova branch / Creates a new branch"
    echo ""

    show_command "git checkout nome-da-branch"
    explain "Muda para outra branch / Switches to another branch"
    echo ""

    show_command "git checkout -b nova-branch"
    explain "Cria E muda para a nova branch (atalho)"
    explain "Creates AND switches to new branch (shortcut)"
    echo ""

    show_command "git switch nome-da-branch"
    explain "Alternativa moderna para mudar de branch"
    explain "Modern alternative to switch branches"
    echo ""

    echo -e "${BLUE}Workflow típico / Typical workflow:${NC}"
    echo "1. git checkout -b feature/login"
    echo "2. # Fazer mudanças / Make changes"
    echo "3. git add ."
    echo "4. git commit -m \"Adiciona login\""
    echo "5. git checkout main"
    echo "6. git merge feature/login"
    echo ""

    show_tip "Use nomes descritivos como feature/nova-funcao ou fix/bug-123"
    show_tip "Use descriptive names like feature/new-function or fix/bug-123"

    pause
}

# Lição 9: Merge
lesson_09() {
    show_header
    echo -e "${PURPLE}═══ LIÇÃO 9: MERGE - MESCLAR BRANCHES ═══${NC}"
    echo ""

    explain "Merge junta mudanças de uma branch em outra."
    explain "Merge combines changes from one branch into another."
    echo ""

    echo -e "${BLUE}Como fazer merge: / How to merge:${NC}"
    echo ""
    echo "1. Mude para a branch de destino / Switch to target branch:"
    show_command "git checkout main"
    echo ""
    echo "2. Faça o merge da outra branch / Merge the other branch:"
    show_command "git merge feature/login"
    echo ""

    echo -e "${BLUE}O que pode acontecer? / What can happen?${NC}"
    echo ""
    echo -e "${GREEN}Fast-forward merge:${NC}"
    echo "  - Não há conflitos"
    echo "  - Git apenas avança o ponteiro"
    echo "  - No conflicts"
    echo "  - Git just moves the pointer forward"
    echo ""

    echo -e "${YELLOW}Merge com conflitos:${NC}"
    echo "  - Mesmas linhas foram modificadas em ambas branches"
    echo "  - Você precisa resolver manualmente"
    echo "  - Same lines were modified in both branches"
    echo "  - You need to resolve manually"
    echo ""

    show_command "git merge --abort"
    explain "Cancela o merge se houver problema / Cancels merge if there's a problem"

    show_tip "Sempre faça 'git status' antes de merge para ver se está tudo limpo"
    show_tip "Always do 'git status' before merge to see if everything is clean"

    pause
}

# Lição 10: Repositórios remotos
lesson_10() {
    show_header
    echo -e "${PURPLE}═══ LIÇÃO 10: REPOSITÓRIOS REMOTOS / REMOTE REPOSITORIES ═══${NC}"
    echo ""

    explain "Repositórios remotos são versões do seu projeto em servidores."
    explain "Remote repositories are versions of your project on servers."
    echo ""

    echo -e "${BLUE}Serviços populares: / Popular services:${NC}"
    echo "  - GitHub"
    echo "  - GitLab"
    echo "  - Bitbucket"
    echo ""

    show_command "git remote -v"
    explain "Lista repositórios remotos configurados"
    explain "Lists configured remote repositories"
    echo ""

    show_command "git remote add origin <url>"
    explain "Adiciona um repositório remoto chamado 'origin'"
    explain "Adds a remote repository called 'origin'"
    echo ""

    show_command "git remote remove origin"
    explain "Remove o repositório remoto / Removes the remote repository"
    echo ""

    explain "'origin' é o nome padrão para o repositório remoto principal"
    explain "'origin' is the default name for the main remote repository"

    show_tip "Você pode ter múltiplos remotos com nomes diferentes"
    show_tip "You can have multiple remotes with different names"

    pause
}

# Lição 11: Push e Pull
lesson_11() {
    show_header
    echo -e "${PURPLE}═══ LIÇÃO 11: PUSH E PULL ═══${NC}"
    echo ""

    explain "Comandos para sincronizar com repositório remoto."
    explain "Commands to sync with remote repository."
    echo ""

    echo -e "${CYAN}PUSH - Enviar mudanças / Send changes:${NC}"
    show_command "git push origin main"
    explain "Envia commits da branch main para o remoto"
    explain "Sends commits from main branch to remote"
    echo ""

    show_command "git push -u origin main"
    explain "Primeiro push: configura tracking"
    explain "First push: sets up tracking"
    echo ""

    echo -e "${CYAN}PULL - Buscar mudanças / Fetch changes:${NC}"
    show_command "git pull"
    explain "Busca e mescla mudanças do remoto"
    explain "Fetches and merges changes from remote"
    echo ""

    show_command "git fetch"
    explain "Apenas busca mudanças, sem mesclar"
    explain "Only fetches changes, without merging"
    echo ""

    echo -e "${BLUE}Workflow diário / Daily workflow:${NC}"
    echo "1. git pull          # Atualizar / Update"
    echo "2. # Fazer mudanças / Make changes"
    echo "3. git add ."
    echo "4. git commit -m \"mensagem\""
    echo "5. git push          # Enviar / Send"
    echo ""

    show_tip "Sempre faça 'git pull' antes de começar a trabalhar!"
    show_tip "Always do 'git pull' before starting to work!"

    pause
}

# Lição 12: Desfazer mudanças
lesson_12() {
    show_header
    echo -e "${PURPLE}═══ LIÇÃO 12: DESFAZER MUDANÇAS / UNDO CHANGES ═══${NC}"
    echo ""

    explain "Comandos para voltar atrás quando necessário."
    explain "Commands to go back when needed."
    echo ""

    echo -e "${CYAN}Descartar mudanças em arquivo / Discard file changes:${NC}"
    show_command "git restore arquivo.txt"
    explain "Volta arquivo ao estado do último commit"
    explain "Returns file to last commit state"
    echo ""

    echo -e "${CYAN}Remover do staging / Unstage:${NC}"
    show_command "git restore --staged arquivo.txt"
    explain "Remove arquivo do staging (antes do commit)"
    explain "Removes file from staging (before commit)"
    echo ""

    echo -e "${CYAN}Desfazer último commit / Undo last commit:${NC}"
    show_command "git reset --soft HEAD~1"
    explain "Desfaz commit mas mantém mudanças"
    explain "Undoes commit but keeps changes"
    echo ""

    show_command "git reset --hard HEAD~1"
    explain "Desfaz commit E remove mudanças (CUIDADO!)"
    explain "Undoes commit AND removes changes (CAREFUL!)"
    echo ""

    echo -e "${RED}ATENÇÃO / WARNING:${NC}"
    echo "--hard remove permanentemente! Use com cuidado."
    echo "--hard removes permanently! Use carefully."

    show_tip "git reflog mostra histórico completo, pode salvar você!"
    show_tip "git reflog shows complete history, can save you!"

    pause
}

# Exercício guiado
lesson_13() {
    show_header
    echo -e "${PURPLE}═══ EXERCÍCIO GUIADO / GUIDED EXERCISE ═══${NC}"
    echo ""

    echo -e "${BLUE}Vamos criar um repositório de teste juntos!${NC}"
    echo -e "${BLUE}Let's create a test repository together!${NC}"
    echo ""

    echo "Este exercício vai:"
    echo "This exercise will:"
    echo "  1. Criar pasta de teste / Create test folder"
    echo "  2. Inicializar Git / Initialize Git"
    echo "  3. Criar arquivo / Create file"
    echo "  4. Fazer primeiro commit / Make first commit"
    echo "  5. Criar branch / Create branch"
    echo "  6. Fazer mudanças / Make changes"
    echo "  7. Fazer merge / Do merge"
    echo ""

    echo -e "${YELLOW}Deseja continuar? (s/n) / Continue? (y/n)${NC} "
    read resposta

    if [[ ! "$resposta" =~ ^([sS]|[yY])$ ]]; then
        return
    fi

    echo ""
    echo -e "${CYAN}Criando pasta git-test...${NC}"
    mkdir -p ~/git-test
    cd ~/git-test

    echo -e "${GREEN}Feito! / Done!${NC}"
    pause

    show_header
    echo -e "${CYAN}Inicializando repositório Git...${NC}"
    show_command "git init"
    git init
    echo -e "${GREEN}Repositório criado! / Repository created!${NC}"
    pause

    show_header
    echo -e "${CYAN}Criando arquivo README.md...${NC}"
    echo "# Meu Projeto Teste" > README.md
    echo "Este é um projeto para aprender Git" >> README.md
    cat README.md
    echo ""
    echo -e "${GREEN}Arquivo criado! / File created!${NC}"
    pause

    show_header
    echo -e "${CYAN}Verificando status...${NC}"
    show_command "git status"
    git status
    pause

    show_header
    echo -e "${CYAN}Adicionando ao staging...${NC}"
    show_command "git add README.md"
    git add README.md
    echo ""
    git status
    pause

    show_header
    echo -e "${CYAN}Fazendo primeiro commit...${NC}"
    show_command "git commit -m \"Adiciona README inicial\""
    git commit -m "Adiciona README inicial"
    echo ""
    echo -e "${GREEN}Commit feito! / Commit made!${NC}"
    pause

    show_header
    echo -e "${CYAN}Criando nova branch...${NC}"
    show_command "git checkout -b feature/adiciona-descricao"
    git checkout -b feature/adiciona-descricao
    echo ""
    echo -e "${GREEN}Branch criada e ativada! / Branch created and activated!${NC}"
    pause

    show_header
    echo -e "${CYAN}Modificando arquivo...${NC}"
    echo "" >> README.md
    echo "## Descrição" >> README.md
    echo "Projeto para praticar comandos Git básicos." >> README.md
    cat README.md
    pause

    show_header
    echo -e "${CYAN}Fazendo commit da mudança...${NC}"
    git add README.md
    git commit -m "Adiciona seção de descrição"
    echo -e "${GREEN}Commit feito! / Commit made!${NC}"
    pause

    show_header
    echo -e "${CYAN}Voltando para main e fazendo merge...${NC}"
    show_command "git checkout main"
    git checkout main
    echo ""
    show_command "git merge feature/adiciona-descricao"
    git merge feature/adiciona-descricao
    echo ""
    echo -e "${GREEN}Merge concluído! / Merge completed!${NC}"
    pause

    show_header
    echo -e "${CYAN}Visualizando histórico final...${NC}"
    show_command "git log --oneline --graph --all"
    git log --oneline --graph --all
    echo ""

    echo -e "${GREEN}PARABÉNS! Você completou o exercício!${NC}"
    echo -e "${GREEN}CONGRATULATIONS! You completed the exercise!${NC}"
    echo ""
    echo -e "${BLUE}O repositório de teste está em ~/git-test${NC}"
    echo -e "${BLUE}The test repository is in ~/git-test${NC}"
    echo ""

    pause
}

# Loop principal
while true; do
    show_menu
    read opcao

    case $opcao in
        1) lesson_01 ;;
        2) lesson_02 ;;
        3) lesson_03 ;;
        4) lesson_04 ;;
        5) lesson_05 ;;
        6) lesson_06 ;;
        7) lesson_07 ;;
        8) lesson_08 ;;
        9) lesson_09 ;;
        10) lesson_10 ;;
        11) lesson_11 ;;
        12) lesson_12 ;;
        13) lesson_13 ;;
        0)
            echo -e "${GREEN}Obrigado por usar o Git Learn! / Thanks for using Git Learn!${NC}"
            echo -e "${BLUE}Continue praticando! / Keep practicing!${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}Opção inválida / Invalid option${NC}"
            sleep 2
            ;;
    esac
done
