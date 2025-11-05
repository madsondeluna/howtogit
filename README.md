Como Usar Git / Mini Course: How to Use Git

<!-- Linha 1 — meta + stack (flat-square) -->
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](LICENSE)
![Bilingual](https://img.shields.io/badge/PT%20%2F%20EN-bilingual-success?style=flat-square)
![Git](https://img.shields.io/badge/Git-F05032?logo=git&logoColor=white&style=flat-square)
![GitHub](https://img.shields.io/badge/GitHub-181717?logo=github&logoColor=white&style=flat-square)
![Bash](https://img.shields.io/badge/Bash-4EAA25?logo=gnu-bash&logoColor=white&style=flat-square)
![Markdown](https://img.shields.io/badge/Markdown-000?logo=markdown&logoColor=white&style=flat-square)
![ASCII Art](https://img.shields.io/badge/ASCII%20Art-mono-lightgrey?style=flat-square)

<!-- Linha 2 — informações do curso + automação (for-the-badge) -->
![Course Version](https://img.shields.io/badge/version-2.0-blue?style=for-the-badge)
![Last Updated](https://img.shields.io/badge/updated-Nov_2025-informational?style=for-the-badge)
![Docs PT/EN](https://img.shields.io/badge/docs-PT%2FEN-0A66C2?style=for-the-badge)
![Hands-on](https://img.shields.io/badge/hands--on-labs%20%2B%20CLI-orange?style=for-the-badge)
![Scripts](https://img.shields.io/badge/scripts-bash--based-34495e?style=for-the-badge)
![CI](https://img.shields.io/github/actions/workflow/status/USUARIO/REPO/ci.yml?label=CI&style=for-the-badge)
![Code of Conduct](https://img.shields.io/badge/code%20of%20conduct-MIT%2FContributor--Friendly-lightgrey?style=for-the-badge)


Bem-vindo ao mini curso completo de Git! Aprenda desde o básico até técnicas avançadas, com teoria, prática e ferramentas interativas.

Welcome to the complete Git mini course! Learn from basics to advanced techniques, with theory, practice, and interactive tools.

## Sobre o Curso / About the Course

**Curso Bilíngue / Bilingual Course**

Este curso é apresentado em **português brasileiro (PT-BR) e inglês (EN)** lado a lado em todo o conteúdo. Isso permite que:

This course is presented in **Brazilian Portuguese (PT-BR) and English (EN)** side by side throughout all content. This allows:

- Falantes de português aprendam Git na sua língua nativa / Portuguese speakers to learn Git in their native language
- Falantes de inglês tenham acesso ao mesmo conteúdo / English speakers to have access to the same content
- Estudantes pratiquem ambos os idiomas enquanto aprendem / Students to practice both languages while learning
- O curso seja acessível para a comunidade internacional / The course to be accessible to the international community

**Todas as ferramentas, scripts e documentação são bilíngues!**

**All tools, scripts and documentation are bilingual!**

---

## Índice / Table of Contents

### PARTE 1: FUNDAMENTOS / PART 1: FUNDAMENTALS
- [O que é Git?](#o-que-é-git--what-is-git)
- [O que é GitHub?](#o-que-é-github--what-is-github)
- [Por que usar controle de versão?](#por-que-usar-controle-de-versão--why-use-version-control)
- [Conceitos Essenciais](#conceitos-essenciais--essential-concepts)

### PARTE 2: COMANDOS / PART 2: COMMANDS
- [Módulo 1: Comandos Básicos](#módulo-1-comandos-básicos--module-1-basic-commands)
- [Módulo 2: Comandos Intermediários](#módulo-2-comandos-intermediários--module-2-intermediate-commands)
- [Módulo 3: Comandos Avançados](#módulo-3-comandos-avançados--module-3-advanced-commands)

### PARTE 3: PRÁTICA / PART 3: PRACTICE
- [Ferramentas Interativas](#ferramentas-interativas--interactive-tools)
- [Casos de Uso Reais](#casos-de-uso-reais--real-world-use-cases)
- [Exemplos Práticos](#exemplos-práticos--practical-examples)

---

## PARTE 1: FUNDAMENTOS / PART 1: FUNDAMENTALS

---

## O que é Git? / What is Git?

### Português

**Git** é um sistema de controle de versão distribuído, criado por Linus Torvalds em 2005. Ele permite que você:

- Rastreie todas as mudanças feitas nos seus arquivos ao longo do tempo
- Trabalhe em diferentes versões do seu projeto simultaneamente (branches)
- Colabore com outras pessoas sem sobrescrever o trabalho delas
- Volte para qualquer versão anterior do seu código a qualquer momento

**Analogia:** Imagine o Git como uma "máquina do tempo" para seus arquivos. Você pode:
- Ver o que mudou e quando
- Voltar para qualquer ponto no passado
- Criar realidades alternativas (branches) para testar ideias
- Mesclar diferentes linhas do tempo (merge)

**Git NÃO é:**
- Um serviço na nuvem (isso é GitHub, GitLab, etc.)
- Apenas para programadores (pode ser usado para qualquer tipo de arquivo texto)
- Complicado (com a prática fica natural)

### English

**Git** is a distributed version control system created by Linus Torvalds in 2005. It allows you to:

- Track all changes made to your files over time
- Work on different versions of your project simultaneously (branches)
- Collaborate with others without overwriting their work
- Go back to any previous version of your code at any time

**Analogy:** Think of Git as a "time machine" for your files. You can:
- See what changed and when
- Go back to any point in the past
- Create alternate realities (branches) to test ideas
- Merge different timelines (merge)

**Git is NOT:**
- A cloud service (that's GitHub, GitLab, etc.)
- Only for programmers (can be used for any text files)
- Complicated (with practice it becomes natural)

---

## O que é GitHub? / What is GitHub?

### Português

**GitHub** é uma plataforma web que hospeda repositórios Git na nuvem. É como uma "rede social para código".

**Diferenças principais:**

| Git | GitHub |
|-----|--------|
| Sistema de controle de versão | Plataforma de hospedagem |
| Funciona localmente no seu computador | Funciona na nuvem (online) |
| Software de linha de comando | Interface web + ferramentas |
| Gratuito e open source | Gratuito com recursos pagos |
| Criado em 2005 | Criado em 2008 |

**O que o GitHub adiciona ao Git:**
- Armazenamento remoto (backup na nuvem)
- Interface visual para revisar código
- Pull Requests (revisão de código colaborativa)
- Issues (gerenciamento de tarefas)
- Actions (automação de tarefas)
- Pages (hospedagem de sites estáticos)
- Colaboração social (seguir desenvolvedores, estrelar projetos)

**Alternativas ao GitHub:**
- GitLab
- Bitbucket
- Gitea
- SourceForge

### English

**GitHub** is a web platform that hosts Git repositories in the cloud. It's like a "social network for code".

**Main differences:**

| Git | GitHub |
|-----|--------|
| Version control system | Hosting platform |
| Works locally on your computer | Works in the cloud (online) |
| Command-line software | Web interface + tools |
| Free and open source | Free with paid features |
| Created in 2005 | Created in 2008 |

**What GitHub adds to Git:**
- Remote storage (cloud backup)
- Visual interface for code review
- Pull Requests (collaborative code review)
- Issues (task management)
- Actions (task automation)
- Pages (static site hosting)
- Social collaboration (follow developers, star projects)

**Alternatives to GitHub:**
- GitLab
- Bitbucket
- Gitea
- SourceForge

---

## Por que usar controle de versão? / Why use version control?

### Português

**Problemas sem controle de versão:**
- "Onde está a versão que funcionava?"
- "Quem fez essa mudança e por quê?"
- "Como mesclo meu trabalho com o do meu colega?"
- "Perdi tudo! Não tenho backup!"
- Pastas cheias de: `projeto_v1`, `projeto_v2_final`, `projeto_v2_final_AGORA_VAI`, `projeto_final_final`

**Benefícios do Git:**
1. **Histórico completo:** Toda mudança é registrada com data, autor e motivo
2. **Trabalho paralelo:** Múltiplas pessoas trabalhando simultaneamente sem conflitos
3. **Segurança:** Backup distribuído - cada clone é um backup completo
4. **Experimentação segura:** Teste ideias sem medo de quebrar o que funciona
5. **Rastreabilidade:** Descubra quando e por que cada linha foi modificada
6. **Reversibilidade:** Desfaça erros facilmente
7. **Colaboração:** Trabalhe em equipe de forma organizada
8. **Profissionalismo:** Padrão da indústria de software

**Casos de uso:**
- Desenvolvimento de software (principal)
- Documentação técnica
- Configurações de sistema
- Artigos e livros (texto)
- Trabalhos acadêmicos
- Qualquer projeto com múltiplas versões

### English

**Problems without version control:**
- "Where's the version that worked?"
- "Who made this change and why?"
- "How do I merge my work with my colleague's?"
- "I lost everything! No backup!"
- Folders full of: `project_v1`, `project_v2_final`, `project_v2_final_NOW_IT_WORKS`, `project_final_final`

**Git Benefits:**
1. **Complete history:** Every change is recorded with date, author, and reason
2. **Parallel work:** Multiple people working simultaneously without conflicts
3. **Safety:** Distributed backup - each clone is a complete backup
4. **Safe experimentation:** Test ideas without fear of breaking what works
5. **Traceability:** Discover when and why each line was modified
6. **Reversibility:** Undo mistakes easily
7. **Collaboration:** Work as a team in an organized way
8. **Professionalism:** Software industry standard

**Use cases:**
- Software development (primary)
- Technical documentation
- System configurations
- Articles and books (text)
- Academic papers
- Any project with multiple versions

---

## Conceitos Essenciais / Essential Concepts

### Português

**Repositório (Repository):**
- Pasta que contém seu projeto e todo o histórico Git
- Pode ser local (no seu computador) ou remoto (GitHub, etc.)

**Commit:**
- Um "snapshot" (foto) do seu projeto em um momento específico
- Cada commit tem: hash único, autor, data, mensagem descritiva

**Branch:**
- Uma linha de desenvolvimento independente
- Permite trabalhar em features sem afetar o código principal
- Branch padrão: `main` (ou `master` em projetos antigos)

**Merge:**
- Combinar mudanças de uma branch em outra
- Pode gerar conflitos que precisam ser resolvidos manualmente

**Working Directory:**
- Os arquivos que você vê e edita na sua pasta

**Staging Area (Index):**
- Área intermediária onde você prepara arquivos para commit
- Permite fazer commits seletivos (só alguns arquivos)

**Remote:**
- Versão do repositório hospedada em outro lugar (GitHub, etc.)
- Nome padrão: `origin`

**Estados de um arquivo:**
1. **Untracked:** Git não está rastreando este arquivo
2. **Unmodified:** Arquivo rastreado, sem mudanças desde último commit
3. **Modified:** Arquivo foi modificado mas não está no staging
4. **Staged:** Arquivo pronto para ser commitado

### English

**Repository:**
- Folder containing your project and all Git history
- Can be local (on your computer) or remote (GitHub, etc.)

**Commit:**
- A "snapshot" of your project at a specific moment
- Each commit has: unique hash, author, date, descriptive message

**Branch:**
- An independent line of development
- Allows working on features without affecting main code
- Default branch: `main` (or `master` in older projects)

**Merge:**
- Combine changes from one branch into another
- May generate conflicts that need manual resolution

**Working Directory:**
- The files you see and edit in your folder

**Staging Area (Index):**
- Intermediate area where you prepare files for commit
- Allows selective commits (only some files)

**Remote:**
- Version of repository hosted elsewhere (GitHub, etc.)
- Default name: `origin`

**File states:**
1. **Untracked:** Git is not tracking this file
2. **Unmodified:** Tracked file, no changes since last commit
3. **Modified:** File was modified but not in staging
4. **Staged:** File ready to be committed

---

## PARTE 2: COMANDOS / PART 2: COMMANDS

---

## Módulo 1: Comandos Básicos / Module 1: Basic Commands

**Para quem:** Iniciantes que nunca usaram Git

**For whom:** Beginners who never used Git

**Você vai aprender:** Criar repositório, fazer commits, ver histórico

**You'll learn:** Create repository, make commits, view history

---

### 1.1 Configuração Inicial / Initial Setup

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git config --global user.name "Seu Nome"` | Define seu nome para todos os repositórios | Set your name for all repositories |
| `git config --global user.email "seu@email.com"` | Define seu email para todos os repositórios | Set your email for all repositories |
| `git config --list` | Mostra todas as configurações | Show all configurations |
| `git --version` | Mostra a versão do Git instalada | Show installed Git version |

**Exemplo / Example:**
```bash
git config --global user.name "Madson Aragão"
git config --global user.email "madson@example.com"
git config --global core.editor "vim"
```

---

### 1.2 Criar e Inicializar / Create and Initialize

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git init` | Cria um novo repositório Git na pasta atual | Create new Git repository in current folder |
| `git clone <url>` | Copia um repositório remoto para seu computador | Copy remote repository to your computer |

**Exemplo / Example:**
```bash
# Criar novo projeto
mkdir meu-projeto
cd meu-projeto
git init

# Clonar projeto existente
git clone https://github.com/usuario/repositorio.git
```

---

### 1.3 Status e Diferenças / Status and Differences

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git status` | Mostra estado atual dos arquivos | Show current state of files |
| `git status -s` | Status resumido (formato curto) | Short status format |
| `git diff` | Mostra mudanças não staged | Show unstaged changes |
| `git diff --staged` | Mostra mudanças staged | Show staged changes |

**Exemplo / Example:**
```bash
git status              # Ver o que mudou
git diff arquivo.txt    # Ver mudanças específicas
```

---

### 1.4 Adicionar e Commitar / Add and Commit

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git add <arquivo>` | Adiciona arquivo específico ao staging | Add specific file to staging |
| `git add .` | Adiciona todos os arquivos modificados | Add all modified files |
| `git add -A` | Adiciona todos (incluindo deletados) | Add all (including deleted) |
| `git commit -m "mensagem"` | Cria commit com mensagem | Create commit with message |
| `git commit -am "mensagem"` | Add + commit (só arquivos rastreados) | Add + commit (tracked files only) |

**Exemplo / Example:**
```bash
# Workflow básico
git add arquivo.txt
git commit -m "Adiciona novo arquivo"

# Ou tudo de uma vez
git add .
git commit -m "Atualiza documentação"
```

---

### 1.5 Ver Histórico / View History

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git log` | Mostra histórico completo de commits | Show complete commit history |
| `git log --oneline` | Histórico resumido (1 linha por commit) | Summarized history (1 line per commit) |
| `git log --graph` | Histórico com gráfico visual | History with visual graph |
| `git log -n 5` | Mostra últimos 5 commits | Show last 5 commits |
| `git show <hash>` | Mostra detalhes de um commit específico | Show details of specific commit |

**Exemplo / Example:**
```bash
git log --oneline --graph --all
git log --author="Madson"
git log --since="2 weeks ago"
```

---

### 1.6 Repositórios Remotos / Remote Repositories

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git remote add origin <url>` | Conecta repositório local ao remoto | Connect local repository to remote |
| `git remote -v` | Lista remotos configurados | List configured remotes |
| `git push -u origin main` | Envia commits para remoto (primeira vez) | Send commits to remote (first time) |
| `git push` | Envia commits para remoto | Send commits to remote |
| `git pull` | Busca e mescla mudanças do remoto | Fetch and merge changes from remote |

**Exemplo / Example:**
```bash
# Conectar ao GitHub
git remote add origin https://github.com/usuario/repo.git
git push -u origin main

# Depois é só
git push
git pull
```

---

## Módulo 2: Comandos Intermediários / Module 2: Intermediate Commands

**Para quem:** Quem já sabe o básico e quer trabalhar com branches e colaboração

**For whom:** Those who know basics and want to work with branches and collaboration

---

### 2.1 Trabalhando com Branches / Working with Branches

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git branch` | Lista todas as branches locais | List all local branches |
| `git branch -a` | Lista todas as branches (local + remoto) | List all branches (local + remote) |
| `git branch <nome>` | Cria nova branch | Create new branch |
| `git checkout <nome>` | Muda para outra branch | Switch to another branch |
| `git checkout -b <nome>` | Cria e muda para nova branch | Create and switch to new branch |
| `git switch <nome>` | Muda de branch (comando moderno) | Switch branch (modern command) |
| `git branch -d <nome>` | Deleta branch (se já foi merged) | Delete branch (if already merged) |
| `git branch -D <nome>` | Força deleção de branch | Force delete branch |

**Exemplo / Example:**
```bash
# Criar feature
git checkout -b feature/login
# ... trabalhar ...
git add .
git commit -m "Implementa login"

# Voltar para main
git checkout main
```

---

### 2.2 Merge e Conflitos / Merge and Conflicts

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git merge <branch>` | Mescla branch especificada na atual | Merge specified branch into current |
| `git merge --abort` | Cancela merge em andamento | Cancel ongoing merge |
| `git merge --no-ff <branch>` | Merge sem fast-forward (cria commit de merge) | Merge without fast-forward (creates merge commit) |

**Exemplo / Example:**
```bash
git checkout main
git merge feature/login

# Se houver conflitos
# 1. Edite os arquivos manualmente
# 2. Remova os marcadores de conflito
# 3. git add <arquivo-resolvido>
# 4. git commit
```

---

### 2.3 Stash (Guardar Temporariamente) / Stash (Save Temporarily)

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git stash` | Salva mudanças temporariamente | Save changes temporarily |
| `git stash push -m "mensagem"` | Stash com mensagem descritiva | Stash with descriptive message |
| `git stash list` | Lista todos os stashes | List all stashes |
| `git stash pop` | Recupera último stash e remove da lista | Recover last stash and remove from list |
| `git stash apply` | Aplica stash mas mantém na lista | Apply stash but keep in list |
| `git stash drop` | Remove último stash | Remove last stash |
| `git stash clear` | Remove todos os stashes | Remove all stashes |

**Exemplo / Example:**
```bash
# Mudança de contexto rápida
git stash push -m "WIP: trabalhando no login"
git checkout hotfix
# ... corrige bug urgente ...
git checkout feature/login
git stash pop
```

---

### 2.4 Desfazer Mudanças / Undo Changes

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git restore <arquivo>` | Descarta mudanças em arquivo | Discard changes in file |
| `git restore --staged <arquivo>` | Remove arquivo do staging | Remove file from staging |
| `git reset --soft HEAD~1` | Desfaz commit, mantém mudanças staged | Undo commit, keep changes staged |
| `git reset --mixed HEAD~1` | Desfaz commit, remove do staging | Undo commit, unstage changes |
| `git reset --hard HEAD~1` | Desfaz commit e descarta mudanças | Undo commit and discard changes |
| `git revert <hash>` | Cria novo commit desfazendo outro | Create new commit undoing another |

**Exemplo / Example:**
```bash
# Desfazer mudanças locais
git restore arquivo.txt

# Desfazer último commit (mantém mudanças)
git reset --soft HEAD~1

# Desfazer commit específico (seguro para compartilhado)
git revert a1b2c3d
```

---

### 2.5 Tags (Versões) / Tags (Versions)

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git tag` | Lista todas as tags | List all tags |
| `git tag v1.0.0` | Cria tag leve | Create lightweight tag |
| `git tag -a v1.0.0 -m "Versão 1.0"` | Cria tag anotada | Create annotated tag |
| `git push origin v1.0.0` | Envia tag para remoto | Push tag to remote |
| `git push origin --tags` | Envia todas as tags | Push all tags |

**Exemplo / Example:**
```bash
git tag -a v1.0.0 -m "Primeira versão estável"
git push origin v1.0.0
```

---

## Módulo 3: Comandos Avançados / Module 3: Advanced Commands

**Para quem:** Desenvolvedores experientes que querem dominar Git

**For whom:** Experienced developers who want to master Git

---

### 3.1 Rebase (Reescrever Histórico) / Rebase (Rewrite History)

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git rebase main` | Reaplica commits da branch atual sobre main | Reapply current branch commits on top of main |
| `git rebase -i HEAD~3` | Rebase interativo (editar últimos 3 commits) | Interactive rebase (edit last 3 commits) |
| `git rebase --continue` | Continua rebase após resolver conflitos | Continue rebase after resolving conflicts |
| `git rebase --abort` | Cancela rebase em andamento | Cancel ongoing rebase |
| `git pull --rebase` | Pull com rebase em vez de merge | Pull with rebase instead of merge |

**Quando usar / When to use:**
- Manter histórico linear e limpo
- Antes de criar Pull Request
- Atualizar feature branch com main

**CUIDADO / WARNING:** Não faça rebase de commits já enviados ao remoto!

**Exemplo / Example:**
```bash
git checkout feature/login
git rebase main

# Limpar histórico antes de PR
git rebase -i HEAD~5
# No editor: squash, reword, drop
```

---

### 3.2 Cherry-pick (Commits Seletivos) / Cherry-pick (Selective Commits)

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git cherry-pick <hash>` | Aplica commit específico na branch atual | Apply specific commit to current branch |
| `git cherry-pick <hash1> <hash2>` | Aplica múltiplos commits | Apply multiple commits |
| `git cherry-pick --continue` | Continua após resolver conflitos | Continue after resolving conflicts |
| `git cherry-pick --abort` | Cancela cherry-pick | Cancel cherry-pick |

**Exemplo / Example:**
```bash
# Levar bugfix de uma branch para outra
git checkout main
git cherry-pick a1b2c3d
```

---

### 3.3 Reflog (Recuperar Commits Perdidos) / Reflog (Recover Lost Commits)

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git reflog` | Mostra histórico de movimentos do HEAD | Show history of HEAD movements |
| `git reflog show <branch>` | Reflog de branch específica | Reflog of specific branch |
| `git reset --hard <hash>` | Volta para commit específico do reflog | Go back to specific commit from reflog |

**Exemplo / Example:**
```bash
# "Perdi" commits após reset
git reflog
# HEAD@{2}: commit: Implementa feature X
git reset --hard HEAD@{2}  # Recupera!
```

---

### 3.4 Bisect (Encontrar Bugs) / Bisect (Find Bugs)

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git bisect start` | Inicia busca binária por bug | Start binary search for bug |
| `git bisect bad` | Marca commit atual como ruim | Mark current commit as bad |
| `git bisect good <hash>` | Marca commit como bom | Mark commit as good |
| `git bisect reset` | Finaliza bisect | End bisect |

**Exemplo / Example:**
```bash
git bisect start
git bisect bad                  # Commit atual tem bug
git bisect good v1.0.0          # v1.0.0 funcionava
# Git vai testando commits no meio
# Para cada um você testa e marca: git bisect good/bad
```

---

### 3.5 Blame (Quem Mudou?) / Blame (Who Changed?)

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git blame <arquivo>` | Mostra quem modificou cada linha | Show who modified each line |
| `git blame -L 10,20 <arquivo>` | Blame de linhas específicas | Blame specific lines |
| `git blame -C <arquivo>` | Detecta linhas copiadas | Detect copied lines |

**Exemplo / Example:**
```bash
git blame src/main.py -L 50,60
```

---

### 3.6 Submodules (Submódulos) / Submodules

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git submodule add <url> <path>` | Adiciona repositório como submódulo | Add repository as submodule |
| `git submodule init` | Inicializa submódulos | Initialize submodules |
| `git submodule update` | Atualiza submódulos | Update submodules |
| `git clone --recursive <url>` | Clone com submódulos | Clone with submodules |

---

### 3.7 Worktree (Múltiplos Diretórios) / Worktree (Multiple Directories)

| Comando / Command | Descrição PT | Description EN |
|---|---|---|
| `git worktree add <path> <branch>` | Cria diretório para branch | Create directory for branch |
| `git worktree list` | Lista worktrees | List worktrees |
| `git worktree remove <path>` | Remove worktree | Remove worktree |

**Exemplo / Example:**
```bash
# Trabalhar em 2 branches simultaneamente
git worktree add ../projeto-feature feature/nova
cd ../projeto-feature
# Agora você tem 2 diretórios independentes!
```

---

### 3.8 Hooks (Automação) / Hooks (Automation)

**Arquivos em `.git/hooks/`:**
- `pre-commit`: Executa antes de commit
- `pre-push`: Executa antes de push
- `post-merge`: Executa após merge

**Exemplo / Example:**
```bash
# .git/hooks/pre-commit
#!/bin/bash
npm test  # Roda testes antes de permitir commit
```

---

## PARTE 3: PRÁTICA / PART 3: PRACTICE

---

## Ferramentas Interativas / Interactive Tools

Este curso inclui ferramentas CLI interativas para facilitar o aprendizado e uso do Git.

This course includes interactive CLI tools to facilitate learning and using Git.

---

### 1. Tutorial Interativo / Interactive Tutorial

**[git-learn.sh](scripts/git-learn.sh)** - Aprenda Git do zero

**[git-learn.sh](scripts/git-learn.sh)** - Learn Git from scratch

```bash
./scripts/git-learn.sh
```

**Conteúdo / Content:**
- 12 lições progressivas (básico ao intermediário)
- Explicações em português e inglês
- Exercício prático guiado ao final
- Cria repositório de teste real

**Para quem / For whom:**
- Iniciantes totais em Git
- Quem quer entender os conceitos
- Estudantes aprendendo programação

---

### 2. CLI Interativo / Interactive CLI

**[git-cli.sh](scripts/git-cli.sh)** - Execute comandos Git via menu

**[git-cli.sh](scripts/git-cli.sh)** - Execute Git commands via menu

```bash
./scripts/git-cli.sh
```

**Funcionalidades / Features:**
- 13 operações Git mais comuns
- Interface com menu numerado
- Confirmação para ações perigosas
- Detecta repositório automaticamente
- Mostra branch atual

**Para quem / For whom:**
- Quem quer agilizar tarefas comuns
- Iniciantes que ainda não decoraram comandos
- Uso rápido no dia a dia

---

### 3. Simulador Git / Git Simulator

**[git-simulator.sh](scripts/git-simulator.sh)** - Simule operações Git sem risco

**[git-simulator.sh](scripts/git-simulator.sh)** - Simulate Git operations without risk

```bash
./scripts/git-simulator.sh
```

**Funcionalidades / Features:**
- Cria ambiente de teste temporário
- Simula workflow completo de Git
- Visualiza estado do repositório
- Pratica sem medo de errar
- Ambiente é destruído ao sair

**Para quem / For whom:**
- Quem quer praticar sem risco
- Aulas e workshops de Git
- Testar comandos antes de usar em projetos reais

---

### 4. Lista de Comandos / Commands List

**[list-of-comds-how2git.sh](scripts/list-of-comds-how2git.sh)** - Comandos organizados e comentados

**[list-of-comds-how2git.sh](scripts/list-of-comds-how2git.sh)** - Organized and commented commands

```bash
cat scripts/list-of-comds-how2git.sh
# ou / or
vim scripts/list-of-comds-how2git.sh
```

**Para quem / For whom:**
- Referência rápida
- Copiar e colar comandos
- Estudar sintaxe

---

## Casos de Uso Reais / Real World Use Cases

### Caso 1: Primeiro dia no projeto / First day on project

```bash
# Clonar repositório
git clone https://github.com/empresa/projeto.git
cd projeto

# Ver estrutura de branches
git branch -a

# Ver últimos commits
git log --oneline -10

# Criar sua branch de trabalho
git checkout -b feature/minha-tarefa
```

---

### Caso 2: Feature completa / Complete feature

```bash
# Criar branch
git checkout -b feature/login

# Trabalhar...
git add .
git commit -m "feat: adiciona tela de login"

# Mais trabalho...
git commit -am "feat: adiciona validação"

# Atualizar com main
git fetch origin
git rebase origin/main

# Enviar para revisão
git push -u origin feature/login
# Criar Pull Request no GitHub
```

---

### Caso 3: Bug urgente em produção / Urgent production bug

```bash
# Salvar trabalho atual
git stash push -m "WIP: feature login"

# Criar hotfix
git checkout main
git pull origin main
git checkout -b hotfix/corrige-erro-critico

# Corrigir...
git add .
git commit -m "fix: corrige erro na autenticação"

# Enviar
git push -u origin hotfix/corrige-erro-critico

# Voltar ao trabalho
git checkout feature/login
git stash pop
```

---

### Caso 4: Desfazer desastre / Undo disaster

```bash
# "Deletei tudo com reset --hard!"
git reflog
# HEAD@{1}: reset: moving to HEAD~5
# HEAD@{2}: commit: Implementa feature importante

# Recuperar
git reset --hard HEAD@{2}
# Tudo de volta!
```

---

### Caso 5: Limpar histórico antes de PR / Clean history before PR

```bash
# Você tem 10 commits bagunçados
git log --oneline -10

# Organizar com rebase interativo
git rebase -i HEAD~10

# No editor:
# pick  -> manter commit
# squash -> mesclar com anterior
# reword -> mudar mensagem
# drop   -> descartar

# Forçar atualização da branch
git push --force-with-lease
```

---

### Caso 6: Resolver conflito de merge / Resolve merge conflict

```bash
git merge main
# CONFLICT (content): Merge conflict in arquivo.txt

# Abrir arquivo.txt e ver:
<<<<<<< HEAD
código da sua branch
=======
código da main
>>>>>>> main

# Editar manualmente, remover marcadores
# Escolher o que manter

git add arquivo.txt
git commit -m "Resolve conflito de merge"
```

---

## Exemplos Práticos / Practical Examples

Exemplos detalhados de cenários reais:

Detailed examples of real scenarios:

- **[Resolver Conflitos](examples/01-resolver-conflitos.md)** - Passo a passo completo / Complete step by step
- **[Criar Pull Request](examples/02-criar-pull-request.md)** - Workflow completo / Complete workflow
- **[Desfazer Commits](examples/03-desfazer-commits.md)** - Todas as técnicas / All techniques

---

## Workflows Populares / Popular Workflows

### GitHub Flow (Simples) / GitHub Flow (Simple)

```
main (sempre deployável)
  ├─ feature/login
  ├─ feature/pagamento
  └─ hotfix/bug-critico
```

**Regras / Rules:**
1. `main` sempre funcionando
2. Branch por feature
3. Pull Request para revisar
4. Merge e deploy

---

### Gitflow (Completo) / Gitflow (Complete)

```
main (produção)
  └─ develop (desenvolvimento)
      ├─ feature/nova-feature
      ├─ release/v1.2.0
      └─ hotfix/correcao
```

**Branches:**
- `main`: código em produção
- `develop`: próxima versão
- `feature/*`: novas funcionalidades
- `release/*`: preparação para release
- `hotfix/*`: correções urgentes

---

### Trunk-Based (Rápido) / Trunk-Based (Fast)

```
main (trunk)
  ├─ feature-flags
  └─ commits diretos
```

**Características / Characteristics:**
- Commits diretos em main
- Branches de vida curta (&lt;1 dia)
- Feature flags para funcionalidades incompletas
- CI/CD robusto

---

## Melhores Práticas / Best Practices

### Mensagens de Commit / Commit Messages

**Conventional Commits:**
```
tipo(escopo): descrição curta

Descrição detalhada (opcional)

BREAKING CHANGE: descrição (opcional)
```

**Tipos / Types:**
- `feat`: nova funcionalidade
- `fix`: correção de bug
- `docs`: documentação
- `style`: formatação
- `refactor`: refatoração
- `test`: testes
- `chore`: manutenção

**Exemplo / Example:**
```bash
git commit -m "feat(auth): adiciona autenticação JWT

Implementa login com tokens JWT
Adiciona middleware de autenticação
Expira tokens após 24h"
```

---

### O que NÃO commitar / What NOT to commit

**Nunca commite / Never commit:**
- Senhas, API keys, tokens
- Arquivos de ambiente (`.env`)
- Dependências (`node_modules/`, `venv/`)
- Arquivos de build (`dist/`, `build/`)
- Arquivos do IDE (`.idea/`, `.vscode/`)
- Logs e temporários

**Use `.gitignore` / Use `.gitignore`:**
```bash
# .gitignore
.env
node_modules/
*.log
.DS_Store
```

---

### Quando fazer commit / When to commit

**Faça commit quando / Commit when:**
- Funcionalidade completa e testada
- Bug corrigido e verificado
- Refatoração que não quebra nada
- Documentação atualizada

**Tamanho ideal / Ideal size:**
- Nem muito grande (dificulta revisão)
- Nem muito pequeno (polui histórico)
- Uma mudança lógica completa

---

## Cheatsheet Visual / Visual Cheatsheet

Para referência rápida visual, veja:

For quick visual reference, see:

**[docs/cheatsheet.md](docs/cheatsheet.md)** - Diagramas e comandos organizados

**[docs/cheatsheet.md](docs/cheatsheet.md)** - Diagrams and organized commands

---

## Recursos Externos / External Resources

### Documentação Oficial / Official Documentation
- [Git Documentation](https://git-scm.com/doc) - Documentação completa
- [Pro Git Book](https://git-scm.com/book/en/v2) - Livro gratuito

### Tutoriais Interativos / Interactive Tutorials
- [Learn Git Branching](https://learngitbranching.js.org/) - Visual e interativo
- [Git Visualizer](https://git-school.github.io/visualizing-git/) - Visualize comandos

### Guias / Guides
- [GitHub Guides](https://guides.github.com/)
- [Atlassian Git Tutorials](https://www.atlassian.com/git/tutorials)
- [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)

### Ferramentas Visuais / Visual Tools
- [GitKraken](https://www.gitkraken.com/) - Cliente Git visual
- [SourceTree](https://www.sourcetreeapp.com/) - Cliente gratuito
- [Git Extensions](https://gitextensions.github.io/) - Para Windows

---

## Solução de Problemas / Troubleshooting

### Erro: "fatal: not a git repository"

```bash
# Você não está em um repositório Git
git init  # Para criar novo
# OU
cd /caminho/para/repositorio  # Ir para repositório existente
```

---

### Erro: "Your branch is behind"

```bash
# Seu repositório está desatualizado
git pull origin main
```

---

### Erro: "CONFLICT (content): Merge conflict"

```bash
# Há conflitos de merge
git status  # Ver arquivos conflitantes
# Editar arquivos manualmente
git add <arquivo-resolvido>
git commit
```

---

### Erro: "Permission denied (publickey)"

```bash
# Configure SSH keys
ssh-keygen -t ed25519 -C "seu@email.com"
# Adicione a chave ao GitHub
cat ~/.ssh/id_ed25519.pub
```

---

### "Commitei na branch errada!"

```bash
git log  # Copie hash do commit
git checkout branch-correta
git cherry-pick <hash>
git checkout branch-errada
git reset --hard HEAD~1
```

---

### "Quero desfazer tudo!"

```bash
# Mudanças locais não commitadas
git restore .

# Último commit (mantém mudanças)
git reset --soft HEAD~1

# Último commit (descarta mudanças)
git reset --hard HEAD~1

# Se já deu push
git revert HEAD
```

---

## Próximos Passos / Next Steps

1. **Pratique os comandos básicos**
   - Crie repositório de teste
   - Faça commits
   - Crie branches

2. **Use as ferramentas interativas**
   - Execute `git-learn.sh` para aprender
   - Use `git-cli.sh` no dia a dia
   - Teste com `git-simulator.sh`

3. **Trabalhe em projeto real**
   - Contribua para open source
   - Use Git em seus projetos
   - Colabore com outras pessoas

4. **Estude casos avançados**
   - Rebase interativo
   - Cherry-pick
   - Bisect para debug

5. **Configure seu ambiente**
   - Aliases úteis
   - Ferramentas visuais
   - Integração com IDE

---

## Contribuindo / Contributing

Este é um projeto de aprendizado aberto. Contribuições são bem-vindas!

This is an open learning project. Contributions are welcome!

Veja [CONTRIBUTING.md](CONTRIBUTING.md) para detalhes.

See [CONTRIBUTING.md](CONTRIBUTING.md) for details.

---

## Licença / License

MIT License - veja [LICENSE](LICENSE) para detalhes.

MIT License - see [LICENSE](LICENSE) for details.

---

## Autor / Author

**Madson Aragão**

Criado para ajudar desenvolvedores a dominar Git de forma prática e acessível.

Created to help developers master Git in a practical and accessible way.

---

**Última atualização / Last updated:** 2025-11-05

**Versão do curso / Course version:** 2.0
