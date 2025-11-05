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
    git status
    pause
}

# 2. Ver histórico
git_log() {
    show_header
    echo -e "${CYAN}═══ Histórico de Commits / Commit History ═══${NC}"
    echo ""
    echo -e "${YELLOW}1.${NC} Histórico simples / Simple history"
    echo -e "${YELLOW}2.${NC} Histórico com gráfico / History with graph"
    echo -e "${YELLOW}3.${NC} Últimos 10 commits / Last 10 commits"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read log_option

    case $log_option in
        1) git log --oneline ;;
        2) git log --oneline --graph --decorate --all ;;
        3) git log --oneline -10 ;;
        *) echo -e "${RED}Opção inválida / Invalid option${NC}" ;;
    esac
    pause
}

# 3. Criar nova branch
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
        echo -e "${GREEN}Branch '$branch_name' criada com sucesso!${NC}"
        echo -e "${GREEN}Branch '$branch_name' created successfully!${NC}"
    else
        echo -e "${RED}Erro ao criar branch / Error creating branch${NC}"
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

    git status
    echo ""

    echo -e "${YELLOW}1.${NC} git add . (adicionar tudo / add all)"
    echo -e "${YELLOW}2.${NC} git add -p (adicionar interativo / add interactive)"
    echo -e "${YELLOW}3.${NC} Adicionar arquivo específico / Add specific file"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read add_option

    case $add_option in
        1) git add . ;;
        2) git add -p ;;
        3)
            echo -e "${YELLOW}Nome do arquivo / File name:${NC} "
            read filename
            git add "$filename"
            ;;
        *) echo -e "${RED}Opção inválida / Invalid option${NC}"
           pause
           return ;;
    esac

    echo ""
    echo -e "${YELLOW}Mensagem do commit / Commit message:${NC} "
    read commit_msg

    if [ -z "$commit_msg" ]; then
        echo -e "${RED}Mensagem não pode ser vazia / Message cannot be empty${NC}"
        pause
        return
    fi

    git commit -m "$commit_msg"

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}Commit realizado com sucesso!${NC}"
        echo -e "${GREEN}Commit completed successfully!${NC}"
    else
        echo -e "${RED}Erro ao fazer commit / Error making commit${NC}"
    fi
    pause
}

# 6. Push
git_push() {
    show_header
    echo -e "${CYAN}═══ Push para Remoto / Push to Remote ═══${NC}"
    echo ""

    branch=$(git branch --show-current)

    echo -e "${YELLOW}1.${NC} git push (push normal)"
    echo -e "${YELLOW}2.${NC} git push -u origin $branch (configurar upstream)"
    echo -e "${YELLOW}3.${NC} git push --force-with-lease (force push seguro)"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read push_option

    case $push_option in
        1) git push ;;
        2) git push -u origin "$branch" ;;
        3)
            echo -e "${RED}ATENÇÃO: Isso reescreve histórico!${NC}"
            echo -e "${RED}WARNING: This rewrites history!${NC}"
            if confirm; then
                git push --force-with-lease
            fi
            ;;
        *) echo -e "${RED}Opção inválida / Invalid option${NC}" ;;
    esac
    pause
}

# 7. Pull
git_pull() {
    show_header
    echo -e "${CYAN}═══ Pull do Remoto / Pull from Remote ═══${NC}"
    echo ""

    echo -e "${YELLOW}1.${NC} git pull (pull normal)"
    echo -e "${YELLOW}2.${NC} git pull --rebase (pull com rebase)"
    echo -e "${YELLOW}3.${NC} git fetch (apenas buscar / just fetch)"
    echo ""
    echo -e "${YELLOW}Escolha / Choose:${NC} "
    read pull_option

    case $pull_option in
        1) git pull ;;
        2) git pull --rebase ;;
        3) git fetch --all --prune ;;
        *) echo -e "${RED}Opção inválida / Invalid option${NC}" ;;
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
