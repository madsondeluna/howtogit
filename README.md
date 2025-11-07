# How to Git

A Quick GitHub Course / Um Curso Rápido de GitHub

---

<p align="center">

<!-- Linha 1 — meta + stack (for-the-badge, cores de marca, logos) -->
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)
![Bilingual](https://img.shields.io/badge/PT%20%2F%20EN-Bilingual-0A66C2?style=for-the-badge)
![Git](https://img.shields.io/badge/Git-F05032?logo=git&logoColor=white&style=for-the-badge)
![GitHub](https://img.shields.io/badge/GitHub-181717?logo=github&logoColor=white&style=for-the-badge)
![Bash](https://img.shields.io/badge/Bash-4EAA25?logo=gnu-bash&logoColor=white&style=for-the-badge)
![Markdown](https://img.shields.io/badge/Markdown-000000?logo=markdown&logoColor=white&style=for-the-badge)
![ASCII%20Art](https://img.shields.io/badge/ASCII%20Art-6B7280?logo=readme&logoColor=white&style=for-the-badge)

<!-- Linha 2 — informações do curso + automação -->
![Version](https://img.shields.io/badge/Version-2.0-2B6CB0?style=for-the-badge)
![Updated](https://img.shields.io/badge/Updated-Nov_2025-00A3A3?style=for-the-badge)
![Docs](https://img.shields.io/badge/Docs-PT%2FEN-0A66C2?style=for-the-badge)
![Hands--on](https://img.shields.io/badge/Hands--on-Labs%20%2B%20CLI-F39C12?style=for-the-badge)
![Scripts](https://img.shields.io/badge/Scripts-Bash--based-34495E?style=for-the-badge)

</p>

---

## Bilingual Course | Curso Bilíngue

**English:** This is a complete Git course taught in both English and Brazilian Portuguese. All learning materials, interactive CLI tools, and documentation are fully bilingual. The README is organized in two main sections: **first in English**, then **in Portuguese**. Use the table of contents below to jump directly to your preferred language.

**Português:** Este é um curso completo de Git ministrado em inglês e português brasileiro. Todos os materiais de aprendizado, ferramentas CLI interativas e documentação são totalmente bilíngues. O README está organizado em duas seções principais: **primeiro em inglês**, depois **em português**. Use o índice abaixo para ir diretamente para seu idioma preferido.

---

## Table of Contents | Índice

### English Version
- [About the Course (EN)](#about-the-course-english)
- [Part 1: Fundamentals (EN)](#part-1-fundamentals)
- [Part 2: Commands (EN)](#part-2-commands)
- [Part 3: Practice (EN)](#part-3-practice)
- [Real World Use Cases (EN)](#real-world-use-cases)
- [Best Practices (EN)](#best-practices)
- [Troubleshooting (EN)](#troubleshooting)
- [External Resources (EN)](#external-resources)
- [Contributing (EN)](#contributing)
- [Found an Error? Report It! (EN)](#found-an-error-report-it)

### Versão em Português
- [Sobre o Curso (PT)](#sobre-o-curso-português)
- [Parte 1: Fundamentos (PT)](#parte-1-fundamentos)
- [Parte 2: Comandos (PT)](#parte-2-comandos)
- [Parte 3: Prática (PT)](#parte-3-prática)
- [Casos de Uso Reais (PT)](#casos-de-uso-reais)
- [Melhores Práticas (PT)](#melhores-práticas)
- [Solução de Problemas (PT)](#solução-de-problemas)
- [Recursos Externos (PT)](#recursos-externos)
- [Contribuindo (PT)](#contribuindo)
- [Encontrou um Erro? Reporte! (PT)](#encontrou-um-erro-reporte)

---

# ENGLISH VERSION

---

## About the Course (English)

Welcome to the complete Git mini course! Learn from basics to advanced techniques, with theory, practice, and interactive tools.

**What makes this course special:**

- **Bilingual Content:** All materials, scripts, and CLI tools are available in both English and Portuguese
- **Interactive Learning:** Hands-on CLI tools to practice Git commands safely
- **Real-World Focus:** Practical examples and use cases from actual development workflows
- **Progressive Learning:** From basic to advanced, with clear progression
- **Open Source:** Free and open to contributions

**All unsupervised learning CLI tools are bilingual!**

---

## Part 1: Fundamentals

### What is Git?

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

### What is GitHub?

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

### Why use version control?

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

### Essential Concepts

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

## Part 2: Commands

---

## Module 1: Basic Commands

**For whom:** Beginners who never used Git

**You'll learn:** Create repository, make commits, view history

---

### 1.1 Initial Setup

| Command | Description |
|---|---|
| `git config --global user.name "Your Name"` | Set your name for all repositories |
| `git config --global user.email "your@email.com"` | Set your email for all repositories |
| `git config --list` | Show all configurations |
| `git --version` | Show installed Git version |

**Example:**
```bash
git config --global user.name "Madson Aragão"
git config --global user.email "madson@example.com"
git config --global core.editor "vim"
```

---

### 1.2 Create and Initialize

| Command | Description |
|---|---|
| `git init` | Create new Git repository in current folder |
| `git clone <url>` | Copy remote repository to your computer |

**Example:**
```bash
# Create new project
mkdir my-project
cd my-project
git init

# Clone existing project
git clone https://github.com/user/repository.git
```

---

### 1.3 Status and Differences

| Command | Description |
|---|---|
| `git status` | Show current state of files |
| `git status -s` | Short status format |
| `git diff` | Show unstaged changes |
| `git diff --staged` | Show staged changes |

**Example:**
```bash
git status              # See what changed
git diff file.txt       # See specific changes
```

---

### 1.4 Add and Commit

| Command | Description |
|---|---|
| `git add <file>` | Add specific file to staging |
| `git add .` | Add all modified files |
| `git add -A` | Add all (including deleted) |
| `git commit -m "message"` | Create commit with message |
| `git commit -am "message"` | Add + commit (tracked files only) |

**Example:**
```bash
# Basic workflow
git add file.txt
git commit -m "Add new file"

# Or all at once
git add .
git commit -m "Update documentation"
```

---

### 1.5 View History

| Command | Description |
|---|---|
| `git log` | Show complete commit history |
| `git log --oneline` | Summarized history (1 line per commit) |
| `git log --graph` | History with visual graph |
| `git log -n 5` | Show last 5 commits |
| `git show <hash>` | Show details of specific commit |

**Example:**
```bash
git log --oneline --graph --all
git log --author="Madson"
git log --since="2 weeks ago"
```

---

### 1.6 Remote Repositories

| Command | Description |
|---|---|
| `git remote add origin <url>` | Connect local repository to remote |
| `git remote -v` | List configured remotes |
| `git push -u origin main` | Send commits to remote (first time) |
| `git push` | Send commits to remote |
| `git pull` | Fetch and merge changes from remote |

**Example:**
```bash
# Connect to GitHub
git remote add origin https://github.com/user/repo.git
git push -u origin main

# Then just
git push
git pull
```

---

## Module 2: Intermediate Commands

**For whom:** Those who know basics and want to work with branches and collaboration

---

### 2.1 Working with Branches

| Command | Description |
|---|---|
| `git branch` | List all local branches |
| `git branch -a` | List all branches (local + remote) |
| `git branch <name>` | Create new branch |
| `git checkout <name>` | Switch to another branch |
| `git checkout -b <name>` | Create and switch to new branch |
| `git switch <name>` | Switch branch (modern command) |
| `git branch -d <name>` | Delete branch (if already merged) |
| `git branch -D <name>` | Force delete branch |

**Example:**
```bash
# Create feature
git checkout -b feature/login
# ... work ...
git add .
git commit -m "Implement login"

# Return to main
git checkout main
```

---

### 2.2 Merge and Conflicts

| Command | Description |
|---|---|
| `git merge <branch>` | Merge specified branch into current |
| `git merge --abort` | Cancel ongoing merge |
| `git merge --no-ff <branch>` | Merge without fast-forward (creates merge commit) |

**Example:**
```bash
git checkout main
git merge feature/login

# If there are conflicts
# 1. Edit files manually
# 2. Remove conflict markers
# 3. git add <resolved-file>
# 4. git commit
```

---

### 2.3 Stash (Save Temporarily)

| Command | Description |
|---|---|
| `git stash` | Save changes temporarily |
| `git stash push -m "message"` | Stash with descriptive message |
| `git stash list` | List all stashes |
| `git stash pop` | Recover last stash and remove from list |
| `git stash apply` | Apply stash but keep in list |
| `git stash drop` | Remove last stash |
| `git stash clear` | Remove all stashes |

**Example:**
```bash
# Quick context switch
git stash push -m "WIP: working on login"
git checkout hotfix
# ... fix urgent bug ...
git checkout feature/login
git stash pop
```

---

### 2.4 Undo Changes

| Command | Description |
|---|---|
| `git restore <file>` | Discard changes in file |
| `git restore --staged <file>` | Remove file from staging |
| `git reset --soft HEAD~1` | Undo commit, keep changes staged |
| `git reset --mixed HEAD~1` | Undo commit, unstage changes |
| `git reset --hard HEAD~1` | Undo commit and discard changes |
| `git revert <hash>` | Create new commit undoing another |

**Example:**
```bash
# Undo local changes
git restore file.txt

# Undo last commit (keep changes)
git reset --soft HEAD~1

# Undo specific commit (safe for shared)
git revert a1b2c3d
```

---

### 2.5 Tags (Versions)

| Command | Description |
|---|---|
| `git tag` | List all tags |
| `git tag v1.0.0` | Create lightweight tag |
| `git tag -a v1.0.0 -m "Version 1.0"` | Create annotated tag |
| `git push origin v1.0.0` | Push tag to remote |
| `git push origin --tags` | Push all tags |

**Example:**
```bash
git tag -a v1.0.0 -m "First stable version"
git push origin v1.0.0
```

---

## Module 3: Advanced Commands

**For whom:** Experienced developers who want to master Git

---

### 3.1 Rebase (Rewrite History)

| Command | Description |
|---|---|
| `git rebase main` | Reapply current branch commits on top of main |
| `git rebase -i HEAD~3` | Interactive rebase (edit last 3 commits) |
| `git rebase --continue` | Continue rebase after resolving conflicts |
| `git rebase --abort` | Cancel ongoing rebase |
| `git pull --rebase` | Pull with rebase instead of merge |

**When to use:**
- Keep history linear and clean
- Before creating Pull Request
- Update feature branch with main

**WARNING:** Don't rebase commits already pushed to remote!

**Example:**
```bash
git checkout feature/login
git rebase main

# Clean history before PR
git rebase -i HEAD~5
# In editor: squash, reword, drop
```

---

### 3.2 Cherry-pick (Selective Commits)

| Command | Description |
|---|---|
| `git cherry-pick <hash>` | Apply specific commit to current branch |
| `git cherry-pick <hash1> <hash2>` | Apply multiple commits |
| `git cherry-pick --continue` | Continue after resolving conflicts |
| `git cherry-pick --abort` | Cancel cherry-pick |

**Example:**
```bash
# Take bugfix from one branch to another
git checkout main
git cherry-pick a1b2c3d
```

---

### 3.3 Reflog (Recover Lost Commits)

| Command | Description |
|---|---|
| `git reflog` | Show history of HEAD movements |
| `git reflog show <branch>` | Reflog of specific branch |
| `git reset --hard <hash>` | Go back to specific commit from reflog |

**Example:**
```bash
# "Lost" commits after reset
git reflog
# HEAD@{2}: commit: Implement feature X
git reset --hard HEAD@{2}  # Recover!
```

---

### 3.4 Bisect (Find Bugs)

| Command | Description |
|---|---|
| `git bisect start` | Start binary search for bug |
| `git bisect bad` | Mark current commit as bad |
| `git bisect good <hash>` | Mark commit as good |
| `git bisect reset` | End bisect |

**Example:**
```bash
git bisect start
git bisect bad                  # Current commit has bug
git bisect good v1.0.0          # v1.0.0 worked
# Git will test commits in the middle
# For each one you test and mark: git bisect good/bad
```

---

### 3.5 Blame (Who Changed?)

| Command | Description |
|---|---|
| `git blame <file>` | Show who modified each line |
| `git blame -L 10,20 <file>` | Blame specific lines |
| `git blame -C <file>` | Detect copied lines |

**Example:**
```bash
git blame src/main.py -L 50,60
```

---

### 3.6 Submodules

| Command | Description |
|---|---|
| `git submodule add <url> <path>` | Add repository as submodule |
| `git submodule init` | Initialize submodules |
| `git submodule update` | Update submodules |
| `git clone --recursive <url>` | Clone with submodules |

---

### 3.7 Worktree (Multiple Directories)

| Command | Description |
|---|---|
| `git worktree add <path> <branch>` | Create directory for branch |
| `git worktree list` | List worktrees |
| `git worktree remove <path>` | Remove worktree |

**Example:**
```bash
# Work on 2 branches simultaneously
git worktree add ../project-feature feature/new
cd ../project-feature
# Now you have 2 independent directories!
```

---

### 3.8 Hooks (Automation)

**Files in `.git/hooks/`:**
- `pre-commit`: Execute before commit
- `pre-push`: Execute before push
- `post-merge`: Execute after merge

**Example:**
```bash
# .git/hooks/pre-commit
#!/bin/bash
npm test  # Run tests before allowing commit
```

---

## Part 3: Practice

---

## Interactive Tools

This course includes interactive CLI tools to facilitate learning and using Git.

---

### 1. Interactive Tutorial

**[git-learn.sh](scripts/git-learn.sh)** - Learn Git from scratch

```bash
./scripts/git-learn.sh
```

**Content:**
- 12 progressive lessons (basic to intermediate)
- Explanations in Portuguese and English
- Guided practical exercise at the end
- Creates real test repository

**For whom:**
- Total Git beginners
- Those who want to understand concepts
- Students learning programming

---

### 2. Interactive CLI

**[git-cli.sh](scripts/git-cli.sh)** - Execute Git commands via menu

```bash
./scripts/git-cli.sh
```

**Features:**
- 13 most common Git operations
- Numbered menu interface
- Confirmation for dangerous actions
- Detects repository automatically
- Shows current branch

**For whom:**
- Those who want to speed up common tasks
- Beginners who haven't memorized commands yet
- Quick daily use

---

### 3. Git Simulator

**[git-simulator.sh](scripts/git-simulator.sh)** - Simulate Git operations without risk

```bash
./scripts/git-simulator.sh
```

**Features:**
- Creates temporary test environment
- Simulates complete Git workflow
- Visualizes repository state
- Practice without fear of mistakes
- Environment is destroyed on exit

**For whom:**
- Those who want to practice without risk
- Git classes and workshops
- Test commands before using in real projects

---

### 4. Commands List

**[list-of-comds-how2git.sh](scripts/list-of-comds-how2git.sh)** - Organized and commented commands

```bash
cat scripts/list-of-comds-how2git.sh
# or
vim scripts/list-of-comds-how2git.sh
```

**For whom:**
- Quick reference
- Copy and paste commands
- Study syntax

---

## Real World Use Cases

### Case 1: First day on project

```bash
# Clone repository
git clone https://github.com/company/project.git
cd project

# View branch structure
git branch -a

# View recent commits
git log --oneline -10

# Create your work branch
git checkout -b feature/my-task
```

---

### Case 2: Complete feature

```bash
# Create branch
git checkout -b feature/login

# Work...
git add .
git commit -m "feat: add login screen"

# More work...
git commit -am "feat: add validation"

# Update with main
git fetch origin
git rebase origin/main

# Send for review
git push -u origin feature/login
# Create Pull Request on GitHub
```

---

### Case 3: Urgent production bug

```bash
# Save current work
git stash push -m "WIP: login feature"

# Create hotfix
git checkout main
git pull origin main
git checkout -b hotfix/fix-critical-error

# Fix...
git add .
git commit -m "fix: correct authentication error"

# Send
git push -u origin hotfix/fix-critical-error

# Return to work
git checkout feature/login
git stash pop
```

---

### Case 4: Undo disaster

```bash
# "I deleted everything with reset --hard!"
git reflog
# HEAD@{1}: reset: moving to HEAD~5
# HEAD@{2}: commit: Implement important feature

# Recover
git reset --hard HEAD@{2}
# Everything back!
```

---

### Case 5: Clean history before PR

```bash
# You have 10 messy commits
git log --oneline -10

# Organize with interactive rebase
git rebase -i HEAD~10

# In editor:
# pick  -> keep commit
# squash -> merge with previous
# reword -> change message
# drop   -> discard

# Force update branch
git push --force-with-lease
```

---

### Case 6: Resolve merge conflict

```bash
git merge main
# CONFLICT (content): Merge conflict in file.txt

# Open file.txt and see:
<<<<<<< HEAD
your branch code
=======
main code
>>>>>>> main

# Edit manually, remove markers
# Choose what to keep

git add file.txt
git commit -m "Resolve merge conflict"
```

---

## Practical Examples

Detailed examples of real scenarios:

- **[Resolve Conflicts](examples/01-resolver-conflitos.md)** - Complete step by step
- **[Create Pull Request](examples/02-criar-pull-request.md)** - Complete workflow
- **[Undo Commits](examples/03-desfazer-commits.md)** - All techniques

---

## Popular Workflows

### GitHub Flow (Simple)

```
main (always deployable)
  ├─ feature/login
  ├─ feature/payment
  └─ hotfix/critical-bug
```

**Rules:**
1. `main` always working
2. Branch per feature
3. Pull Request to review
4. Merge and deploy

---

### Gitflow (Complete)

```
main (production)
  └─ develop (development)
      ├─ feature/new-feature
      ├─ release/v1.2.0
      └─ hotfix/correction
```

**Branches:**
- `main`: production code
- `develop`: next version
- `feature/*`: new features
- `release/*`: release preparation
- `hotfix/*`: urgent fixes

---

### Trunk-Based (Fast)

```
main (trunk)
  ├─ feature-flags
  └─ direct commits
```

**Characteristics:**
- Direct commits to main
- Short-lived branches (<1 day)
- Feature flags for incomplete features
- Robust CI/CD

---

## Best Practices

### Commit Messages

**Conventional Commits:**
```
type(scope): short description

Detailed description (optional)

BREAKING CHANGE: description (optional)
```

**Types:**
- `feat`: new feature
- `fix`: bug fix
- `docs`: documentation
- `style`: formatting
- `refactor`: refactoring
- `test`: tests
- `chore`: maintenance

**Example:**
```bash
git commit -m "feat(auth): add JWT authentication

Implement login with JWT tokens
Add authentication middleware
Tokens expire after 24h"
```

---

### What NOT to commit

**Never commit:**
- Passwords, API keys, tokens
- Environment files (`.env`)
- Dependencies (`node_modules/`, `venv/`)
- Build files (`dist/`, `build/`)
- IDE files (`.idea/`, `.vscode/`)
- Logs and temporary files

**Use `.gitignore`:**
```bash
# .gitignore
.env
node_modules/
*.log
.DS_Store
```

---

### When to commit

**Commit when:**
- Complete and tested functionality
- Bug fixed and verified
- Refactoring that doesn't break anything
- Updated documentation

**Ideal size:**
- Not too large (makes review difficult)
- Not too small (clutters history)
- One complete logical change

---

## Visual Cheatsheet

For quick visual reference, see:

**[docs/cheatsheet.md](docs/cheatsheet.md)** - Diagrams and organized commands

---

## External Resources

### Official Documentation
- [Git Documentation](https://git-scm.com/doc) - Complete documentation
- [Pro Git Book](https://git-scm.com/book/en/v2) - Free book

### Interactive Tutorials
- [Learn Git Branching](https://learngitbranching.js.org/) - Visual and interactive
- [Git Visualizer](https://git-school.github.io/visualizing-git/) - Visualize commands

### Guides
- [GitHub Guides](https://guides.github.com/)
- [Atlassian Git Tutorials](https://www.atlassian.com/git/tutorials)
- [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)

### Visual Tools
- [GitKraken](https://www.gitkraken.com/) - Visual Git client
- [SourceTree](https://www.sourcetreeapp.com/) - Free client
- [Git Extensions](https://gitextensions.github.io/) - For Windows

---

## Troubleshooting

### Error: "fatal: not a git repository"

```bash
# You're not in a Git repository
git init  # To create new
# OR
cd /path/to/repository  # Go to existing repository
```

---

### Error: "Your branch is behind"

```bash
# Your repository is outdated
git pull origin main
```

---

### Error: "CONFLICT (content): Merge conflict"

```bash
# There are merge conflicts
git status  # See conflicting files
# Edit files manually
git add <resolved-file>
git commit
```

---

### Error: "Permission denied (publickey)"

```bash
# Configure SSH keys
ssh-keygen -t ed25519 -C "your@email.com"
# Add key to GitHub
cat ~/.ssh/id_ed25519.pub
```

---

### "I committed to wrong branch!"

```bash
git log  # Copy commit hash
git checkout correct-branch
git cherry-pick <hash>
git checkout wrong-branch
git reset --hard HEAD~1
```

---

### "I want to undo everything!"

```bash
# Uncommitted local changes
git restore .

# Last commit (keep changes)
git reset --soft HEAD~1

# Last commit (discard changes)
git reset --hard HEAD~1

# If already pushed
git revert HEAD
```

---

## Next Steps

1. **Practice basic commands**
   - Create test repository
   - Make commits
   - Create branches

2. **Use interactive tools**
   - Run `git-learn.sh` to learn
   - Use `git-cli.sh` daily
   - Test with `git-simulator.sh`

3. **Work on real project**
   - Contribute to open source
   - Use Git in your projects
   - Collaborate with others

4. **Study advanced cases**
   - Interactive rebase
   - Cherry-pick
   - Bisect for debugging

5. **Configure your environment**
   - Useful aliases
   - Visual tools
   - IDE integration

---

## Contributing

This is an open learning project. Contributions are welcome!

See [CONTRIBUTING.md](CONTRIBUTING.md) for details.

---

## Found an Error? Report It!

Since Git is infinite and many things are similar to each other, I definitely don't know everything. So, if anyone finds any error or has suggestions, feel free to open an issue and I'll fix it promptly. I even promise to buy you a chocolate as a reward for your contribution!

### How to Open an Issue

1. **Go to the repository on GitHub**
   - Navigate to: https://github.com/madsondeluna/howtogit-1

2. **Click on the "Issues" tab**
   - Located at the top of the repository page

3. **Click the green "New issue" button**

4. **Fill in the issue details:**
   - **Title:** Write a clear, concise title describing the problem or suggestion
   - **Description:** Provide details about:
     - What's wrong or what could be improved
     - Where you found the error (which file, section, or command)
     - Any screenshots if applicable
     - Your suggestions for improvement

5. **Submit:** Click "Submit new issue"

**Example issue titles:**
- "Error in git rebase command example"
- "Suggestion: Add section about git worktree"
- "Typo in Portuguese version - Módulo 2"

---

## License

MIT License - see [LICENSE](LICENSE) for details.

---

## Author

**Madson Aragão**

Created to help developers master Git in a practical and accessible way.

---

**Last updated:** 2025-11-05

**Course version:** 2.0

---

---

---

# VERSÃO EM PORTUGUÊS

---

## Sobre o Curso (Português)

Bem-vindo ao curso completo de Git! Aprenda desde o básico até técnicas avançadas, com teoria, prática e ferramentas interativas.

**O que torna este curso especial:**

- **Conteúdo Bilíngue:** Todos os materiais, scripts e ferramentas CLI disponíveis em inglês e português
- **Aprendizado Interativo:** Ferramentas CLI práticas para praticar comandos Git com segurança
- **Foco no Mundo Real:** Exemplos práticos e casos de uso de workflows reais de desenvolvimento
- **Aprendizado Progressivo:** Do básico ao avançado, com progressão clara
- **Código Aberto:** Gratuito e aberto a contribuições

**Todas as ferramentas CLI de aprendizado não supervisionado são bilíngues!**

---

## Parte 1: Fundamentos

### O que é Git?

**Git** é um sistema de controle de versão distribuído criado por Linus Torvalds em 2005. Ele permite que você:

- Rastreie todas as mudanças feitas nos seus arquivos ao longo do tempo
- Trabalhe em diferentes versões do seu projeto simultaneamente (branches)
- Colabore com outras pessoas sem sobrescrever o trabalho delas
- Volte para qualquer versão anterior do seu código a qualquer momento

**Analogia:** Pense no Git como uma "máquina do tempo" para seus arquivos. Você pode:
- Ver o que mudou e quando
- Voltar para qualquer ponto no passado
- Criar realidades alternativas (branches) para testar ideias
- Mesclar diferentes linhas do tempo (merge)

**Git NÃO é:**
- Um serviço de nuvem (isso é GitHub, GitLab, etc.)
- Apenas para programadores (pode ser usado para qualquer arquivo de texto)
- Complicado (com prática se torna natural)

---

### O que é GitHub?

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

---

### Por que usar controle de versão?

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

---

### Conceitos Essenciais

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

---

## Parte 2: Comandos

---

## Módulo 1: Comandos Básicos

**Para quem:** Iniciantes que nunca usaram Git

**Você vai aprender:** Criar repositório, fazer commits, ver histórico

---

### 1.1 Configuração Inicial

| Comando | Descrição |
|---|---|
| `git config --global user.name "Seu Nome"` | Define seu nome para todos os repositórios |
| `git config --global user.email "seu@email.com"` | Define seu email para todos os repositórios |
| `git config --list` | Mostra todas as configurações |
| `git --version` | Mostra a versão do Git instalada |

**Exemplo:**
```bash
git config --global user.name "Madson Aragão"
git config --global user.email "madson@example.com"
git config --global core.editor "vim"
```

---

### 1.2 Criar e Inicializar

| Comando | Descrição |
|---|---|
| `git init` | Cria um novo repositório Git na pasta atual |
| `git clone <url>` | Copia um repositório remoto para seu computador |

**Exemplo:**
```bash
# Criar novo projeto
mkdir meu-projeto
cd meu-projeto
git init

# Clonar projeto existente
git clone https://github.com/usuario/repositorio.git
```

---

### 1.3 Status e Diferenças

| Comando | Descrição |
|---|---|
| `git status` | Mostra estado atual dos arquivos |
| `git status -s` | Status resumido (formato curto) |
| `git diff` | Mostra mudanças não staged |
| `git diff --staged` | Mostra mudanças staged |

**Exemplo:**
```bash
git status              # Ver o que mudou
git diff arquivo.txt    # Ver mudanças específicas
```

---

### 1.4 Adicionar e Commitar

| Comando | Descrição |
|---|---|
| `git add <arquivo>` | Adiciona arquivo específico ao staging |
| `git add .` | Adiciona todos os arquivos modificados |
| `git add -A` | Adiciona todos (incluindo deletados) |
| `git commit -m "mensagem"` | Cria commit com mensagem |
| `git commit -am "mensagem"` | Add + commit (só arquivos rastreados) |

**Exemplo:**
```bash
# Workflow básico
git add arquivo.txt
git commit -m "Adiciona novo arquivo"

# Ou tudo de uma vez
git add .
git commit -m "Atualiza documentação"
```

---

### 1.5 Ver Histórico

| Comando | Descrição |
|---|---|
| `git log` | Mostra histórico completo de commits |
| `git log --oneline` | Histórico resumido (1 linha por commit) |
| `git log --graph` | Histórico com gráfico visual |
| `git log -n 5` | Mostra últimos 5 commits |
| `git show <hash>` | Mostra detalhes de um commit específico |

**Exemplo:**
```bash
git log --oneline --graph --all
git log --author="Madson"
git log --since="2 weeks ago"
```

---

### 1.6 Repositórios Remotos

| Comando | Descrição |
|---|---|
| `git remote add origin <url>` | Conecta repositório local ao remoto |
| `git remote -v` | Lista remotos configurados |
| `git push -u origin main` | Envia commits para remoto (primeira vez) |
| `git push` | Envia commits para remoto |
| `git pull` | Busca e mescla mudanças do remoto |

**Exemplo:**
```bash
# Conectar ao GitHub
git remote add origin https://github.com/usuario/repo.git
git push -u origin main

# Depois é só
git push
git pull
```

---

## Módulo 2: Comandos Intermediários

**Para quem:** Quem já sabe o básico e quer trabalhar com branches e colaboração

---

### 2.1 Trabalhando com Branches

| Comando | Descrição |
|---|---|
| `git branch` | Lista todas as branches locais |
| `git branch -a` | Lista todas as branches (local + remoto) |
| `git branch <nome>` | Cria nova branch |
| `git checkout <nome>` | Muda para outra branch |
| `git checkout -b <nome>` | Cria e muda para nova branch |
| `git switch <nome>` | Muda de branch (comando moderno) |
| `git branch -d <nome>` | Deleta branch (se já foi merged) |
| `git branch -D <nome>` | Força deleção de branch |

**Exemplo:**
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

### 2.2 Merge e Conflitos

| Comando | Descrição |
|---|---|
| `git merge <branch>` | Mescla branch especificada na atual |
| `git merge --abort` | Cancela merge em andamento |
| `git merge --no-ff <branch>` | Merge sem fast-forward (cria commit de merge) |

**Exemplo:**
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

### 2.3 Stash (Guardar Temporariamente)

| Comando | Descrição |
|---|---|
| `git stash` | Salva mudanças temporariamente |
| `git stash push -m "mensagem"` | Stash com mensagem descritiva |
| `git stash list` | Lista todos os stashes |
| `git stash pop` | Recupera último stash e remove da lista |
| `git stash apply` | Aplica stash mas mantém na lista |
| `git stash drop` | Remove último stash |
| `git stash clear` | Remove todos os stashes |

**Exemplo:**
```bash
# Mudança de contexto rápida
git stash push -m "WIP: trabalhando no login"
git checkout hotfix
# ... corrige bug urgente ...
git checkout feature/login
git stash pop
```

---

### 2.4 Desfazer Mudanças

| Comando | Descrição |
|---|---|
| `git restore <arquivo>` | Descarta mudanças em arquivo |
| `git restore --staged <arquivo>` | Remove arquivo do staging |
| `git reset --soft HEAD~1` | Desfaz commit, mantém mudanças staged |
| `git reset --mixed HEAD~1` | Desfaz commit, remove do staging |
| `git reset --hard HEAD~1` | Desfaz commit e descarta mudanças |
| `git revert <hash>` | Cria novo commit desfazendo outro |

**Exemplo:**
```bash
# Desfazer mudanças locais
git restore arquivo.txt

# Desfazer último commit (mantém mudanças)
git reset --soft HEAD~1

# Desfazer commit específico (seguro para compartilhado)
git revert a1b2c3d
```

---

### 2.5 Tags (Versões)

| Comando | Descrição |
|---|---|
| `git tag` | Lista todas as tags |
| `git tag v1.0.0` | Cria tag leve |
| `git tag -a v1.0.0 -m "Versão 1.0"` | Cria tag anotada |
| `git push origin v1.0.0` | Envia tag para remoto |
| `git push origin --tags` | Envia todas as tags |

**Exemplo:**
```bash
git tag -a v1.0.0 -m "Primeira versão estável"
git push origin v1.0.0
```

---

## Módulo 3: Comandos Avançados

**Para quem:** Desenvolvedores experientes que querem dominar Git

---

### 3.1 Rebase (Reescrever Histórico)

| Comando | Descrição |
|---|---|
| `git rebase main` | Reaplica commits da branch atual sobre main |
| `git rebase -i HEAD~3` | Rebase interativo (editar últimos 3 commits) |
| `git rebase --continue` | Continua rebase após resolver conflitos |
| `git rebase --abort` | Cancela rebase em andamento |
| `git pull --rebase` | Pull com rebase em vez de merge |

**Quando usar:**
- Manter histórico linear e limpo
- Antes de criar Pull Request
- Atualizar feature branch com main

**CUIDADO:** Não faça rebase de commits já enviados ao remoto!

**Exemplo:**
```bash
git checkout feature/login
git rebase main

# Limpar histórico antes de PR
git rebase -i HEAD~5
# No editor: squash, reword, drop
```

---

### 3.2 Cherry-pick (Commits Seletivos)

| Comando | Descrição |
|---|---|
| `git cherry-pick <hash>` | Aplica commit específico na branch atual |
| `git cherry-pick <hash1> <hash2>` | Aplica múltiplos commits |
| `git cherry-pick --continue` | Continua após resolver conflitos |
| `git cherry-pick --abort` | Cancela cherry-pick |

**Exemplo:**
```bash
# Levar bugfix de uma branch para outra
git checkout main
git cherry-pick a1b2c3d
```

---

### 3.3 Reflog (Recuperar Commits Perdidos)

| Comando | Descrição |
|---|---|
| `git reflog` | Mostra histórico de movimentos do HEAD |
| `git reflog show <branch>` | Reflog de branch específica |
| `git reset --hard <hash>` | Volta para commit específico do reflog |

**Exemplo:**
```bash
# "Perdi" commits após reset
git reflog
# HEAD@{2}: commit: Implementa feature X
git reset --hard HEAD@{2}  # Recupera!
```

---

### 3.4 Bisect (Encontrar Bugs)

| Comando | Descrição |
|---|---|
| `git bisect start` | Inicia busca binária por bug |
| `git bisect bad` | Marca commit atual como ruim |
| `git bisect good <hash>` | Marca commit como bom |
| `git bisect reset` | Finaliza bisect |

**Exemplo:**
```bash
git bisect start
git bisect bad                  # Commit atual tem bug
git bisect good v1.0.0          # v1.0.0 funcionava
# Git vai testando commits no meio
# Para cada um você testa e marca: git bisect good/bad
```

---

### 3.5 Blame (Quem Mudou?)

| Comando | Descrição |
|---|---|
| `git blame <arquivo>` | Mostra quem modificou cada linha |
| `git blame -L 10,20 <arquivo>` | Blame de linhas específicas |
| `git blame -C <arquivo>` | Detecta linhas copiadas |

**Exemplo:**
```bash
git blame src/main.py -L 50,60
```

---

### 3.6 Submodules (Submódulos)

| Comando | Descrição |
|---|---|
| `git submodule add <url> <path>` | Adiciona repositório como submódulo |
| `git submodule init` | Inicializa submódulos |
| `git submodule update` | Atualiza submódulos |
| `git clone --recursive <url>` | Clone com submódulos |

---

### 3.7 Worktree (Múltiplos Diretórios)

| Comando | Descrição |
|---|---|
| `git worktree add <path> <branch>` | Cria diretório para branch |
| `git worktree list` | Lista worktrees |
| `git worktree remove <path>` | Remove worktree |

**Exemplo:**
```bash
# Trabalhar em 2 branches simultaneamente
git worktree add ../projeto-feature feature/nova
cd ../projeto-feature
# Agora você tem 2 diretórios independentes!
```

---

### 3.8 Hooks (Automação)

**Arquivos em `.git/hooks/`:**
- `pre-commit`: Executa antes de commit
- `pre-push`: Executa antes de push
- `post-merge`: Executa após merge

**Exemplo:**
```bash
# .git/hooks/pre-commit
#!/bin/bash
npm test  # Roda testes antes de permitir commit
```

---

## Parte 3: Prática

---

## Ferramentas Interativas

Este curso inclui ferramentas CLI interativas para facilitar o aprendizado e uso do Git.

---

### 1. Tutorial Interativo

**[git-learn.sh](scripts/git-learn.sh)** - Aprenda Git do zero

```bash
./scripts/git-learn.sh
```

**Conteúdo:**
- 12 lições progressivas (básico ao intermediário)
- Explicações em português e inglês
- Exercício prático guiado ao final
- Cria repositório de teste real

**Para quem:**
- Iniciantes totais em Git
- Quem quer entender os conceitos
- Estudantes aprendendo programação

---

### 2. CLI Interativo

**[git-cli.sh](scripts/git-cli.sh)** - Execute comandos Git via menu

```bash
./scripts/git-cli.sh
```

**Funcionalidades:**
- 13 operações Git mais comuns
- Interface com menu numerado
- Confirmação para ações perigosas
- Detecta repositório automaticamente
- Mostra branch atual

**Para quem:**
- Quem quer agilizar tarefas comuns
- Iniciantes que ainda não decoraram comandos
- Uso rápido no dia a dia

---

### 3. Simulador Git

**[git-simulator.sh](scripts/git-simulator.sh)** - Simule operações Git sem risco

```bash
./scripts/git-simulator.sh
```

**Funcionalidades:**
- Cria ambiente de teste temporário
- Simula workflow completo de Git
- Visualiza estado do repositório
- Pratica sem medo de errar
- Ambiente é destruído ao sair

**Para quem:**
- Quem quer praticar sem risco
- Aulas e workshops de Git
- Testar comandos antes de usar em projetos reais

---

### 4. Lista de Comandos

**[list-of-comds-how2git.sh](scripts/list-of-comds-how2git.sh)** - Comandos organizados e comentados

```bash
cat scripts/list-of-comds-how2git.sh
# ou
vim scripts/list-of-comds-how2git.sh
```

**Para quem:**
- Referência rápida
- Copiar e colar comandos
- Estudar sintaxe

---

## Casos de Uso Reais

### Caso 1: Primeiro dia no projeto

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

### Caso 2: Feature completa

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

### Caso 3: Bug urgente em produção

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

### Caso 4: Desfazer desastre

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

### Caso 5: Limpar histórico antes de PR

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

### Caso 6: Resolver conflito de merge

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

## Exemplos Práticos

Exemplos detalhados de cenários reais:

- **[Resolver Conflitos](examples/01-resolver-conflitos.md)** - Passo a passo completo
- **[Criar Pull Request](examples/02-criar-pull-request.md)** - Workflow completo
- **[Desfazer Commits](examples/03-desfazer-commits.md)** - Todas as técnicas

---

## Workflows Populares

### GitHub Flow (Simples)

```
main (sempre deployável)
  ├─ feature/login
  ├─ feature/pagamento
  └─ hotfix/bug-critico
```

**Regras:**
1. `main` sempre funcionando
2. Branch por feature
3. Pull Request para revisar
4. Merge e deploy

---

### Gitflow (Completo)

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

### Trunk-Based (Rápido)

```
main (trunk)
  ├─ feature-flags
  └─ commits diretos
```

**Características:**
- Commits diretos em main
- Branches de vida curta (<1 dia)
- Feature flags para funcionalidades incompletas
- CI/CD robusto

---

## Melhores Práticas

### Mensagens de Commit

**Conventional Commits:**
```
tipo(escopo): descrição curta

Descrição detalhada (opcional)

BREAKING CHANGE: descrição (opcional)
```

**Tipos:**
- `feat`: nova funcionalidade
- `fix`: correção de bug
- `docs`: documentação
- `style`: formatação
- `refactor`: refatoração
- `test`: testes
- `chore`: manutenção

**Exemplo:**
```bash
git commit -m "feat(auth): adiciona autenticação JWT

Implementa login com tokens JWT
Adiciona middleware de autenticação
Expira tokens após 24h"
```

---

### O que NÃO commitar

**Nunca commite:**
- Senhas, API keys, tokens
- Arquivos de ambiente (`.env`)
- Dependências (`node_modules/`, `venv/`)
- Arquivos de build (`dist/`, `build/`)
- Arquivos do IDE (`.idea/`, `.vscode/`)
- Logs e temporários

**Use `.gitignore`:**
```bash
# .gitignore
.env
node_modules/
*.log
.DS_Store
```

---

### Quando fazer commit

**Faça commit quando:**
- Funcionalidade completa e testada
- Bug corrigido e verificado
- Refatoração que não quebra nada
- Documentação atualizada

**Tamanho ideal:**
- Nem muito grande (dificulta revisão)
- Nem muito pequeno (polui histórico)
- Uma mudança lógica completa

---

## Cheatsheet Visual

Para referência rápida visual, veja:

**[docs/cheatsheet.md](docs/cheatsheet.md)** - Diagramas e comandos organizados

---

## Recursos Externos

### Documentação Oficial
- [Git Documentation](https://git-scm.com/doc) - Documentação completa
- [Pro Git Book](https://git-scm.com/book/en/v2) - Livro gratuito

### Tutoriais Interativos
- [Learn Git Branching](https://learngitbranching.js.org/) - Visual e interativo
- [Git Visualizer](https://git-school.github.io/visualizing-git/) - Visualize comandos

### Guias
- [GitHub Guides](https://guides.github.com/)
- [Atlassian Git Tutorials](https://www.atlassian.com/git/tutorials)
- [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)

### Ferramentas Visuais
- [GitKraken](https://www.gitkraken.com/) - Cliente Git visual
- [SourceTree](https://www.sourcetreeapp.com/) - Cliente gratuito
- [Git Extensions](https://gitextensions.github.io/) - Para Windows

---

## Solução de Problemas

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

## Próximos Passos

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

## Contribuindo

Este é um projeto de aprendizado aberto. Contribuições são bem-vindas!

Veja [CONTRIBUTING.md](CONTRIBUTING.md) para detalhes.

---

## Encontrou um Erro? Reporte!

Como Git é infinito e muita coisa é parecida uma com a outra, definitivamente não sei tudo, logo, se alguém encontrar algum erro ou tiver sugestões, pode abrir uma issue que corrijo prontamente. Prometo até pagar um chocolate como recompensa pela contribuição.

### Como Abrir uma Issue

1. **Vá até o repositório no GitHub**
   - Navegue até: https://github.com/madsondeluna/howtogit-1

2. **Clique na aba "Issues"**
   - Localizada no topo da página do repositório

3. **Clique no botão verde "New issue"**

4. **Preencha os detalhes da issue:**
   - **Título:** Escreva um título claro e conciso descrevendo o problema ou sugestão
   - **Descrição:** Forneça detalhes sobre:
     - O que está errado ou o que pode ser melhorado
     - Onde você encontrou o erro (qual arquivo, seção ou comando)
     - Screenshots se aplicável
     - Suas sugestões de melhoria

5. **Enviar:** Clique em "Submit new issue"

**Exemplos de títulos de issue:**
- "Erro no exemplo do comando git rebase"
- "Sugestão: Adicionar seção sobre git worktree"
- "Erro de digitação na versão em português - Módulo 2"

---

## Licença

MIT License - veja [LICENSE](LICENSE) para detalhes.

---

## Autor

**Madson Aragão**

Criado para ajudar desenvolvedores a dominar Git de forma prática e acessível.

---

**Última atualização:** 2025-11-05

**Versão do curso:** 2.0
