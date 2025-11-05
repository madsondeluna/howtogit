#!/bin/bash

# GIT SIMULATOR / SIMULADOR GIT
# Ambiente seguro para praticar Git
# Safe environment to practice Git
# Autor / Author: Madson Aragão

# Cores / Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Diretório temporário / Temporary directory
SIMULATOR_DIR=""
ORIGINAL_DIR=$(pwd)

# Função para exibir cabeçalho / Function to display header
show_header() {
    clear
    echo ""
    echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${NC}                                                            ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}    ${YELLOW}[${NC}${GREEN}ᗧ${NC}${YELLOW}]${NC}  ${PURPLE}G I T   L A B   -   Z O N A   D E   T R E I N O${NC}    ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}                                                            ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}        ${GREEN}▶  P R A T I Q U E   S E M   M E D O  ◀${NC}          ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}        ${BLUE}▶  P R A C T I C E   W I T H O U T   F E A R  ◀${NC}  ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}                                                            ${CYAN}║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
}

# Função para pausar / Function to pause
pause() {
    echo ""
    echo -e "${YELLOW}Pressione ENTER para continuar...${NC}"
    echo -e "${YELLOW}Press ENTER to continue...${NC}"
    read
}

# Função para criar ambiente de simulação / Function to create simulation environment
setup_simulator() {
    show_header
    echo -e "${CYAN}═══ Configurando Simulador / Setting Up Simulator ═══${NC}"
    echo ""

    # Criar diretório temporário
    SIMULATOR_DIR=$(mktemp -d -t git-simulator-XXXXXX)

    echo -e "${GREEN}Ambiente de simulação criado em:${NC}"
    echo -e "${GREEN}Simulation environment created at:${NC}"
    echo -e "${CYAN}$SIMULATOR_DIR${NC}"
    echo ""

    # Ir para o diretório
    cd "$SIMULATOR_DIR" || exit

    # Inicializar repositório Git
    git init > /dev/null 2>&1
    git config user.name "Git Simulator" > /dev/null 2>&1
    git config user.email "simulator@example.com" > /dev/null 2>&1

    # Criar arquivo inicial
    echo "# Projeto de Teste / Test Project" > README.md
    echo "" >> README.md
    echo "Este é um ambiente seguro para praticar Git!" >> README.md
    echo "This is a safe environment to practice Git!" >> README.md

    git add README.md > /dev/null 2>&1
    git commit -m "Initial commit" > /dev/null 2>&1

    echo -e "${GREEN}Repositório Git inicializado!${NC}"
    echo -e "${GREEN}Git repository initialized!${NC}"
    echo ""
    echo -e "${BLUE}Você está seguro para experimentar!${NC}"
    echo -e "${BLUE}You are safe to experiment!${NC}"

    pause
}

# Função para visualizar estado / Function to visualize state
show_state() {
    show_header
    echo -e "${CYAN}═══ Estado Atual do Repositório / Current Repository State ═══${NC}"
    echo ""

    # Branch atual
    local branch=$(git branch --show-current 2>/dev/null || echo "desconhecida/unknown")
    echo -e "${BLUE}Branch atual / Current branch:${NC} ${GREEN}$branch${NC}"
    echo ""

    # Status
    echo -e "${YELLOW}Status:${NC}"
    git status -s
    echo ""

    # Branches
    echo -e "${YELLOW}Branches disponíveis / Available branches:${NC}"
    git branch -a
    echo ""

    # Últimos commits
    echo -e "${YELLOW}Últimos 5 commits / Last 5 commits:${NC}"
    git log --oneline --graph --all -n 5 2>/dev/null || echo "Nenhum commit ainda / No commits yet"
    echo ""

    # Arquivos no diretório
    echo -e "${YELLOW}Arquivos no diretório / Files in directory:${NC}"
    ls -la | grep -v "^total" | grep -v "^d.*\.$" | grep -v ".git$"

    pause
}

# Menu principal / Main menu
show_menu() {
    show_header

    local branch=$(git branch --show-current 2>/dev/null || echo "desconhecida/unknown")
    echo -e "${GREEN}Branch: ${CYAN}$branch${NC}"
    echo -e "${BLUE}Ambiente: ${CYAN}$SIMULATOR_DIR${NC}"
    echo ""

    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}BÁSICO / BASIC${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}1.${NC}  Ver estado atual / View current state"
    echo -e "${GREEN}2.${NC}  Criar novo arquivo / Create new file"
    echo -e "${GREEN}3.${NC}  Modificar arquivo / Modify file"
    echo -e "${GREEN}4.${NC}  Fazer commit / Make commit"
    echo -e "${GREEN}5.${NC}  Ver histórico / View history"
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}BRANCHES${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}6.${NC}  Criar nova branch / Create new branch"
    echo -e "${GREEN}7.${NC}  Mudar de branch / Switch branch"
    echo -e "${GREEN}8.${NC}  Fazer merge / Merge branches"
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}AVANÇADO / ADVANCED${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}9.${NC}  Simular conflito / Simulate conflict"
    echo -e "${GREEN}10.${NC} Desfazer último commit / Undo last commit"
    echo -e "${GREEN}11.${NC} Ver diferenças / View differences"
    echo -e "${GREEN}12.${NC} Stash mudanças / Stash changes"
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}EXERCÍCIOS / EXERCISES${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}13.${NC} Exercício guiado / Guided exercise"
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo -e "${RED}0.${NC}  Sair e limpar / Exit and clean up"
    echo ""
    echo -e "${YELLOW}Escolha uma opção / Choose an option:${NC} "
}

# 1. Ver estado atual
view_state() {
    show_state
}

# 2. Criar novo arquivo
create_file() {
    show_header
    echo -e "${CYAN}═══ Criar Novo Arquivo / Create New File ═══${NC}"
    echo ""

    echo -e "${YELLOW}Nome do arquivo / File name:${NC} "
    read filename

    if [ -z "$filename" ]; then
        echo -e "${RED}Nome não pode ser vazio / Name cannot be empty${NC}"
        pause
        return
    fi

    echo -e "${YELLOW}Conteúdo do arquivo / File content:${NC} "
    read content

    echo "$content" > "$filename"

    echo ""
    echo -e "${GREEN}Arquivo '$filename' criado!${NC}"
    echo -e "${GREEN}File '$filename' created!${NC}"
    echo ""
    echo -e "${BLUE}Próximos passos / Next steps:${NC}"
    echo -e "  ${CYAN}git add $filename${NC}"
    echo -e "  ${CYAN}git commit -m \"Adiciona $filename\"${NC}"

    pause
}

# 3. Modificar arquivo
modify_file() {
    show_header
    echo -e "${CYAN}═══ Modificar Arquivo / Modify File ═══${NC}"
    echo ""

    echo -e "${YELLOW}Arquivos disponíveis / Available files:${NC}"
    ls -1 | grep -v ".git"
    echo ""

    echo -e "${YELLOW}Nome do arquivo / File name:${NC} "
    read filename

    if [ ! -f "$filename" ]; then
        echo -e "${RED}Arquivo não existe / File does not exist${NC}"
        pause
        return
    fi

    echo -e "${YELLOW}Conteúdo atual / Current content:${NC}"
    cat "$filename"
    echo ""

    echo -e "${YELLOW}Novo conteúdo para adicionar / New content to add:${NC} "
    read content

    echo "" >> "$filename"
    echo "$content" >> "$filename"

    echo ""
    echo -e "${GREEN}Arquivo '$filename' modificado!${NC}"
    echo -e "${GREEN}File '$filename' modified!${NC}"
    echo ""
    echo -e "${BLUE}Use 'git diff' para ver as mudanças${NC}"
    echo -e "${BLUE}Use 'git diff' to see changes${NC}"

    pause
}

# 4. Fazer commit
make_commit() {
    show_header
    echo -e "${CYAN}═══ Fazer Commit / Make Commit ═══${NC}"
    echo ""

    echo -e "${YELLOW}Arquivos modificados / Modified files:${NC}"
    git status -s
    echo ""

    echo -e "${YELLOW}Adicionar todos os arquivos? (s/n) / Add all files? (y/n):${NC} "
    read add_all

    if [[ "$add_all" =~ ^([sS]|[yY])$ ]]; then
        git add .
    else
        echo -e "${YELLOW}Nome do arquivo / File name:${NC} "
        read filename
        git add "$filename" 2>/dev/null
    fi

    echo ""
    echo -e "${YELLOW}Mensagem do commit / Commit message:${NC} "
    read message

    if [ -z "$message" ]; then
        echo -e "${RED}Mensagem não pode ser vazia / Message cannot be empty${NC}"
        pause
        return
    fi

    git commit -m "$message"

    if [ $? -eq 0 ]; then
        echo ""
        echo -e "${GREEN}Commit realizado com sucesso!${NC}"
        echo -e "${GREEN}Commit completed successfully!${NC}"
    fi

    pause
}

# 5. Ver histórico
view_history() {
    show_header
    echo -e "${CYAN}═══ Histórico de Commits / Commit History ═══${NC}"
    echo ""

    echo -e "${GREEN}1.${NC} Histórico simples / Simple history"
    echo -e "${GREEN}2.${NC} Histórico com gráfico / History with graph"
    echo -e "${GREEN}3.${NC} Histórico detalhado / Detailed history"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read option

    case $option in
        1)
            git log --oneline
            ;;
        2)
            git log --oneline --graph --all --decorate
            ;;
        3)
            git log
            ;;
        *)
            echo -e "${RED}Opção inválida / Invalid option${NC}"
            ;;
    esac

    pause
}

# 6. Criar nova branch
create_branch() {
    show_header
    echo -e "${CYAN}═══ Criar Nova Branch / Create New Branch ═══${NC}"
    echo ""

    echo -e "${YELLOW}Nome da branch / Branch name:${NC} "
    read branch_name

    if [ -z "$branch_name" ]; then
        echo -e "${RED}Nome não pode ser vazio / Name cannot be empty${NC}"
        pause
        return
    fi

    git checkout -b "$branch_name"

    if [ $? -eq 0 ]; then
        echo ""
        echo -e "${GREEN}Branch '$branch_name' criada e ativada!${NC}"
        echo -e "${GREEN}Branch '$branch_name' created and activated!${NC}"
    fi

    pause
}

# 7. Mudar de branch
switch_branch() {
    show_header
    echo -e "${CYAN}═══ Mudar de Branch / Switch Branch ═══${NC}"
    echo ""

    echo -e "${YELLOW}Branches disponíveis / Available branches:${NC}"
    git branch
    echo ""

    echo -e "${YELLOW}Nome da branch / Branch name:${NC} "
    read branch_name

    if [ -z "$branch_name" ]; then
        echo -e "${RED}Nome não pode ser vazio / Name cannot be empty${NC}"
        pause
        return
    fi

    git checkout "$branch_name"

    if [ $? -eq 0 ]; then
        echo ""
        echo -e "${GREEN}Mudou para branch '$branch_name'${NC}"
        echo -e "${GREEN}Switched to branch '$branch_name'${NC}"
    fi

    pause
}

# 8. Fazer merge
merge_branches() {
    show_header
    echo -e "${CYAN}═══ Merge de Branches / Merge Branches ═══${NC}"
    echo ""

    local current_branch=$(git branch --show-current)
    echo -e "${BLUE}Branch atual / Current branch:${NC} ${GREEN}$current_branch${NC}"
    echo ""

    echo -e "${YELLOW}Branches disponíveis / Available branches:${NC}"
    git branch
    echo ""

    echo -e "${YELLOW}Qual branch você quer mesclar na atual?${NC}"
    echo -e "${YELLOW}Which branch do you want to merge into current?${NC} "
    read branch_name

    if [ -z "$branch_name" ]; then
        echo -e "${RED}Nome não pode ser vazio / Name cannot be empty${NC}"
        pause
        return
    fi

    git merge "$branch_name"

    if [ $? -eq 0 ]; then
        echo ""
        echo -e "${GREEN}Merge realizado com sucesso!${NC}"
        echo -e "${GREEN}Merge completed successfully!${NC}"
    else
        echo ""
        echo -e "${RED}Conflitos detectados! Resolva manualmente.${NC}"
        echo -e "${RED}Conflicts detected! Resolve manually.${NC}"
    fi

    pause
}

# 9. Simular conflito
simulate_conflict() {
    show_header
    echo -e "${CYAN}═══ Simular Conflito / Simulate Conflict ═══${NC}"
    echo ""

    echo -e "${BLUE}Criando cenário de conflito...${NC}"
    echo -e "${BLUE}Creating conflict scenario...${NC}"
    echo ""

    # Salvar branch atual
    local original_branch=$(git branch --show-current)

    # Criar arquivo na branch atual
    echo "Conteúdo da branch $original_branch" > conflito.txt
    git add conflito.txt
    git commit -m "Adiciona conflito.txt em $original_branch"

    # Criar nova branch
    git checkout -b branch-conflito

    # Modificar o mesmo arquivo
    echo "Conteúdo DIFERENTE da branch branch-conflito" > conflito.txt
    git add conflito.txt
    git commit -m "Modifica conflito.txt em branch-conflito"

    # Voltar para branch original
    git checkout "$original_branch"

    # Modificar o mesmo arquivo novamente
    echo "Outra modificação na branch $original_branch" > conflito.txt
    git add conflito.txt
    git commit -m "Modifica conflito.txt em $original_branch"

    echo -e "${GREEN}Cenário criado!${NC}"
    echo -e "${GREEN}Scenario created!${NC}"
    echo ""
    echo -e "${YELLOW}Agora tente:${NC}"
    echo -e "${YELLOW}Now try:${NC}"
    echo -e "  ${CYAN}git merge branch-conflito${NC}"
    echo ""
    echo -e "${BLUE}Você verá um conflito que precisa resolver manualmente!${NC}"
    echo -e "${BLUE}You will see a conflict that needs manual resolution!${NC}"

    pause
}

# 10. Desfazer último commit
undo_commit() {
    show_header
    echo -e "${CYAN}═══ Desfazer Último Commit / Undo Last Commit ═══${NC}"
    echo ""

    echo -e "${YELLOW}Como você quer desfazer? / How do you want to undo?${NC}"
    echo -e "${GREEN}1.${NC} --soft (mantém mudanças staged / keep changes staged)"
    echo -e "${GREEN}2.${NC} --mixed (remove do staging / unstage changes)"
    echo -e "${GREEN}3.${NC} --hard (descarta tudo / discard everything)"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read option

    case $option in
        1)
            git reset --soft HEAD~1
            echo -e "${GREEN}Commit desfeito, mudanças mantidas no staging${NC}"
            ;;
        2)
            git reset --mixed HEAD~1
            echo -e "${GREEN}Commit desfeito, mudanças removidas do staging${NC}"
            ;;
        3)
            echo -e "${RED}CUIDADO! Isso vai descartar todas as mudanças!${NC}"
            echo -e "${RED}WARNING! This will discard all changes!${NC}"
            echo -e "${YELLOW}Tem certeza? (s/n) / Are you sure? (y/n)${NC} "
            read confirm
            if [[ "$confirm" =~ ^([sS]|[yY])$ ]]; then
                git reset --hard HEAD~1
                echo -e "${GREEN}Commit desfeito e mudanças descartadas${NC}"
            fi
            ;;
        *)
            echo -e "${RED}Opção inválida / Invalid option${NC}"
            ;;
    esac

    pause
}

# 11. Ver diferenças
view_diff() {
    show_header
    echo -e "${CYAN}═══ Ver Diferenças / View Differences ═══${NC}"
    echo ""

    echo -e "${GREEN}1.${NC} Diferenças não staged / Unstaged differences"
    echo -e "${GREEN}2.${NC} Diferenças staged / Staged differences"
    echo -e "${GREEN}3.${NC} Diferença entre commits / Difference between commits"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read option

    case $option in
        1)
            git diff
            ;;
        2)
            git diff --staged
            ;;
        3)
            echo -e "${YELLOW}Hash do primeiro commit:${NC} "
            read commit1
            echo -e "${YELLOW}Hash do segundo commit:${NC} "
            read commit2
            git diff "$commit1" "$commit2"
            ;;
        *)
            echo -e "${RED}Opção inválida / Invalid option${NC}"
            ;;
    esac

    pause
}

# 12. Stash mudanças
stash_changes() {
    show_header
    echo -e "${CYAN}═══ Stash / Stash ═══${NC}"
    echo ""

    echo -e "${GREEN}1.${NC} Salvar mudanças (stash) / Save changes (stash)"
    echo -e "${GREEN}2.${NC} Ver stashes / View stashes"
    echo -e "${GREEN}3.${NC} Recuperar último stash / Recover last stash"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read option

    case $option in
        1)
            echo -e "${YELLOW}Mensagem (opcional) / Message (optional):${NC} "
            read message
            if [ -z "$message" ]; then
                git stash
            else
                git stash push -m "$message"
            fi
            echo -e "${GREEN}Mudanças guardadas!${NC}"
            ;;
        2)
            git stash list
            ;;
        3)
            git stash pop
            echo -e "${GREEN}Stash recuperado!${NC}"
            ;;
        *)
            echo -e "${RED}Opção inválida / Invalid option${NC}"
            ;;
    esac

    pause
}

# 13. Exercício guiado
guided_exercise() {
    show_header
    echo -e "${CYAN}═══ Exercício Guiado / Guided Exercise ═══${NC}"
    echo ""

    echo -e "${BLUE}Vamos praticar um workflow completo!${NC}"
    echo -e "${BLUE}Let's practice a complete workflow!${NC}"
    echo ""

    echo -e "${YELLOW}TAREFA / TASK:${NC}"
    echo -e "1. Criar uma branch chamada 'feature/novo-recurso'"
    echo -e "2. Criar arquivo 'recurso.txt' com algum conteúdo"
    echo -e "3. Fazer commit das mudanças"
    echo -e "4. Voltar para a branch main"
    echo -e "5. Fazer merge da feature"
    echo ""

    echo -e "${GREEN}Pressione ENTER quando completar cada passo${NC}"
    echo -e "${GREEN}Press ENTER when you complete each step${NC}"
    read

    echo -e "${CYAN}Verificando...${NC}"

    # Verificar se a branch existe
    if git show-ref --verify --quiet refs/heads/feature/novo-recurso; then
        echo -e "${GREEN}✓ Branch 'feature/novo-recurso' criada!${NC}"
    else
        echo -e "${RED}✗ Branch 'feature/novo-recurso' não encontrada${NC}"
    fi

    # Verificar se o arquivo existe
    if [ -f "recurso.txt" ]; then
        echo -e "${GREEN}✓ Arquivo 'recurso.txt' encontrado!${NC}"
    else
        echo -e "${RED}✗ Arquivo 'recurso.txt' não encontrado${NC}"
    fi

    # Verificar commits
    local commits=$(git log --oneline | wc -l)
    echo -e "${GREEN}✓ Total de commits: $commits${NC}"

    echo ""
    echo -e "${BLUE}Continue praticando as outras operações!${NC}"
    echo -e "${BLUE}Continue practicing other operations!${NC}"

    pause
}

# Função de limpeza / Cleanup function
cleanup() {
    echo ""
    echo -e "${YELLOW}Limpando ambiente de simulação...${NC}"
    echo -e "${YELLOW}Cleaning up simulation environment...${NC}"

    cd "$ORIGINAL_DIR" || exit

    if [ -n "$SIMULATOR_DIR" ] && [ -d "$SIMULATOR_DIR" ]; then
        rm -rf "$SIMULATOR_DIR"
        echo -e "${GREEN}Ambiente removido com sucesso!${NC}"
        echo -e "${GREEN}Environment removed successfully!${NC}"
    fi

    echo ""
    echo -e "${BLUE}Obrigado por usar o Git Simulator!${NC}"
    echo -e "${BLUE}Thank you for using Git Simulator!${NC}"
    echo ""
}

# Trap para garantir limpeza / Trap to ensure cleanup
trap cleanup EXIT

# Iniciar simulador / Start simulator
setup_simulator

# Loop principal / Main loop
while true; do
    show_menu
    read option

    case $option in
        1) view_state ;;
        2) create_file ;;
        3) modify_file ;;
        4) make_commit ;;
        5) view_history ;;
        6) create_branch ;;
        7) switch_branch ;;
        8) merge_branches ;;
        9) simulate_conflict ;;
        10) undo_commit ;;
        11) view_diff ;;
        12) stash_changes ;;
        13) guided_exercise ;;
        0)
            echo ""
            echo -e "${GREEN}Saindo...${NC}"
            echo -e "${GREEN}Exiting...${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}Opção inválida / Invalid option${NC}"
            sleep 1
            ;;
    esac
done
