#!/bin/bash

# GUIA INTERATIVO DE COMANDOS GIT / INTERACTIVE GIT COMMANDS GUIDE
# Referência completa de comandos Git organizados por categoria
# Complete Git commands reference organized by category
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
    echo -e "${CYAN}║${NC}     ${YELLOW}📚${NC}  ${PURPLE}G I T   C O M M A N D   R E F E R E N C E${NC}         ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}                                                            ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}       ${GREEN}▶  G U I A   C O M P L E T O   D E   C O M A N D O S  ${NC} ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}       ${BLUE}▶  C O M P L E T E   C O M M A N D S   G U I D E  ${NC}     ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}                                                            ${CYAN}║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
}

# Função para pausar / Function to pause
pause() {
    echo ""
    echo -e "${YELLOW}Pressione ENTER para voltar ao menu... / Press ENTER to return to menu...${NC}"
    read
}

# Função para mostrar comando / Function to show command
show_command() {
    local cmd=$1
    local desc_pt=$2
    local desc_en=$3
    local example=$4

    echo -e "${GREEN}┌────────────────────────────────────────────────────────┐${NC}"
    echo -e "${GREEN}│${NC} ${CYAN}Comando / Command:${NC} ${YELLOW}$cmd${NC}"
    echo -e "${GREEN}│${NC}"
    echo -e "${GREEN}│${NC} ${BLUE}Descrição (PT):${NC} $desc_pt"
    echo -e "${GREEN}│${NC} ${BLUE}Description (EN):${NC} $desc_en"
    if [ -n "$example" ]; then
        echo -e "${GREEN}│${NC}"
        echo -e "${GREEN}│${NC} ${PURPLE}Exemplo / Example:${NC} $example"
    fi
    echo -e "${GREEN}└────────────────────────────────────────────────────────┘${NC}"
    echo ""
}

# Menu principal / Main menu
show_menu() {
    show_header

    echo -e "${GREEN}ESCOLHA UMA CATEGORIA: / CHOOSE A CATEGORY:${NC}"
    echo ""
    echo -e "${CYAN}═══ BÁSICO / BASIC ═══${NC}"
    echo -e "  ${GREEN}1.${NC}  Configuração Inicial / Initial Setup"
    echo -e "  ${GREEN}2.${NC}  Criar e Clonar Repositórios / Create and Clone Repositories"
    echo -e "  ${GREEN}3.${NC}  Comandos Diários / Daily Commands"
    echo ""
    echo -e "${CYAN}═══ BRANCHES ═══${NC}"
    echo -e "  ${GREEN}4.${NC}  Criar e Gerenciar Branches / Create and Manage Branches"
    echo -e "  ${GREEN}5.${NC}  Merge e Rebase / Merge and Rebase"
    echo ""
    echo -e "${CYAN}═══ COLABORAÇÃO / COLLABORATION ═══${NC}"
    echo -e "  ${GREEN}6.${NC}  Trabalhar com Remotos / Working with Remotes"
    echo -e "  ${GREEN}7.${NC}  Push e Pull / Push and Pull"
    echo ""
    echo -e "${CYAN}═══ HISTÓRICO / HISTORY ═══${NC}"
    echo -e "  ${GREEN}8.${NC}  Ver Histórico e Diferenças / View History and Diffs"
    echo -e "  ${GREEN}9.${NC}  Desfazer Mudanças / Undo Changes"
    echo ""
    echo -e "${CYAN}═══ AVANÇADO / ADVANCED ═══${NC}"
    echo -e "  ${GREEN}10.${NC} Stash / Stash"
    echo -e "  ${GREEN}11.${NC} Tags / Tags"
    echo -e "  ${GREEN}12.${NC} Resolver Conflitos / Resolve Conflicts"
    echo -e "  ${GREEN}13.${NC} Comandos Avançados / Advanced Commands"
    echo ""
    echo -e "${RED}0.${NC}  Sair / Exit"
    echo ""
    echo -e "${YELLOW}Digite o número / Enter number:${NC} "
}

# Categoria 1: Configuração
category_01() {
    show_header
    echo -e "${PURPLE}═══ CONFIGURAÇÃO INICIAL / INITIAL SETUP ═══${NC}"
    echo ""

    show_command "git config --global user.name \"Seu Nome\"" \
        "Define seu nome para todos os repositórios" \
        "Sets your name for all repositories"

    show_command "git config --global user.email \"email@example.com\"" \
        "Define seu email para todos os repositórios" \
        "Sets your email for all repositories"

    show_command "git config --list" \
        "Lista todas as configurações do Git" \
        "Lists all Git configurations"

    show_command "git config --global core.editor \"vim\"" \
        "Define o editor de texto padrão" \
        "Sets the default text editor"

    show_command "git config --global color.ui auto" \
        "Habilita cores na saída do Git" \
        "Enables colors in Git output"

    echo -e "${CYAN}DICA: / TIP:${NC}"
    echo -e "Use --global para configurar para todos os repositórios"
    echo -e "Use --global to configure for all repositories"
    echo -e "Omita --global para configurar apenas o repositório atual"
    echo -e "Omit --global to configure only current repository"

    pause
}

# Categoria 2: Criar e Clonar
category_02() {
    show_header
    echo -e "${PURPLE}═══ CRIAR E CLONAR REPOSITÓRIOS / CREATE AND CLONE ═══${NC}"
    echo ""

    show_command "git init" \
        "Inicializa um novo repositório Git na pasta atual" \
        "Initializes a new Git repository in current folder"

    show_command "git clone <url>" \
        "Clona um repositório remoto" \
        "Clones a remote repository" \
        "git clone https://github.com/user/repo.git"

    show_command "git clone <url> <nome-pasta>" \
        "Clona um repositório em uma pasta específica" \
        "Clones a repository into a specific folder" \
        "git clone https://github.com/user/repo.git meu-projeto"

    echo -e "${CYAN}QUANDO USAR: / WHEN TO USE:${NC}"
    echo -e "  ${GREEN}✓${NC} git init - Para criar novo projeto do zero"
    echo -e "  ${GREEN}✓${NC} git clone - Para começar a trabalhar em projeto existente"

    pause
}

# Categoria 3: Comandos Diários
category_03() {
    show_header
    echo -e "${PURPLE}═══ COMANDOS DIÁRIOS / DAILY COMMANDS ═══${NC}"
    echo ""

    show_command "git status" \
        "Mostra o estado atual do repositório" \
        "Shows current repository state"

    show_command "git add <arquivo>" \
        "Adiciona arquivo específico ao staging" \
        "Adds specific file to staging" \
        "git add index.html"

    show_command "git add ." \
        "Adiciona TODOS os arquivos modificados" \
        "Adds ALL modified files"

    show_command "git add -p" \
        "Adiciona mudanças interativamente (parte por parte)" \
        "Adds changes interactively (piece by piece)"

    show_command "git commit -m \"mensagem\"" \
        "Cria um commit com mensagem" \
        "Creates a commit with message" \
        "git commit -m \"Adiciona página de login\""

    show_command "git commit -am \"mensagem\"" \
        "Adiciona E commita arquivos rastreados (atalho)" \
        "Adds AND commits tracked files (shortcut)"

    echo -e "${CYAN}WORKFLOW TÍPICO: / TYPICAL WORKFLOW:${NC}"
    echo -e "  1. git status         ${BLUE}# Ver o que mudou${NC}"
    echo -e "  2. git add .          ${BLUE}# Adicionar tudo${NC}"
    echo -e "  3. git commit -m \"msg\" ${BLUE}# Salvar mudanças${NC}"

    pause
}

# Categoria 4: Branches
category_04() {
    show_header
    echo -e "${PURPLE}═══ CRIAR E GERENCIAR BRANCHES / CREATE AND MANAGE BRANCHES ═══${NC}"
    echo ""

    show_command "git branch" \
        "Lista todas as branches locais" \
        "Lists all local branches"

    show_command "git branch -a" \
        "Lista TODAS as branches (locais e remotas)" \
        "Lists ALL branches (local and remote)"

    show_command "git branch <nome>" \
        "Cria uma nova branch" \
        "Creates a new branch" \
        "git branch feature/login"

    show_command "git checkout <branch>" \
        "Muda para outra branch" \
        "Switches to another branch" \
        "git checkout main"

    show_command "git checkout -b <nome>" \
        "Cria E muda para nova branch (atalho)" \
        "Creates AND switches to new branch (shortcut)" \
        "git checkout -b feature/novo-recurso"

    show_command "git branch -d <branch>" \
        "Deleta branch local (seguro)" \
        "Deletes local branch (safe)" \
        "git branch -d feature/antiga"

    show_command "git branch -D <branch>" \
        "Deleta branch local (forçado)" \
        "Deletes local branch (forced)"

    show_command "git branch -m <novo-nome>" \
        "Renomeia a branch atual" \
        "Renames current branch"

    echo -e "${CYAN}CONVENÇÕES DE NOMES: / NAMING CONVENTIONS:${NC}"
    echo -e "  feature/descricao  ${BLUE}# Nova funcionalidade${NC}"
    echo -e "  fix/bug-123        ${BLUE}# Correção de bug${NC}"
    echo -e "  hotfix/critico     ${BLUE}# Correção urgente${NC}"

    pause
}

# Categoria 5: Merge e Rebase
category_05() {
    show_header
    echo -e "${PURPLE}═══ MERGE E REBASE / MERGE AND REBASE ═══${NC}"
    echo ""

    show_command "git merge <branch>" \
        "Mescla outra branch na branch atual" \
        "Merges another branch into current branch" \
        "git merge feature/login"

    show_command "git merge --no-ff <branch>" \
        "Merge sem fast-forward (cria commit de merge)" \
        "Merge without fast-forward (creates merge commit)"

    show_command "git merge --abort" \
        "Cancela um merge em andamento" \
        "Aborts an ongoing merge"

    show_command "git rebase <branch>" \
        "Reaplica commits em cima de outra branch" \
        "Reapplies commits on top of another branch"

    show_command "git rebase -i HEAD~3" \
        "Rebase interativo dos últimos 3 commits" \
        "Interactive rebase of last 3 commits"

    show_command "git rebase --abort" \
        "Cancela um rebase em andamento" \
        "Aborts an ongoing rebase"

    show_command "git rebase --continue" \
        "Continua rebase após resolver conflitos" \
        "Continues rebase after resolving conflicts"

    echo -e "${CYAN}QUANDO USAR: / WHEN TO USE:${NC}"
    echo -e "  ${GREEN}Merge:${NC}  Preserva histórico completo, melhor para branches públicas"
    echo -e "  ${GREEN}Rebase:${NC} Cria histórico linear, melhor para branches locais"

    pause
}

# Categoria 6: Remotos
category_06() {
    show_header
    echo -e "${PURPLE}═══ TRABALHAR COM REMOTOS / WORKING WITH REMOTES ═══${NC}"
    echo ""

    show_command "git remote -v" \
        "Lista repositórios remotos configurados" \
        "Lists configured remote repositories"

    show_command "git remote add origin <url>" \
        "Adiciona repositório remoto chamado 'origin'" \
        "Adds remote repository called 'origin'" \
        "git remote add origin https://github.com/user/repo.git"

    show_command "git remote remove origin" \
        "Remove o repositório remoto" \
        "Removes the remote repository"

    show_command "git remote rename origin upstream" \
        "Renomeia um remoto" \
        "Renames a remote"

    show_command "git remote show origin" \
        "Mostra informações sobre o remoto" \
        "Shows information about the remote"

    echo -e "${CYAN}CONVENÇÕES: / CONVENTIONS:${NC}"
    echo -e "  ${GREEN}origin${NC}    - Seu fork / repositório principal"
    echo -e "  ${GREEN}upstream${NC}  - Repositório original (quando é fork)"

    pause
}

# Categoria 7: Push e Pull
category_07() {
    show_header
    echo -e "${PURPLE}═══ PUSH E PULL / PUSH AND PULL ═══${NC}"
    echo ""

    show_command "git fetch" \
        "Busca mudanças do remoto SEM mesclar" \
        "Fetches changes from remote WITHOUT merging"

    show_command "git fetch --all --prune" \
        "Busca tudo e remove branches remotos obsoletos" \
        "Fetches everything and removes obsolete remote branches"

    show_command "git pull" \
        "Busca E mescla mudanças do remoto (fetch + merge)" \
        "Fetches AND merges changes from remote (fetch + merge)"

    show_command "git pull --rebase" \
        "Busca e reaplica seus commits em cima" \
        "Fetches and reapplies your commits on top"

    show_command "git push" \
        "Envia commits para o remoto" \
        "Sends commits to remote"

    show_command "git push -u origin <branch>" \
        "Primeiro push: configura upstream tracking" \
        "First push: sets up upstream tracking" \
        "git push -u origin feature/login"

    show_command "git push --force-with-lease" \
        "Force push seguro (verifica mudanças remotas)" \
        "Safe force push (checks remote changes)"

    show_command "git push origin --delete <branch>" \
        "Deleta branch remota" \
        "Deletes remote branch"

    echo -e "${RED}ATENÇÃO: / WARNING:${NC}"
    echo -e "NUNCA use --force em branches compartilhadas!"
    echo -e "NEVER use --force on shared branches!"

    pause
}

# Categoria 8: Histórico
category_08() {
    show_header
    echo -e "${PURPLE}═══ VER HISTÓRICO E DIFERENÇAS / VIEW HISTORY AND DIFFS ═══${NC}"
    echo ""

    show_command "git log" \
        "Mostra histórico de commits" \
        "Shows commit history"

    show_command "git log --oneline" \
        "Histórico resumido (1 linha por commit)" \
        "Summarized history (1 line per commit)"

    show_command "git log --graph --all --decorate" \
        "Histórico visual com todas as branches" \
        "Visual history with all branches"

    show_command "git log --author=\"Nome\"" \
        "Filtra commits por autor" \
        "Filters commits by author"

    show_command "git log -p" \
        "Mostra histórico com diferenças" \
        "Shows history with diffs"

    show_command "git diff" \
        "Mostra mudanças não staged" \
        "Shows unstaged changes"

    show_command "git diff --staged" \
        "Mostra mudanças staged" \
        "Shows staged changes"

    show_command "git diff HEAD" \
        "Mostra todas as mudanças (staged + unstaged)" \
        "Shows all changes (staged + unstaged)"

    show_command "git diff branch1..branch2" \
        "Compara duas branches" \
        "Compares two branches"

    show_command "git show <hash>" \
        "Mostra detalhes de um commit específico" \
        "Shows details of a specific commit"

    show_command "git blame <arquivo>" \
        "Mostra quem modificou cada linha" \
        "Shows who modified each line"

    echo -e "${CYAN}DICA: / TIP:${NC}"
    echo -e "Pressione 'q' para sair do git log"
    echo -e "Press 'q' to exit git log"

    pause
}

# Categoria 9: Desfazer
category_09() {
    show_header
    echo -e "${PURPLE}═══ DESFAZER MUDANÇAS / UNDO CHANGES ═══${NC}"
    echo ""

    show_command "git restore <arquivo>" \
        "Descarta mudanças em arquivo (Git 2.23+)" \
        "Discards changes in file (Git 2.23+)"

    show_command "git restore --staged <arquivo>" \
        "Remove arquivo do staging" \
        "Removes file from staging"

    show_command "git checkout -- <arquivo>" \
        "Descarta mudanças (versão antiga)" \
        "Discards changes (old version)"

    show_command "git reset HEAD <arquivo>" \
        "Remove arquivo do staging (versão antiga)" \
        "Removes file from staging (old version)"

    show_command "git reset --soft HEAD~1" \
        "Desfaz último commit, MANTÉM mudanças staged" \
        "Undoes last commit, KEEPS changes staged"

    show_command "git reset --mixed HEAD~1" \
        "Desfaz último commit, remove do staging" \
        "Undoes last commit, removes from staging"

    show_command "git reset --hard HEAD~1" \
        "Desfaz último commit, DESCARTA mudanças" \
        "Undoes last commit, DISCARDS changes"

    show_command "git revert <hash>" \
        "Cria novo commit desfazendo mudanças" \
        "Creates new commit undoing changes"

    show_command "git clean -n" \
        "Mostra arquivos não rastreados que seriam removidos" \
        "Shows untracked files that would be removed"

    show_command "git clean -fd" \
        "Remove arquivos e diretórios não rastreados" \
        "Removes untracked files and directories"

    echo -e "${RED}CUIDADO: / CAREFUL:${NC}"
    echo -e "  ${RED}--hard${NC} e ${RED}clean -fd${NC} removem permanentemente!"
    echo -e "  ${RED}--hard${NC} and ${RED}clean -fd${NC} remove permanently!"

    pause
}

# Categoria 10: Stash
category_10() {
    show_header
    echo -e "${PURPLE}═══ STASH (GUARDAR TEMPORARIAMENTE) ═══${NC}"
    echo ""

    show_command "git stash" \
        "Guarda mudanças temporariamente" \
        "Saves changes temporarily"

    show_command "git stash push -m \"mensagem\"" \
        "Stash com mensagem descritiva" \
        "Stash with descriptive message"

    show_command "git stash list" \
        "Lista todos os stashes salvos" \
        "Lists all saved stashes"

    show_command "git stash pop" \
        "Recupera último stash e remove da lista" \
        "Recovers last stash and removes from list"

    show_command "git stash apply" \
        "Aplica stash mas mantém na lista" \
        "Applies stash but keeps in list"

    show_command "git stash apply stash@{2}" \
        "Aplica stash específico" \
        "Applies specific stash"

    show_command "git stash drop stash@{0}" \
        "Remove stash específico" \
        "Removes specific stash"

    show_command "git stash clear" \
        "Remove TODOS os stashes" \
        "Removes ALL stashes"

    echo -e "${CYAN}QUANDO USAR: / WHEN TO USE:${NC}"
    echo -e "  ${GREEN}✓${NC} Precisa mudar de branch mas não quer commitar ainda"
    echo -e "  ${GREEN}✓${NC} Quer puxar mudanças mas tem modificações locais"
    echo -e "  ${GREEN}✓${NC} Quer testar algo sem perder trabalho atual"

    pause
}

# Categoria 11: Tags
category_11() {
    show_header
    echo -e "${PURPLE}═══ TAGS (MARCAÇÕES) ═══${NC}"
    echo ""

    show_command "git tag" \
        "Lista todas as tags" \
        "Lists all tags"

    show_command "git tag v1.0.0" \
        "Cria tag simples (lightweight)" \
        "Creates simple tag (lightweight)"

    show_command "git tag -a v1.0.0 -m \"Versão 1.0\"" \
        "Cria tag anotada com mensagem" \
        "Creates annotated tag with message"

    show_command "git tag -a v1.0.0 <hash>" \
        "Cria tag em commit específico" \
        "Creates tag on specific commit"

    show_command "git show v1.0.0" \
        "Mostra informações da tag" \
        "Shows tag information"

    show_command "git push origin v1.0.0" \
        "Envia tag específica para remoto" \
        "Sends specific tag to remote"

    show_command "git push origin --tags" \
        "Envia TODAS as tags para remoto" \
        "Sends ALL tags to remote"

    show_command "git tag -d v1.0.0" \
        "Deleta tag local" \
        "Deletes local tag"

    show_command "git push origin --delete v1.0.0" \
        "Deleta tag remota" \
        "Deletes remote tag"

    echo -e "${CYAN}CONVENÇÃO SEMVER: / SEMVER CONVENTION:${NC}"
    echo -e "  v1.0.0  -  ${BLUE}MAJOR.MINOR.PATCH${NC}"
    echo -e "  Major: mudanças incompatíveis / breaking changes"
    echo -e "  Minor: novas funcionalidades / new features"
    echo -e "  Patch: correções de bugs / bug fixes"

    pause
}

# Categoria 12: Conflitos
category_12() {
    show_header
    echo -e "${PURPLE}═══ RESOLVER CONFLITOS / RESOLVE CONFLICTS ═══${NC}"
    echo ""

    echo -e "${YELLOW}ENTENDENDO CONFLITOS: / UNDERSTANDING CONFLICTS:${NC}"
    echo ""
    echo -e "Conflitos acontecem quando as mesmas linhas foram modificadas"
    echo -e "Conflicts happen when the same lines were modified"
    echo -e "em branches diferentes."
    echo -e "in different branches."
    echo ""

    show_command "git status" \
        "Ver arquivos em conflito" \
        "View conflicted files"

    show_command "git diff" \
        "Ver detalhes dos conflitos" \
        "View conflict details"

    echo -e "${YELLOW}MARCADORES DE CONFLITO: / CONFLICT MARKERS:${NC}"
    echo ""
    echo -e "  ${RED}<<<<<<< HEAD${NC}"
    echo -e "  Sua versão / Your version"
    echo -e "  ${BLUE}=======${NC}"
    echo -e "  Versão da outra branch / Other branch version"
    echo -e "  ${RED}>>>>>>> branch-name${NC}"
    echo ""

    show_command "git add <arquivo>" \
        "Marca conflito como resolvido" \
        "Marks conflict as resolved"

    show_command "git commit" \
        "Finaliza merge após resolver conflitos" \
        "Completes merge after resolving conflicts"

    show_command "git merge --abort" \
        "Cancela merge e volta ao estado anterior" \
        "Aborts merge and returns to previous state"

    show_command "git checkout --ours <arquivo>" \
        "Aceita versão local em conflito" \
        "Accepts local version in conflict"

    show_command "git checkout --theirs <arquivo>" \
        "Aceita versão remota em conflito" \
        "Accepts remote version in conflict"

    echo -e "${CYAN}PASSOS PARA RESOLVER: / STEPS TO RESOLVE:${NC}"
    echo -e "  1. git status                    ${BLUE}# Ver conflitos${NC}"
    echo -e "  2. Abrir arquivos e editar       ${BLUE}# Resolver manualmente${NC}"
    echo -e "  3. Remover marcadores            ${BLUE}# (<<<<<<<, =======, >>>>>>>)${NC}"
    echo -e "  4. git add <arquivo>             ${BLUE}# Marcar como resolvido${NC}"
    echo -e "  5. git commit                    ${BLUE}# Finalizar merge${NC}"

    pause
}

# Categoria 13: Avançado
category_13() {
    show_header
    echo -e "${PURPLE}═══ COMANDOS AVANÇADOS / ADVANCED COMMANDS ═══${NC}"
    echo ""

    show_command "git cherry-pick <hash>" \
        "Aplica commit específico de outra branch" \
        "Applies specific commit from another branch"

    show_command "git reflog" \
        "Mostra histórico completo (inclui commits 'perdidos')" \
        "Shows complete history (includes 'lost' commits)"

    show_command "git bisect start" \
        "Inicia busca binária por bug" \
        "Starts binary search for bug"

    show_command "git bisect good <hash>" \
        "Marca commit como bom" \
        "Marks commit as good"

    show_command "git bisect bad <hash>" \
        "Marca commit como ruim" \
        "Marks commit as bad"

    show_command "git submodule add <url>" \
        "Adiciona submódulo (repositório dentro de repositório)" \
        "Adds submodule (repository inside repository)"

    show_command "git submodule update --init --recursive" \
        "Atualiza submódulos" \
        "Updates submodules"

    show_command "git worktree add <path> <branch>" \
        "Cria worktree (múltiplas cópias do repo)" \
        "Creates worktree (multiple repo copies)"

    show_command "git gc" \
        "Garbage collection (otimiza repositório)" \
        "Garbage collection (optimizes repository)"

    show_command "git archive --format=zip HEAD > projeto.zip" \
        "Cria arquivo ZIP do projeto" \
        "Creates ZIP file of project"

    echo -e "${CYAN}DICA: / TIP:${NC}"
    echo -e "Use git reflog para recuperar commits 'perdidos'"
    echo -e "Use git reflog to recover 'lost' commits"

    pause
}

# Loop principal / Main loop
while true; do
    show_menu
    read option

    case $option in
        1) category_01 ;;
        2) category_02 ;;
        3) category_03 ;;
        4) category_04 ;;
        5) category_05 ;;
        6) category_06 ;;
        7) category_07 ;;
        8) category_08 ;;
        9) category_09 ;;
        10) category_10 ;;
        11) category_11 ;;
        12) category_12 ;;
        13) category_13 ;;
        0)
            clear
            echo -e "${GREEN}Obrigado por usar o Git Command Reference!${NC}"
            echo -e "${GREEN}Thank you for using Git Command Reference!${NC}"
            echo ""
            echo -e "${BLUE}Continue praticando e explorando Git!${NC}"
            echo -e "${BLUE}Keep practicing and exploring Git!${NC}"
            echo ""
            exit 0
            ;;
        *)
            echo -e "${RED}Opção inválida / Invalid option${NC}"
            sleep 1
            ;;
    esac
done
