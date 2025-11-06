#!/bin/bash

# GIT CLI INTERATIVO / INTERACTIVE GIT CLI
# Script interativo para comandos Git comuns
# Interactive script for common Git commands
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
    echo -e "${CYAN}║${NC}      ${YELLOW}ᗧ${NC}${YELLOW}·····${YELLOW}···· ${PURPLE}G I T   C L I   A R C A D E${NC}                ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}                                                            ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}       ${GREEN}▶  C O M A N D O S   R Á P I D O S   G I T  ${NC}         ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}       ${BLUE}▶  F A S T   G I T   C O M M A N D S  ${NC}               ${CYAN}║${NC}"
    echo -e "${CYAN}║${NC}                                                            ${CYAN}║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
}

# Função para pausar e aguardar entrada / Function to pause and wait for input
pause() {
    echo ""
    echo -e "${YELLOW}Pressione ENTER para continuar...${NC}"
    echo -e "${YELLOW}Press ENTER to continue...${NC}"
    read
}

# Função para confirmar ação / Function to confirm action
confirm() {
    echo -e "${YELLOW}Tem certeza? (s/n) / Are you sure? (y/n)${NC}"
    read -r response
    if [[ "$response" =~ ^([sS]|[yY])$ ]]; then
        return 0
    else
        return 1
    fi
}

# Menu principal / Main menu
show_menu() {
    show_header

    # Mostrar status do repositório / Show repository status
    if git rev-parse --git-dir > /dev/null 2>&1; then
        branch=$(git branch --show-current)
        echo -e "${GREEN}Repositório Git detectado / Git repository detected${NC}"
        echo -e "${BLUE}Branch atual / Current branch: ${CYAN}$branch${NC}"
        echo ""
    else
        echo -e "${RED}Não é um repositório Git / Not a Git repository${NC}"
        echo ""
    fi


    echo -e "${GREEN}1.${NC}  Status do repositório / Repository status"
    echo -e "${GREEN}2.${NC}  Ver histórico de commits / View commit history"
    echo -e "${GREEN}3.${NC}  Criar nova branch / Create new branch"
    echo -e "${GREEN}4.${NC}  Mudar de branch / Switch branch"
    echo -e "${GREEN}5.${NC}  Fazer commit / Make commit"
    echo -e "${GREEN}6.${NC}  Push para remoto / Push to remote"
    echo -e "${GREEN}7.${NC}  Pull do remoto / Pull from remote"
    echo -e "${GREEN}8.${NC}  Ver diferenças / View differences"
    echo -e "${GREEN}9.${NC}  Stash (salvar temporariamente) / Stash (save temporarily)"
    echo -e "${GREEN}10.${NC} Gerenciar branches / Manage branches"
    echo -e "${GREEN}11.${NC} Desfazer mudanças / Undo changes"
    echo -e "${GREEN}12.${NC} Ver remotos / View remotes"
    echo -e "${GREEN}13.${NC} Resolver conflitos / Resolve conflicts"
    echo ""
    echo -e "${RED}0.${NC}  Sair / Exit"
    echo ""
    echo -e "${YELLOW}Escolha uma opção / Choose an option:${NC} "
}

# 1. Status do repositório
git_status() {
    show_header
    echo -e "${CYAN}═══ Status do Repositório / Repository Status ═══${NC}"
    echo ""

    echo -e "${PURPLE}O QUE ESTE COMANDO FAZ: / WHAT THIS COMMAND DOES:${NC}"
    echo -e "${BLUE}O 'git status' é como um raio-X do seu repositório.${NC}"
    echo -e "${BLUE}'git status' is like an X-ray of your repository.${NC}"
    echo ""
    echo -e "${BLUE}Ele mostra: / It shows:${NC}"
    echo -e "  ${GREEN}1.${NC} Arquivos modificados mas não adicionados (vermelho)"
    echo -e "      Modified but not added files (red)"
    echo -e "  ${GREEN}2.${NC} Arquivos prontos para commit/staged (verde)"
    echo -e "      Files ready to commit/staged (green)"
    echo -e "  ${GREEN}3.${NC} Arquivos novos não rastreados (vermelho)"
    echo -e "      New untracked files (red)"
    echo -e "  ${GREEN}4.${NC} Branch atual e se está atualizada com o remoto"
    echo -e "      Current branch and if it's up to date with remote"
    echo ""

    echo -e "${YELLOW}POR QUE É ÚTIL: / WHY IT'S USEFUL:${NC}"
    echo -e "${BLUE}Use este comando SEMPRE antes de fazer qualquer operação!${NC}"
    echo -e "${BLUE}Use this command ALWAYS before doing any operation!${NC}"
    echo -e "Ele te ajuda a saber exatamente onde você está."
    echo -e "It helps you know exactly where you are."
    echo ""

    echo -e "${GREEN}Executando: git status${NC}"
    echo ""
    git status
    echo ""

    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo -e "${CYAN}ENTENDENDO O RESULTADO: / UNDERSTANDING THE RESULT:${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════${NC}"
    echo ""
    echo -e "${GREEN}Cores: / Colors:${NC}"
    echo -e "  ${GREEN}Verde${NC} = Pronto para commit / Ready to commit"
    echo -e "  ${RED}Vermelho${NC} = Precisa ser adicionado / Needs to be added"
    echo ""
    echo -e "${GREEN}Estados possíveis: / Possible states:${NC}"
    echo -e "  'Changes to be committed' = Arquivos no staging"
    echo -e "  'Changes not staged' = Modificados mas não no staging"
    echo -e "  'Untracked files' = Arquivos novos que o Git não conhece"
    echo ""
    echo -e "${CYAN}PRÓXIMOS PASSOS: / NEXT STEPS:${NC}"
    echo -e "  - Arquivos em vermelho? Use 'git add <arquivo>' para adicionar"
    echo -e "  - Files in red? Use 'git add <file>' to add"
    echo -e "  - Arquivos em verde? Use 'git commit -m \"mensagem\"' para salvar"
    echo -e "  - Files in green? Use 'git commit -m \"message\"' to save"
    echo ""
    pause
}

# 2. Ver histórico
git_log() {
    show_header
    echo -e "${CYAN}═══ Histórico de Commits / Commit History ═══${NC}"
    echo ""

    echo -e "${PURPLE}O QUE ESTE COMANDO FAZ: / WHAT THIS COMMAND DOES:${NC}"
    echo -e "${BLUE}O 'git log' mostra a linha do tempo do projeto.${NC}"
    echo -e "${BLUE}'git log' shows the timeline of the project.${NC}"
    echo -e "Cada commit é um ponto de salvamento com autor, data e mensagem."
    echo -e "Each commit is a save point with author, date and message."
    echo ""

    echo -e "${YELLOW}ESCOLHA UMA VISUALIZAÇÃO: / CHOOSE A VIEW:${NC}"
    echo ""
    echo -e "${YELLOW}1.${NC} Histórico simples (oneline)"
    echo -e "    ${BLUE}Melhor para:${NC} Ver rapidamente os últimos commits"
    echo -e "    ${BLUE}Best for:${NC} Quickly viewing recent commits"
    echo ""
    echo -e "${YELLOW}2.${NC} Histórico com gráfico (graph)"
    echo -e "    ${BLUE}Melhor para:${NC} Visualizar branches e merges"
    echo -e "    ${BLUE}Best for:${NC} Visualizing branches and merges"
    echo ""
    echo -e "${YELLOW}3.${NC} Últimos 10 commits"
    echo -e "    ${BLUE}Melhor para:${NC} Ver apenas trabalho recente"
    echo -e "    ${BLUE}Best for:${NC} Viewing only recent work"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read log_option

    case $log_option in
        1)
            echo ""
            echo -e "${PURPLE}O QUE VAI ACONTECER: / WHAT WILL HAPPEN:${NC}"
            echo -e "${BLUE}Cada linha mostra: <hash curto> <mensagem do commit>${NC}"
            echo -e "${BLUE}Each line shows: <short hash> <commit message>${NC}"
            echo -e "O hash é o ID único do commit (você pode usá-lo em outros comandos)"
            echo -e "The hash is the unique commit ID (you can use it in other commands)"
            echo ""
            echo -e "${GREEN}Executando: git log --oneline${NC}"
            echo ""
            git log --oneline
            echo ""
            echo -e "${CYAN}DICA: / TIP:${NC}"
            echo -e "Para sair, pressione 'q' se o log for muito longo"
            echo -e "To exit, press 'q' if the log is too long"
            ;;
        2)
            echo ""
            echo -e "${PURPLE}O QUE VAI ACONTECER: / WHAT WILL HAPPEN:${NC}"
            echo -e "${BLUE}Você verá uma árvore visual mostrando:${NC}"
            echo -e "${BLUE}You will see a visual tree showing:${NC}"
            echo -e "  - Linhas de desenvolvimento (branches)"
            echo -e "  - Pontos de junção (merges)"
            echo -e "  - Onde cada branch está atualmente"
            echo ""
            echo -e "${GREEN}Executando: git log --oneline --graph --decorate --all${NC}"
            echo ""
            git log --oneline --graph --decorate --all
            echo ""
            echo -e "${CYAN}ENTENDENDO OS SÍMBOLOS: / UNDERSTANDING SYMBOLS:${NC}"
            echo -e "  * = Commit"
            echo -e "  | = Linha da branch"
            echo -e "  / ou \ = Branches se dividindo ou juntando"
            ;;
        3)
            echo ""
            echo -e "${PURPLE}O QUE VAI ACONTECER: / WHAT WILL HAPPEN:${NC}"
            echo -e "${BLUE}Mostra apenas os 10 commits mais recentes.${NC}"
            echo -e "${BLUE}Shows only the 10 most recent commits.${NC}"
            echo -e "Útil quando você só quer ver o trabalho recente."
            echo -e "Useful when you only want to see recent work."
            echo ""
            echo -e "${GREEN}Executando: git log --oneline -10${NC}"
            echo ""
            git log --oneline -10
            echo ""
            echo -e "${GREEN}RESULTADO: / RESULT:${NC}"
            echo -e "Estes são os 10 commits mais recentes do projeto."
            echo -e "These are the 10 most recent commits of the project."
            ;;
        *)
            echo -e "${RED}Opção inválida / Invalid option${NC}"
            pause
            return
            ;;
    esac

    echo ""
    echo -e "${CYAN}PRÓXIMOS PASSOS: / NEXT STEPS:${NC}"
    echo -e "  - Para ver detalhes de um commit: git show <hash>"
    echo -e "  - To see details of a commit: git show <hash>"
    echo -e "  - Para buscar por autor: git log --author=\"nome\""
    echo -e "  - To search by author: git log --author=\"name\""
    echo ""
    pause
}

# 3. Criar nova branch
create_branch() {
    show_header
    echo -e "${CYAN}═══ Criar Nova Branch / Create New Branch ═══${NC}"
    echo ""

    echo -e "${PURPLE}O QUE É UMA BRANCH: / WHAT IS A BRANCH:${NC}"
    echo -e "${BLUE}Branch é como uma linha paralela de desenvolvimento.${NC}"
    echo -e "${BLUE}A branch is like a parallel line of development.${NC}"
    echo ""
    echo -e "${BLUE}Pense assim: / Think of it this way:${NC}"
    echo -e "  main     ----●----●----●---->"
    echo -e "               \\"
    echo -e "  feature       ●----●"
    echo ""
    echo -e "Você cria branches para desenvolver features sem afetar o código principal."
    echo -e "You create branches to develop features without affecting the main code."
    echo ""

    echo -e "${YELLOW}POR QUE CRIAR BRANCHES: / WHY CREATE BRANCHES:${NC}"
    echo -e "  ${GREEN}1.${NC} Isolar mudanças enquanto trabalha"
    echo -e "  ${GREEN}2.${NC} Testar ideias sem risco"
    echo -e "  ${GREEN}3.${NC} Trabalhar em múltiplas features ao mesmo tempo"
    echo -e "  ${GREEN}4.${NC} Facilitar revisão de código"
    echo ""

    echo -e "${YELLOW}Nome da branch / Branch name:${NC} "
    echo -e "${BLUE}Dica: Use nomes descritivos como 'feature/login' ou 'fix/bug-123'${NC}"
    echo -e "${BLUE}Tip: Use descriptive names like 'feature/login' or 'fix/bug-123'${NC}"
    echo ""
    read branch_name

    if [ -z "$branch_name" ]; then
        echo -e "${RED}Nome não pode ser vazio / Name cannot be empty${NC}"
        pause
        return
    fi

    echo ""
    echo -e "${PURPLE}O QUE VAI ACONTECER: / WHAT WILL HAPPEN:${NC}"
    echo -e "${BLUE}1. Git criará uma nova branch chamada '$branch_name'${NC}"
    echo -e "${BLUE}2. Você será automaticamente movido para essa nova branch${NC}"
    echo -e "${BLUE}3. Todas as mudanças futuras serão feitas nesta branch${NC}"
    echo ""
    echo -e "${GREEN}Executando: git checkout -b \"$branch_name\"${NC}"
    echo ""

    git checkout -b "$branch_name"

    if [ $? -eq 0 ]; then
        echo ""
        echo -e "${GREEN}═══════════════════════════════════════════${NC}"
        echo -e "${GREEN}SUCESSO! / SUCCESS!${NC}"
        echo -e "${GREEN}═══════════════════════════════════════════${NC}"
        echo ""
        echo -e "${GREEN}Branch '$branch_name' criada e ativada!${NC}"
        echo -e "${GREEN}Branch '$branch_name' created and activated!${NC}"
        echo ""
        echo -e "${CYAN}O QUE ACONTECEU: / WHAT HAPPENED:${NC}"
        echo -e "  ${GREEN}✓${NC} Nova branch criada"
        echo -e "  ${GREEN}✓${NC} Você está agora na branch '$branch_name'"
        echo -e "  ${GREEN}✓${NC} Nenhum arquivo foi modificado"
        echo ""
        echo -e "${CYAN}PRÓXIMOS PASSOS: / NEXT STEPS:${NC}"
        echo -e "  1. Faça suas mudanças nos arquivos"
        echo -e "  2. Use 'git add' para adicionar arquivos"
        echo -e "  3. Use 'git commit' para salvar mudanças"
        echo -e "  4. Use 'git push -u origin $branch_name' para enviar ao remoto"
    else
        echo ""
        echo -e "${RED}═══════════════════════════════════════════${NC}"
        echo -e "${RED}ERRO! / ERROR!${NC}"
        echo -e "${RED}═══════════════════════════════════════════${NC}"
        echo ""
        echo -e "${RED}Não foi possível criar a branch / Could not create branch${NC}"
        echo -e "${YELLOW}Possíveis causas: / Possible causes:${NC}"
        echo -e "  - Branch com este nome já existe"
        echo -e "  - Branch name already exists"
        echo -e "  - Mudanças não commitadas impedindo a troca"
        echo -e "  - Uncommitted changes preventing the switch"
    fi
    pause
}

# 4. Mudar de branch
switch_branch() {
    show_header
    echo -e "${CYAN}═══ Branches Disponíveis / Available Branches ═══${NC}"
    echo ""
    git branch -a
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
        echo -e "${GREEN}Mudou para branch '$branch_name'${NC}"
        echo -e "${GREEN}Switched to branch '$branch_name'${NC}"
    else
        echo -e "${RED}Erro ao mudar de branch / Error switching branch${NC}"
    fi
    pause
}

# 5. Fazer commit
git_commit() {
    show_header
    echo -e "${CYAN}═══ Fazer Commit / Make Commit ═══${NC}"
    echo ""

    echo -e "${PURPLE}O QUE É UM COMMIT: / WHAT IS A COMMIT:${NC}"
    echo -e "${BLUE}Commit é como tirar uma foto do seu código em um momento específico.${NC}"
    echo -e "${BLUE}A commit is like taking a snapshot of your code at a specific moment.${NC}"
    echo ""
    echo -e "${BLUE}Cada commit tem: / Each commit has:${NC}"
    echo -e "  ${GREEN}1.${NC} Um ID único (hash)"
    echo -e "  ${GREEN}2.${NC} Autor e data"
    echo -e "  ${GREEN}3.${NC} Mensagem descrevendo a mudança"
    echo -e "  ${GREEN}4.${NC} Todas as alterações incluídas"
    echo ""

    echo -e "${YELLOW}ARQUIVOS NO REPOSITÓRIO: / FILES IN REPOSITORY:${NC}"
    echo ""
    git status
    echo ""

    echo -e "${PURPLE}PASSO 1: ESCOLHA O QUE ADICIONAR / STEP 1: CHOOSE WHAT TO ADD${NC}"
    echo ""
    echo -e "${YELLOW}1.${NC} git add . ${BLUE}(adicionar TUDO / add EVERYTHING)${NC}"
    echo -e "    ${BLUE}Use quando:${NC} Todas as mudanças devem ir juntas"
    echo -e "    ${BLUE}Use when:${NC} All changes should go together"
    echo ""
    echo -e "${YELLOW}2.${NC} git add -p ${BLUE}(adicionar INTERATIVO / add INTERACTIVE)${NC}"
    echo -e "    ${BLUE}Use quando:${NC} Quer escolher parte por parte"
    echo -e "    ${BLUE}Use when:${NC} Want to choose piece by piece"
    echo ""
    echo -e "${YELLOW}3.${NC} Adicionar arquivo específico ${BLUE}(CONTROLE PRECISO / PRECISE CONTROL)${NC}"
    echo -e "    ${BLUE}Use quando:${NC} Só quer commitar arquivos específicos"
    echo -e "    ${BLUE}Use when:${NC} Only want to commit specific files"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read add_option

    case $add_option in
        1)
            echo ""
            echo -e "${BLUE}Adicionando TODOS os arquivos modificados...${NC}"
            echo -e "${BLUE}Adding ALL modified files...${NC}"
            git add .
            if [ $? -eq 0 ]; then
                echo -e "${GREEN}✓ Arquivos adicionados ao staging / Files added to staging${NC}"
            fi
            ;;
        2)
            echo ""
            echo -e "${BLUE}Modo interativo - você verá cada mudança e pode escolher.${NC}"
            echo -e "${BLUE}Interactive mode - you'll see each change and can choose.${NC}"
            echo -e "${YELLOW}Comandos: y=sim/yes, n=não/no, q=sair/quit${NC}"
            echo ""
            git add -p
            ;;
        3)
            echo -e "${YELLOW}Nome do arquivo / File name:${NC} "
            read filename
            if [ -z "$filename" ]; then
                echo -e "${RED}Nome não pode ser vazio / Name cannot be empty${NC}"
                pause
                return
            fi
            git add "$filename"
            if [ $? -eq 0 ]; then
                echo -e "${GREEN}✓ Arquivo '$filename' adicionado / File '$filename' added${NC}"
            else
                echo -e "${RED}✗ Arquivo não encontrado / File not found${NC}"
                pause
                return
            fi
            ;;
        *)
            echo -e "${RED}Opção inválida / Invalid option${NC}"
            pause
            return
            ;;
    esac

    echo ""
    echo -e "${PURPLE}PASSO 2: ESCREVA UMA MENSAGEM / STEP 2: WRITE A MESSAGE${NC}"
    echo ""
    echo -e "${YELLOW}DICAS PARA BOA MENSAGEM: / TIPS FOR GOOD MESSAGE:${NC}"
    echo -e "  ${GREEN}✓${NC} Use verbo no imperativo: 'Adiciona', 'Corrige', 'Remove'"
    echo -e "  ${GREEN}✓${NC} Seja específico sobre O QUE mudou"
    echo -e "  ${GREEN}✓${NC} Explique o PORQUÊ se não for óbvio"
    echo -e "  ${RED}✗${NC} Evite mensagens vagas como 'update' ou 'fix'"
    echo ""
    echo -e "${BLUE}Exemplos bons / Good examples:${NC}"
    echo -e "  'Adiciona autenticação de usuário com JWT'"
    echo -e "  'Corrige bug de memória no processamento de imagens'"
    echo -e "  'Remove código deprecado da API antiga'"
    echo ""
    echo -e "${YELLOW}Mensagem do commit / Commit message:${NC} "
    read commit_msg

    if [ -z "$commit_msg" ]; then
        echo -e "${RED}Mensagem não pode ser vazia / Message cannot be empty${NC}"
        pause
        return
    fi

    echo ""
    echo -e "${PURPLE}EXECUTANDO COMMIT... / EXECUTING COMMIT...${NC}"
    echo -e "${GREEN}Comando: git commit -m \"$commit_msg\"${NC}"
    echo ""

    git commit -m "$commit_msg"

    if [ $? -eq 0 ]; then
        echo ""
        echo -e "${GREEN}═══════════════════════════════════════════${NC}"
        echo -e "${GREEN}COMMIT REALIZADO COM SUCESSO! / COMMIT SUCCESSFUL!${NC}"
        echo -e "${GREEN}═══════════════════════════════════════════${NC}"
        echo ""
        echo -e "${CYAN}O QUE ACONTECEU: / WHAT HAPPENED:${NC}"
        echo -e "  ${GREEN}✓${NC} Suas mudanças foram salvas permanentemente"
        echo -e "  ${GREEN}✓${NC} Um novo ponto na linha do tempo foi criado"
        echo -e "  ${GREEN}✓${NC} Você pode voltar a este ponto quando quiser"
        echo ""
        echo -e "${CYAN}PRÓXIMOS PASSOS: / NEXT STEPS:${NC}"
        echo -e "  1. Ver o commit: git log --oneline -1"
        echo -e "  2. Enviar para remoto: git push"
        echo -e "  3. Se errou algo: git reset --soft HEAD~1 (desfaz mas mantém mudanças)"
    else
        echo ""
        echo -e "${RED}═══════════════════════════════════════════${NC}"
        echo -e "${RED}ERRO AO FAZER COMMIT! / ERROR MAKING COMMIT!${NC}"
        echo -e "${RED}═══════════════════════════════════════════${NC}"
        echo ""
        echo -e "${YELLOW}Possíveis causas: / Possible causes:${NC}"
        echo -e "  - Nenhum arquivo foi adicionado ao staging"
        echo -e "  - No files were added to staging"
        echo -e "  - Git não está configurado (user.name e user.email)"
        echo -e "  - Git is not configured (user.name and user.email)"
    fi
    pause
}

# 6. Push
git_push() {
    show_header
    echo -e "${CYAN}═══ Push para Remoto / Push to Remote ═══${NC}"
    echo ""

    branch=$(git branch --show-current)

    echo -e "${PURPLE}O QUE É PUSH: / WHAT IS PUSH:${NC}"
    echo -e "${BLUE}Push envia seus commits locais para o repositório remoto (GitHub, GitLab, etc).${NC}"
    echo -e "${BLUE}Push sends your local commits to the remote repository (GitHub, GitLab, etc).${NC}"
    echo ""
    echo -e "${BLUE}Pense assim: / Think of it this way:${NC}"
    echo -e "  Seu Computador    →  [push]  →    GitHub"
    echo -e "      ●─●─●                           ●─●─●"
    echo ""

    echo -e "${YELLOW}BRANCH ATUAL: / CURRENT BRANCH:${NC} ${GREEN}$branch${NC}"
    echo ""

    echo -e "${YELLOW}ESCOLHA O TIPO DE PUSH: / CHOOSE PUSH TYPE:${NC}"
    echo ""
    echo -e "${YELLOW}1.${NC} git push ${BLUE}(PUSH NORMAL)${NC}"
    echo -e "    ${BLUE}Use quando:${NC} Branch já tem upstream configurado"
    echo -e "    ${BLUE}Use when:${NC} Branch already has upstream configured"
    echo -e "    ${BLUE}Risco:${NC} Baixo / Low"
    echo ""
    echo -e "${YELLOW}2.${NC} git push -u origin $branch ${BLUE}(PRIMEIRO PUSH)${NC}"
    echo -e "    ${BLUE}Use quando:${NC} Primeira vez enviando esta branch"
    echo -e "    ${BLUE}Use when:${NC} First time pushing this branch"
    echo -e "    ${BLUE}Risco:${NC} Baixo / Low"
    echo ""
    echo -e "${YELLOW}3.${NC} git push --force-with-lease ${BLUE}(FORCE PUSH SEGURO)${NC}"
    echo -e "    ${RED}CUIDADO!${NC} ${BLUE}Use quando:${NC} Reescreveu histórico local"
    echo -e "    ${RED}CAREFUL!${NC} ${BLUE}Use when:${NC} You rewrote local history"
    echo -e "    ${BLUE}Risco:${NC} ${RED}ALTO / HIGH${NC}"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read push_option

    case $push_option in
        1)
            echo ""
            echo -e "${PURPLE}O QUE VAI ACONTECER: / WHAT WILL HAPPEN:${NC}"
            echo -e "${BLUE}1. Git enviará seus commits para o remoto${NC}"
            echo -e "${BLUE}2. Outros desenvolvedores poderão ver suas mudanças${NC}"
            echo -e "${BLUE}3. A branch remota será atualizada${NC}"
            echo ""
            echo -e "${GREEN}Executando: git push${NC}"
            echo ""

            git push

            if [ $? -eq 0 ]; then
                echo ""
                echo -e "${GREEN}═══════════════════════════════════════════${NC}"
                echo -e "${GREEN}PUSH REALIZADO COM SUCESSO! / PUSH SUCCESSFUL!${NC}"
                echo -e "${GREEN}═══════════════════════════════════════════${NC}"
                echo ""
                echo -e "${CYAN}O QUE ACONTECEU: / WHAT HAPPENED:${NC}"
                echo -e "  ${GREEN}✓${NC} Commits enviados para o remoto"
                echo -e "  ${GREEN}✓${NC} Branch '$branch' atualizada no servidor"
                echo -e "  ${GREEN}✓${NC} Equipe pode ver suas mudanças"
            else
                echo ""
                echo -e "${RED}═══════════════════════════════════════════${NC}"
                echo -e "${RED}ERRO NO PUSH! / PUSH ERROR!${NC}"
                echo -e "${RED}═══════════════════════════════════════════${NC}"
                echo ""
                echo -e "${YELLOW}Possíveis causas: / Possible causes:${NC}"
                echo -e "  - Branch sem upstream configurado (use opção 2)"
                echo -e "  - Branch without upstream configured (use option 2)"
                echo -e "  - Não há conexão com o remoto"
                echo -e "  - No connection to remote"
                echo -e "  - Você não tem permissão"
                echo -e "  - You don't have permission"
            fi
            ;;
        2)
            echo ""
            echo -e "${PURPLE}O QUE VAI ACONTECER: / WHAT WILL HAPPEN:${NC}"
            echo -e "${BLUE}1. Git enviará seus commits para o remoto${NC}"
            echo -e "${BLUE}2. Criará a branch '$branch' no remoto (se não existir)${NC}"
            echo -e "${BLUE}3. Configurará tracking para futuros pushes${NC}"
            echo ""
            echo -e "${YELLOW}Tracking significa que 'git push' saberá para onde enviar.${NC}"
            echo -e "${YELLOW}Tracking means that 'git push' will know where to send.${NC}"
            echo ""
            echo -e "${GREEN}Executando: git push -u origin \"$branch\"${NC}"
            echo ""

            git push -u origin "$branch"

            if [ $? -eq 0 ]; then
                echo ""
                echo -e "${GREEN}═══════════════════════════════════════════${NC}"
                echo -e "${GREEN}PUSH REALIZADO COM SUCESSO! / PUSH SUCCESSFUL!${NC}"
                echo -e "${GREEN}═══════════════════════════════════════════${NC}"
                echo ""
                echo -e "${CYAN}O QUE ACONTECEU: / WHAT HAPPENED:${NC}"
                echo -e "  ${GREEN}✓${NC} Branch '$branch' criada no remoto"
                echo -e "  ${GREEN}✓${NC} Commits enviados com sucesso"
                echo -e "  ${GREEN}✓${NC} Upstream configurado (próximos push serão mais simples)"
                echo ""
                echo -e "${CYAN}PRÓXIMOS PASSOS: / NEXT STEPS:${NC}"
                echo -e "  - Agora você pode usar apenas 'git push'"
                echo -e "  - Criar Pull Request no GitHub/GitLab"
                echo -e "  - Pedir revisão da equipe"
            else
                echo ""
                echo -e "${RED}ERRO NO PUSH! / PUSH ERROR!${NC}"
                echo -e "${YELLOW}Verifique: conexão com internet, permissões, remoto configurado${NC}"
            fi
            ;;
        3)
            echo ""
            echo -e "${RED}═══════════════════════════════════════════${NC}"
            echo -e "${RED}ATENÇÃO! OPERAÇÃO PERIGOSA! / WARNING! DANGEROUS OPERATION!${NC}"
            echo -e "${RED}═══════════════════════════════════════════${NC}"
            echo ""
            echo -e "${RED}FORCE PUSH reescreve histórico no remoto!${NC}"
            echo -e "${RED}FORCE PUSH rewrites history on remote!${NC}"
            echo ""
            echo -e "${YELLOW}Consequências: / Consequences:${NC}"
            echo -e "  ${RED}✗${NC} Pode causar problemas para outros desenvolvedores"
            echo -e "  ${RED}✗${NC} Commits podem ser perdidos"
            echo -e "  ${RED}✗${NC} Outros precisarão fazer force pull"
            echo ""
            echo -e "${BLUE}Use APENAS quando: / Use ONLY when:${NC}"
            echo -e "  - Você reescreveu commits (rebase, amend)"
            echo -e "  - Tem certeza que ninguém baseou trabalho nesses commits"
            echo -e "  - Você sabe exatamente o que está fazendo"
            echo ""
            echo -e "${YELLOW}--force-with-lease é mais seguro que --force${NC}"
            echo -e "${YELLOW}Ele verifica se alguém fez push desde seu último pull${NC}"
            echo ""

            if confirm; then
                echo ""
                echo -e "${GREEN}Executando: git push --force-with-lease${NC}"
                echo ""
                git push --force-with-lease

                if [ $? -eq 0 ]; then
                    echo ""
                    echo -e "${YELLOW}Force push realizado. Avise sua equipe!${NC}"
                    echo -e "${YELLOW}Force push done. Notify your team!${NC}"
                else
                    echo ""
                    echo -e "${RED}Force push falhou. Isso é bom - significa que há mudanças no remoto!${NC}"
                    echo -e "${RED}Force push failed. This is good - means there are changes on remote!${NC}"
                    echo -e "${YELLOW}Faça git pull primeiro para ver as mudanças${NC}"
                fi
            else
                echo -e "${GREEN}Operação cancelada. Boa escolha!${NC}"
                echo -e "${GREEN}Operation cancelled. Good choice!${NC}"
            fi
            ;;
        *)
            echo -e "${RED}Opção inválida / Invalid option${NC}"
            ;;
    esac
    pause
}

# 7. Pull
git_pull() {
    show_header
    echo -e "${CYAN}═══ Pull do Remoto / Pull from Remote ═══${NC}"
    echo ""

    echo -e "${PURPLE}O QUE É PULL: / WHAT IS PULL:${NC}"
    echo -e "${BLUE}Pull busca mudanças do repositório remoto e mescla no seu código local.${NC}"
    echo -e "${BLUE}Pull fetches changes from remote repository and merges into your local code.${NC}"
    echo ""
    echo -e "${BLUE}Pense assim: / Think of it this way:${NC}"
    echo -e "  GitHub    →  [pull]  →    Seu Computador"
    echo -e "  ●─●─●─●                    ●─●"
    echo ""
    echo -e "${YELLOW}SEMPRE faça pull antes de começar a trabalhar!${NC}"
    echo -e "${YELLOW}ALWAYS do pull before starting to work!${NC}"
    echo ""

    echo -e "${YELLOW}ESCOLHA O TIPO DE PULL: / CHOOSE PULL TYPE:${NC}"
    echo ""
    echo -e "${YELLOW}1.${NC} git pull ${BLUE}(PULL NORMAL - MAIS COMUM)${NC}"
    echo -e "    ${BLUE}O que faz:${NC} Busca mudanças e faz merge automático"
    echo -e "    ${BLUE}What it does:${NC} Fetches changes and auto-merges"
    echo -e "    ${BLUE}Use quando:${NC} Situação normal de trabalho"
    echo -e "    ${BLUE}Use when:${NC} Normal work situation"
    echo ""
    echo -e "${YELLOW}2.${NC} git pull --rebase ${BLUE}(PULL COM REBASE - HISTÓRICO LIMPO)${NC}"
    echo -e "    ${BLUE}O que faz:${NC} Reaplica seus commits em cima das mudanças remotas"
    echo -e "    ${BLUE}What it does:${NC} Reapplies your commits on top of remote changes"
    echo -e "    ${BLUE}Use quando:${NC} Quer manter histórico linear"
    echo -e "    ${BLUE}Use when:${NC} Want to keep linear history"
    echo ""
    echo -e "${YELLOW}3.${NC} git fetch ${BLUE}(APENAS BUSCAR - SEM MESCLAR)${NC}"
    echo -e "    ${BLUE}O que faz:${NC} Baixa mudanças mas NÃO mescla automaticamente"
    echo -e "    ${BLUE}What it does:${NC} Downloads changes but DOESN'T merge automatically"
    echo -e "    ${BLUE}Use quando:${NC} Quer ver mudanças antes de mesclar"
    echo -e "    ${BLUE}Use when:${NC} Want to see changes before merging"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read pull_option

    case $pull_option in
        1)
            echo ""
            echo -e "${PURPLE}O QUE VAI ACONTECER: / WHAT WILL HAPPEN:${NC}"
            echo -e "${BLUE}1. Git buscará commits novos do remoto${NC}"
            echo -e "${BLUE}2. Tentará mesclar automaticamente com seu código${NC}"
            echo -e "${BLUE}3. Se houver conflitos, você precisará resolvê-los${NC}"
            echo ""
            echo -e "${GREEN}Executando: git pull${NC}"
            echo ""

            git pull

            if [ $? -eq 0 ]; then
                echo ""
                echo -e "${GREEN}═══════════════════════════════════════════${NC}"
                echo -e "${GREEN}PULL REALIZADO COM SUCESSO! / PULL SUCCESSFUL!${NC}"
                echo -e "${GREEN}═══════════════════════════════════════════${NC}"
                echo ""
                echo -e "${CYAN}O QUE ACONTECEU: / WHAT HAPPENED:${NC}"
                echo -e "  ${GREEN}✓${NC} Mudanças do remoto foram baixadas"
                echo -e "  ${GREEN}✓${NC} Código local foi atualizado"
                echo -e "  ${GREEN}✓${NC} Você está sincronizado com a equipe"
                echo ""
                echo -e "${CYAN}PRÓXIMOS PASSOS: / NEXT STEPS:${NC}"
                echo -e "  - Teste seu código para garantir que está funcionando"
                echo -e "  - Continue trabalhando normalmente"
            else
                echo ""
                echo -e "${YELLOW}═══════════════════════════════════════════${NC}"
                echo -e "${YELLOW}CONFLITOS DETECTADOS! / CONFLICTS DETECTED!${NC}"
                echo -e "${YELLOW}═══════════════════════════════════════════${NC}"
                echo ""
                echo -e "${BLUE}Não se preocupe! Conflitos são normais em trabalho em equipe.${NC}"
                echo -e "${BLUE}Don't worry! Conflicts are normal in teamwork.${NC}"
                echo ""
                echo -e "${CYAN}PRÓXIMOS PASSOS: / NEXT STEPS:${NC}"
                echo -e "  1. Use 'git status' para ver arquivos em conflito"
                echo -e "  2. Abra os arquivos e resolva conflitos manualmente"
                echo -e "  3. Use 'git add <arquivo>' depois de resolver"
                echo -e "  4. Use 'git commit' para finalizar o merge"
                echo -e "  5. Ou use opção '13. Resolver conflitos' deste menu"
            fi
            ;;
        2)
            echo ""
            echo -e "${PURPLE}O QUE VAI ACONTECER: / WHAT WILL HAPPEN:${NC}"
            echo -e "${BLUE}1. Git buscará commits novos do remoto${NC}"
            echo -e "${BLUE}2. 'Levantará' seus commits locais temporariamente${NC}"
            echo -e "${BLUE}3. Aplicará os commits remotos${NC}"
            echo -e "${BLUE}4. Reaplicará seus commits em cima${NC}"
            echo ""
            echo -e "${YELLOW}Resultado: histórico linear e limpo!${NC}"
            echo -e "${YELLOW}Result: linear and clean history!${NC}"
            echo ""
            echo -e "${GREEN}Executando: git pull --rebase${NC}"
            echo ""

            git pull --rebase

            if [ $? -eq 0 ]; then
                echo ""
                echo -e "${GREEN}PULL COM REBASE REALIZADO! / PULL WITH REBASE DONE!${NC}"
                echo -e "${CYAN}Histórico está limpo e linear${NC}"
            else
                echo ""
                echo -e "${YELLOW}Conflitos durante rebase. Resolva e use: git rebase --continue${NC}"
                echo -e "${YELLOW}Conflicts during rebase. Resolve and use: git rebase --continue${NC}"
            fi
            ;;
        3)
            echo ""
            echo -e "${PURPLE}O QUE VAI ACONTECER: / WHAT WILL HAPPEN:${NC}"
            echo -e "${BLUE}1. Git baixará informações do remoto${NC}"
            echo -e "${BLUE}2. NÃO modificará seu código local${NC}"
            echo -e "${BLUE}3. Você poderá ver as mudanças antes de mesclar${NC}"
            echo ""
            echo -e "${GREEN}Executando: git fetch --all --prune${NC}"
            echo -e "${BLUE}--prune remove referências a branches deletados${NC}"
            echo ""

            git fetch --all --prune

            if [ $? -eq 0 ]; then
                echo ""
                echo -e "${GREEN}FETCH REALIZADO! / FETCH DONE!${NC}"
                echo ""
                echo -e "${CYAN}O QUE ACONTECEU: / WHAT HAPPENED:${NC}"
                echo -e "  ${GREEN}✓${NC} Informações do remoto foram baixadas"
                echo -e "  ${GREEN}✓${NC} Seu código local NÃO foi modificado"
                echo -e "  ${GREEN}✓${NC} Branches remotas atualizadas"
                echo ""
                echo -e "${CYAN}PRÓXIMOS PASSOS: / NEXT STEPS:${NC}"
                echo -e "  - Ver diferenças: git diff HEAD origin/$(git branch --show-current)"
                echo -e "  - Mesclar quando quiser: git merge origin/$(git branch --show-current)"
                echo -e "  - Ou use 'git pull' para buscar e mesclar de uma vez"
            fi
            ;;
        *)
            echo -e "${RED}Opção inválida / Invalid option${NC}"
            ;;
    esac
    pause
}

# 8. Ver diferenças
git_diff() {
    show_header
    echo -e "${CYAN}═══ Ver Diferenças / View Differences ═══${NC}"
    echo ""

    echo -e "${YELLOW}1.${NC} git diff (mudanças não staged)"
    echo -e "${YELLOW}2.${NC} git diff --staged (mudanças staged)"
    echo -e "${YELLOW}3.${NC} git diff HEAD (todas as mudanças)"
    echo -e "${YELLOW}4.${NC} git diff entre branches"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read diff_option

    case $diff_option in
        1) git diff ;;
        2) git diff --staged ;;
        3) git diff HEAD ;;
        4)
            echo -e "${YELLOW}Branch 1:${NC} "
            read branch1
            echo -e "${YELLOW}Branch 2:${NC} "
            read branch2
            git diff "$branch1".."$branch2"
            ;;
        *) echo -e "${RED}Opção inválida / Invalid option${NC}" ;;
    esac
    pause
}

# 9. Stash
git_stash() {
    show_header
    echo -e "${CYAN}═══ Stash (Salvar Temporariamente) ═══${NC}"
    echo ""

    echo -e "${YELLOW}1.${NC} git stash (salvar mudanças / save changes)"
    echo -e "${YELLOW}2.${NC} git stash list (listar stashes)"
    echo -e "${YELLOW}3.${NC} git stash pop (recuperar último / recover last)"
    echo -e "${YELLOW}4.${NC} git stash apply (aplicar sem remover)"
    echo -e "${YELLOW}5.${NC} git stash drop (remover stash)"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read stash_option

    case $stash_option in
        1)
            echo -e "${YELLOW}Mensagem (opcional) / Message (optional):${NC} "
            read stash_msg
            if [ -z "$stash_msg" ]; then
                git stash
            else
                git stash push -m "$stash_msg"
            fi
            ;;
        2) git stash list ;;
        3) git stash pop ;;
        4) git stash apply ;;
        5)
            git stash list
            echo -e "${YELLOW}Número do stash / Stash number:${NC} "
            read stash_num
            git stash drop "stash@{$stash_num}"
            ;;
        *) echo -e "${RED}Opção inválida / Invalid option${NC}" ;;
    esac
    pause
}

# 10. Gerenciar branches
manage_branches() {
    show_header
    echo -e "${CYAN}═══ Gerenciar Branches / Manage Branches ═══${NC}"
    echo ""

    echo -e "${YELLOW}1.${NC} Listar branches / List branches"
    echo -e "${YELLOW}2.${NC} Deletar branch local / Delete local branch"
    echo -e "${YELLOW}3.${NC} Deletar branch remota / Delete remote branch"
    echo -e "${YELLOW}4.${NC} Renomear branch / Rename branch"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read branch_option

    case $branch_option in
        1)
            git branch -a
            ;;
        2)
            git branch
            echo -e "${YELLOW}Nome da branch / Branch name:${NC} "
            read branch_name
            if confirm; then
                git branch -d "$branch_name"
            fi
            ;;
        3)
            git branch -r
            echo -e "${YELLOW}Nome da branch (sem origin/) / Branch name (without origin/):${NC} "
            read branch_name
            if confirm; then
                git push origin --delete "$branch_name"
            fi
            ;;
        4)
            echo -e "${YELLOW}Nome antigo / Old name:${NC} "
            read old_name
            echo -e "${YELLOW}Nome novo / New name:${NC} "
            read new_name
            git branch -m "$old_name" "$new_name"
            ;;
        *) echo -e "${RED}Opção inválida / Invalid option${NC}" ;;
    esac
    pause
}

# 11. Desfazer mudanças
undo_changes() {
    show_header
    echo -e "${CYAN}═══ Desfazer Mudanças / Undo Changes ═══${NC}"
    echo ""

    echo -e "${YELLOW}1.${NC} Descartar mudanças em arquivo / Discard file changes"
    echo -e "${YELLOW}2.${NC} Reset --soft HEAD~1 (desfaz commit, mantém staging)"
    echo -e "${YELLOW}3.${NC} Reset --mixed HEAD~1 (desfaz commit, remove staging)"
    echo -e "${YELLOW}4.${NC} Reset --hard HEAD~1 (desfaz tudo - CUIDADO!)"
    echo -e "${YELLOW}5.${NC} Revert commit (desfaz com novo commit)"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read undo_option

    case $undo_option in
        1)
            echo -e "${YELLOW}Nome do arquivo / File name:${NC} "
            read filename
            if confirm; then
                git restore "$filename"
            fi
            ;;
        2) git reset --soft HEAD~1 ;;
        3) git reset --mixed HEAD~1 ;;
        4)
            echo -e "${RED}ATENÇÃO: Isso remove permanentemente as mudanças!${NC}"
            echo -e "${RED}WARNING: This permanently removes changes!${NC}"
            if confirm; then
                git reset --hard HEAD~1
            fi
            ;;
        5)
            git log --oneline -10
            echo -e "${YELLOW}Hash do commit / Commit hash:${NC} "
            read commit_hash
            git revert "$commit_hash"
            ;;
        *) echo -e "${RED}Opção inválida / Invalid option${NC}" ;;
    esac
    pause
}

# 12. Ver remotos
git_remotes() {
    show_header
    echo -e "${CYAN}═══ Remotos / Remotes ═══${NC}"
    echo ""
    git remote -v
    pause
}

# 13. Resolver conflitos
resolve_conflicts() {
    show_header
    echo -e "${CYAN}═══ Resolver Conflitos / Resolve Conflicts ═══${NC}"
    echo ""

    echo -e "${YELLOW}1.${NC} Ver arquivos com conflito / View conflicted files"
    echo -e "${YELLOW}2.${NC} Aceitar versão local (--ours)"
    echo -e "${YELLOW}3.${NC} Aceitar versão remota (--theirs)"
    echo -e "${YELLOW}4.${NC} Abortar merge / Abort merge"
    echo -e "${YELLOW}5.${NC} Abortar rebase / Abort rebase"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read conflict_option

    case $conflict_option in
        1)
            git status
            echo ""
            git diff
            ;;
        2)
            echo -e "${YELLOW}Nome do arquivo / File name:${NC} "
            read filename
            git checkout --ours "$filename"
            git add "$filename"
            ;;
        3)
            echo -e "${YELLOW}Nome do arquivo / File name:${NC} "
            read filename
            git checkout --theirs "$filename"
            git add "$filename"
            ;;
        4) git merge --abort ;;
        5) git rebase --abort ;;
        *) echo -e "${RED}Opção inválida / Invalid option${NC}" ;;
    esac
    pause
}

# Loop principal / Main loop
while true; do
    show_menu
    read option

    case $option in
        1) git_status ;;
        2) git_log ;;
        3) create_branch ;;
        4) switch_branch ;;
        5) git_commit ;;
        6) git_push ;;
        7) git_pull ;;
        8) git_diff ;;
        9) git_stash ;;
        10) manage_branches ;;
        11) undo_changes ;;
        12) git_remotes ;;
        13) resolve_conflicts ;;
        0)
            echo -e "${GREEN}Até logo! / Goodbye!${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}Opção inválida / Invalid option${NC}"
            pause
            ;;
    esac
done
