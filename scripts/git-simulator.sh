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
    echo -e "${CYAN}║        ${PURPLE}G I T   L A B ${NC}                                    ${NC}  ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}                                                            ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}        ${GREEN}▶  P R A T I Q U E   S E M   M E D O  ${NC}              ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}        ${BLUE}▶  P R A C T I C E   W I T H O U T   F E A R  ${NC}      ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}                                                            ${CYAN}║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
}

# Função para pausar / Function to pause
pause() {
    echo ""
    echo -e "${YELLOW}Pressione ENTER para continuar... Press ENTER to continue...${NC}"
    read
}

# Função para criar ambiente de simulação / Function to create simulation environment
setup_simulator() {
    show_header
    echo -e "${CYAN}*** Configurando Simulador / Setting Up Simulator ***${NC}"
    echo ""

    # Criar diretório temporário
    SIMULATOR_DIR=$(mktemp -d -t git-simulator-XXXXXX)
    echo ""
    echo -e "${GREEN}Ambiente de simulação criado em: / Simulation environment created at:${NC}"
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

    echo -e "${GREEN}Repositório Git inicializado! Git repository initialized!${NC}"
    echo ""
    echo -e "${BLUE}Você está seguro para experimentar! You are safe to experiment!${NC}"

    pause
}

# Função para visualizar estado / Function to visualize state
show_state() {
    show_header
    echo -e "${CYAN}*** Estado Atual do Repositório / Current Repository State ***${NC}"
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
    echo ""
    echo -e "${GREEN}1.${NC}  Ver estado atual / View current state"
    echo -e "${GREEN}2.${NC}  Criar novo arquivo / Create new file"
    echo -e "${GREEN}3.${NC}  Modificar arquivo / Modify file"
    echo -e "${GREEN}4.${NC}  Fazer commit / Make commit"
    echo -e "${GREEN}5.${NC}  Ver histórico / View history"
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}BRANCHES${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo ""
    echo -e "${GREEN}6.${NC}  Criar nova branch / Create new branch"
    echo -e "${GREEN}7.${NC}  Mudar de branch / Switch branch"
    echo -e "${GREEN}8.${NC}  Fazer merge / Merge branches"
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}AVANÇADO / ADVANCED${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo ""
    echo -e "${GREEN}9.${NC}  Simular conflito / Simulate conflict"
    echo -e "${GREEN}10.${NC} Desfazer último commit / Undo last commit"
    echo -e "${GREEN}11.${NC} Ver diferenças / View differences"
    echo -e "${GREEN}12.${NC} Stash mudanças / Stash changes"
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}EXERCÍCIOS / EXERCISES${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo ""
    echo -e "${GREEN}13.${NC} Exercício guiado / Guided exercise"
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo -e "${GREEN}SAIR / EXIT${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo ""
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

    echo -e "${PURPLE}O QUE ESTA OPERAÇÃO FAZ: / WHAT THIS OPERATION DOES:${NC}"
    echo -e "${BLUE}Cria um novo arquivo no repositório de simulação.${NC}"
    echo -e "${BLUE}Creates a new file in the simulation repository.${NC}"
    echo ""
    echo -e "${BLUE}Este arquivo será 'untracked' (não rastreado pelo Git).${NC}"
    echo -e "${BLUE}This file will be 'untracked' (not tracked by Git).${NC}"
    echo ""
    echo -e "${YELLOW}Para o Git reconhecê-lo, você precisará:${NC}"
    echo -e "${YELLOW}For Git to recognize it, you'll need to:${NC}"
    echo -e "  1. Usar 'git add' para adicioná-lo ao staging"
    echo -e "  2. Usar 'git commit' para salvá-lo permanentemente"
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

    echo ""
    echo -e "${BLUE}Criando arquivo...${NC}"
    echo "$content" > "$filename"

    if [ $? -eq 0 ]; then
        echo ""
        echo -e "${GREEN}═══════════════════════════════════════════${NC}"
        echo -e "${GREEN}ARQUIVO CRIADO COM SUCESSO! / FILE CREATED SUCCESSFULLY!${NC}"
        echo -e "${GREEN}═══════════════════════════════════════════${NC}"
        echo ""
        echo -e "${CYAN}O QUE ACONTECEU: / WHAT HAPPENED:${NC}"
        echo -e "  ${GREEN}✓${NC} Arquivo '$filename' foi criado"
        echo -e "  ${GREEN}✓${NC} Git ainda NÃO está rastreando este arquivo"
        echo -e "  ${GREEN}✓${NC} Arquivo aparecerá como 'untracked' no git status"
        echo ""
        echo -e "${CYAN}PRÓXIMOS PASSOS SUGERIDOS: / SUGGESTED NEXT STEPS:${NC}"
        echo -e "  ${YELLOW}1.${NC} Use opção '1' para ver o estado atual"
        echo -e "  ${YELLOW}2.${NC} Use opção '4' para fazer commit: ${CYAN}git add $filename${NC}"
        echo -e "  ${YELLOW}3.${NC} Depois faça: ${CYAN}git commit -m \"Adiciona $filename\"${NC}"
        echo ""
        echo -e "${BLUE}DICA: / TIP:${NC}"
        echo -e "Faça commits frequentes de arquivos pequenos!"
        echo -e "Make frequent commits of small files!"
    else
        echo -e "${RED}Erro ao criar arquivo / Error creating file${NC}"
    fi

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

    echo -e "${PURPLE}O QUE É MERGE: / WHAT IS MERGE:${NC}"
    echo -e "${BLUE}Merge junta mudanças de uma branch em outra.${NC}"
    echo -e "${BLUE}Merge combines changes from one branch into another.${NC}"
    echo ""
    echo -e "${BLUE}Visualização: / Visualization:${NC}"
    echo -e "  ANTES / BEFORE:"
    echo -e "    main     ●─●"
    echo -e "              \\"
    echo -e "    feature    ●─●"
    echo ""
    echo -e "  DEPOIS DO MERGE / AFTER MERGE:"
    echo -e "    main     ●─●─●─●  (agora tem mudanças da feature)"
    echo ""

    local current_branch=$(git branch --show-current)
    echo -e "${YELLOW}VOCÊ ESTÁ NA BRANCH: / YOU ARE ON BRANCH:${NC} ${GREEN}$current_branch${NC}"
    echo ""
    echo -e "${BLUE}Mudanças serão trazidas PARA esta branch.${NC}"
    echo -e "${BLUE}Changes will be brought TO this branch.${NC}"
    echo ""

    echo -e "${YELLOW}Branches disponíveis / Available branches:${NC}"
    git branch
    echo ""

    echo -e "${YELLOW}Qual branch você quer mesclar na '$current_branch'?${NC}"
    echo -e "${YELLOW}Which branch do you want to merge into '$current_branch'?${NC} "
    read branch_name

    if [ -z "$branch_name" ]; then
        echo -e "${RED}Nome não pode ser vazio / Name cannot be empty${NC}"
        pause
        return
    fi

    if [ "$branch_name" == "$current_branch" ]; then
        echo -e "${RED}Você não pode fazer merge de uma branch com ela mesma!${NC}"
        echo -e "${RED}You cannot merge a branch with itself!${NC}"
        pause
        return
    fi

    echo ""
    echo -e "${PURPLE}O QUE VAI ACONTECER: / WHAT WILL HAPPEN:${NC}"
    echo -e "${BLUE}1. Git tentará mesclar automaticamente os commits${NC}"
    echo -e "${BLUE}2. Se houver conflitos, você precisará resolvê-los${NC}"
    echo -e "${BLUE}3. Um novo commit de merge será criado${NC}"
    echo ""
    echo -e "${GREEN}Executando: git merge \"$branch_name\"${NC}"
    echo ""

    git merge "$branch_name"

    if [ $? -eq 0 ]; then
        echo ""
        echo -e "${GREEN}═══════════════════════════════════════════${NC}"
        echo -e "${GREEN}MERGE REALIZADO COM SUCESSO! / MERGE SUCCESSFUL!${NC}"
        echo -e "${GREEN}═══════════════════════════════════════════${NC}"
        echo ""
        echo -e "${CYAN}O QUE ACONTECEU: / WHAT HAPPENED:${NC}"
        echo -e "  ${GREEN}✓${NC} Mudanças de '$branch_name' foram trazidas para '$current_branch'"
        echo -e "  ${GREEN}✓${NC} Não houve conflitos"
        echo -e "  ${GREEN}✓${NC} Um commit de merge foi criado (ou fast-forward)"
        echo ""
        echo -e "${CYAN}PRÓXIMOS PASSOS: / NEXT STEPS:${NC}"
        echo -e "  1. Use opção '5' para ver o histórico com o merge"
        echo -e "  2. Teste o código para garantir que está funcionando"
        echo -e "  3. Opcionalmente, delete a branch '$branch_name' se não precisar mais"
        echo ""
        echo -e "${BLUE}DICA: / TIP:${NC}"
        echo -e "Fast-forward = quando não há conflitos, Git apenas move o ponteiro"
        echo -e "Fast-forward = when there are no conflicts, Git just moves the pointer"
    else
        echo ""
        echo -e "${YELLOW}═══════════════════════════════════════════${NC}"
        echo -e "${YELLOW}CONFLITOS DETECTADOS! / CONFLICTS DETECTED!${NC}"
        echo -e "${YELLOW}═══════════════════════════════════════════${NC}"
        echo ""
        echo -e "${BLUE}Não se preocupe! Conflitos são normais.${NC}"
        echo -e "${BLUE}Don't worry! Conflicts are normal.${NC}"
        echo ""
        echo -e "${CYAN}O QUE SÃO CONFLITOS: / WHAT ARE CONFLICTS:${NC}"
        echo -e "Acontecem quando as mesmas linhas foram modificadas em ambas as branches."
        echo -e "Occur when the same lines were modified in both branches."
        echo ""
        echo -e "${CYAN}COMO RESOLVER: / HOW TO RESOLVE:${NC}"
        echo -e "  ${YELLOW}1.${NC} Use 'git status' para ver arquivos em conflito"
        echo -e "  ${YELLOW}2.${NC} Abra os arquivos e procure por:"
        echo -e "      ${RED}<<<<<<< HEAD${NC}       (sua versão)"
        echo -e "      ${BLUE}=======${NC}"
        echo -e "      ${RED}>>>>>>> $branch_name${NC}  (versão da outra branch)"
        echo -e "  ${YELLOW}3.${NC} Edite o arquivo, mantendo o que você quer"
        echo -e "  ${YELLOW}4.${NC} Remova os marcadores (<<<<<<<, =======, >>>>>>>)"
        echo -e "  ${YELLOW}5.${NC} Use 'git add <arquivo>' depois de resolver"
        echo -e "  ${YELLOW}6.${NC} Use 'git commit' para finalizar o merge"
        echo ""
        echo -e "${YELLOW}OU cancele o merge: git merge --abort${NC}"
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
