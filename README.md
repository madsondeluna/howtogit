
# Guia de Comandos Git / Git Commands Guide

## Configurando um Novo Projeto / Setting Up a New Project

| Comando / Command | Português — Descrição e Exemplo | English — Description and Example |
|---|---|---|
| `git init` | Inicializa um novo repositório Git no diretório atual. Ex.: `git init` | Initializes a new Git repository in the current directory. Ex.: `git init` |
| `git remote add origin <url>` | Conecta o repositório local a um repositório remoto (cria o remote `origin`). Ex.: `git remote add origin https://github.com/usuario/repositorio.git` | Adds a remote named `origin` pointing to the given URL. Ex.: `git remote add origin https://github.com/user/repo.git` |
| `git commit -am "Primeiro commit"` | Adiciona (às vezes resume) e faz commit das mudanças rastreadas com uma mensagem. Ex.: `git commit -am "Adiciona arquivos iniciais"` | Stages (for tracked files) and commits changes with a message. Ex.: `git commit -am "Add initial files"` |
| `git push -u origin main` | Envia a branch `main` ao remoto `origin` e define o upstream (rastreamento). Ex.: `git push -u origin main` | Pushes the `main` branch to the remote `origin` and sets the upstream tracking. Ex.: `git push -u origin main` |

## Trabalhando com Branches / Working with Branches

| Comando / Command | Português — Descrição e Exemplo | English — Description and Example |
|---|---|---|
| `git branch -a` | Lista todas as branches locais e remotas. Ex.: `git branch -a` | Lists all local and remote branches. Ex.: `git branch -a` |
| `git checkout -b feature/nova-feature` | Cria e muda para uma nova branch para desenvolver uma feature. Ex.: `git checkout -b feature/login` | Creates and switches to a new branch for a feature. Ex.: `git checkout -b feature/login` |
| `git push -u origin feature/nova-feature` | Envia a nova branch para o remoto e configura o rastreamento upstream. Ex.: `git push -u origin feature/login` | Pushes the new branch to the remote and sets upstream tracking. Ex.: `git push -u origin feature/login` |
| `git branch -d feature/velha-feature` | Deleta uma branch local (após fusão). Ex.: `git branch -d feature/login-antigo` | Deletes a local branch (commonly after it has been merged). Ex.: `git branch -d feature/old-login` |

## Lidando com Mudanças / Handling Changes

| Comando / Command | Português — Descrição e Exemplo | English — Description and Example |
|---|---|---|
| `git add -p` | Adiciona mudanças interativamente por partes (hunks). Útil para commits seletivos. Ex.: `git add -p` | Interactively stage changes by patch hunks. Useful for selective commits. Ex.: `git add -p` |
| `git commit --amend` | Altera o último commit (mensagem ou conteúdo). Use com cuidado se já enviou ao remoto. Ex.: `git commit --amend -m "Corrige mensagem"` | Modify the last commit (message or contents). Use carefully if already pushed. Ex.: `git commit --amend -m "Fix message"` |
| `git reset --hard HEAD~2` | Desfaz os dois últimos commits localmente (perde mudanças não salvas). Ex.: `git reset --hard HEAD~2` | Discard the last two commits locally (will lose uncommitted changes). Ex.: `git reset --hard HEAD~2` |
| `git stash push -m "Trabalho em progresso"` | Salva mudanças atuais temporariamente com uma mensagem. Ex.: `git stash push -m "Refatoração do login"` | Stash current changes with a message to save work-in-progress. Ex.: `git stash push -m "Login refactor"` |

## Colaboração / Collaboration

| Comando / Command | Português — Descrição e Exemplo | English — Description and Example |
|---|---|---|
| `git fetch origin` | Busca mudanças do remoto `origin` sem mesclar no branch atual. Ex.: `git fetch origin` | Fetch changes from remote `origin` without merging into the current branch. Ex.: `git fetch origin` |
| `git merge origin/main` | Mescla mudanças da branch `main` do remoto no branch atual. Ex.: `git merge origin/main` | Merge changes from the remote `main` branch into your current branch. Ex.: `git merge origin/main` |
| `git rebase -i HEAD~3` | Reescreve/organiza os últimos três commits interativamente para limpar o histórico. Ex.: `git rebase -i HEAD~3` | Interactively rebase the last three commits to tidy up history. Ex.: `git rebase -i HEAD~3` |
| `git cherry-pick <commit-hash>` | Aplica um commit específico de outra branch no branch atual. Ex.: `git cherry-pick a1b2c3d` | Apply a specific commit from another branch onto the current branch. Ex.: `git cherry-pick a1b2c3d` |

## Histórico e Rastreamento / History and Tracking

| Comando / Command | Português — Descrição e Exemplo | English — Description and Example |
|---|---|---|
| `git log --oneline --graph --decorate --all` | Mostra histórico de commits em linha única com gráfico e decorações. Ex.: `git log --oneline --graph --decorate --all` | Show commit history in one line per commit with a graph and decorations for all refs. Ex.: `git log --oneline --graph --decorate --all` |
| `git diff HEAD^ HEAD` | Mostra diferenças entre o último commit e o anterior. Ex.: `git diff HEAD^ HEAD` | Show differences between the last commit and the one before it. Ex.: `git diff HEAD^ HEAD` |
| `git blame arquivo -L 10,20` | Mostra os autores das linhas 10 a 20 de um arquivo. Ex.: `git blame app.py -L 10,20` | Show the authorship of lines 10 to 20 in a file. Ex.: `git blame app.py -L 10,20` |

## Gerenciando Tags / Managing Tags

| Comando / Command | Português — Descrição e Exemplo | English — Description and Example |
|---|---|---|
| `git tag -a v1.0 -m "Versão 1.0 liberada"` | Cria uma tag anotada com mensagem. Ex.: `git tag -a v1.0 -m "Release estável"` | Create an annotated tag with a message. Ex.: `git tag -a v1.0 -m "Stable release"` |
| `git push origin v1.0` | Envia a tag `v1.0` para o repositório remoto. Ex.: `git push origin v1.0` | Push the tag `v1.0` to the remote repository. Ex.: `git push origin v1.0` |

## Lidando com Remotos / Handling Remotes

| Comando / Command | Português — Descrição e Exemplo | English — Description and Example |
|---|---|---|
| `git remote -v` | Lista os repositórios remotos configurados e suas URLs. Ex.: `git remote -v` | Lists configured remote repositories and their URLs. Ex.: `git remote -v` |
| `git fetch --all --prune` | Busca mudanças de todos os remotos e remove referências remotas obsoletas. Ex.: `git fetch --all --prune` | Fetches from all remotes and prunes deleted remote branches. Ex.: `git fetch --all --prune` |

## Desfazendo Mudanças / Undoing Changes

| Comando / Command | Português — Descrição e Exemplo | English — Description and Example |
|---|---|---|
| `git reset --soft HEAD~1` | Desfaz o último commit mas mantém as alterações staged (na área de preparação). Ex.: `git reset --soft HEAD~1` | Undo the last commit but keep the changes staged. Ex.: `git reset --soft HEAD~1` |
| `git checkout -- <arquivo>` | Descarta alterações locais em um arquivo (retorna à versão do último commit). Ex.: `git checkout -- main.py` | Discard local changes in a file (revert to the version in the last commit). Ex.: `git checkout -- main.py` |

