# Git Cheatsheet Visual / Visual Git Cheatsheet

Guia rápido e visual dos comandos Git mais usados.

Quick visual guide of the most used Git commands.

---

## Estados do Git / Git States

```
┌─────────────┐  git add   ┌─────────────┐  git commit  ┌─────────────┐
│  Working    │ ────────>  │   Staging   │ ──────────>  │  Repository │
│  Directory  │            │    Area     │              │   (Local)   │
└─────────────┘            └─────────────┘              └─────────────┘
      ^                           ^                            │
      │                           │                            │
      │      git restore          │     git reset --soft       │
      └───────────────────────────┴────────────────────────────┘
```

---

## Comandos Essenciais / Essential Commands

### Configuração / Setup
```bash
git config --global user.name "Seu Nome"
git config --global user.email "email@exemplo.com"
git init                                    # Iniciar repo
git clone <url>                             # Clonar repo
```

### Básico / Basic
```bash
git status                                  # Ver estado
git add <arquivo>                           # Adicionar arquivo
git add .                                   # Adicionar tudo
git commit -m "mensagem"                    # Fazer commit
git push                                    # Enviar ao remoto
git pull                                    # Buscar do remoto
```

### Branches
```bash
git branch                                  # Listar branches
git branch <nome>                           # Criar branch
git checkout <nome>                         # Mudar branch
git checkout -b <nome>                      # Criar e mudar
git merge <branch>                          # Mesclar branch
git branch -d <nome>                        # Deletar branch
```

### Histórico / History
```bash
git log                                     # Ver histórico
git log --oneline                           # Histórico resumido
git log --graph --all                       # Histórico gráfico
git diff                                    # Ver diferenças
git show <commit>                           # Ver commit
```

### Desfazer / Undo
```bash
git restore <arquivo>                       # Descartar mudanças
git reset --soft HEAD~1                     # Desfaz commit
git reset --hard HEAD~1                     # Desfaz tudo
git revert <commit>                         # Reverte commit
```

---

## Workflow Visual / Visual Workflow

### Workflow Básico / Basic Workflow

```
1. MODIFICAR ARQUIVO                2. ADICIONAR AO STAGING
   arquivo.txt                         git add arquivo.txt

3. FAZER COMMIT                     4. ENVIAR AO REMOTO
   git commit -m "msg"                 git push origin main
```

### Workflow com Branches / Workflow with Branches

```
main    ────●────●────────●───────>
             \          /
feature       ●────●────●

git checkout -b feature     (criar branch)
git add .                   (adicionar mudanças)
git commit -m "feat"        (fazer commit)
git checkout main           (voltar para main)
git merge feature           (mesclar feature)
```

---

## Comandos por Situação / Commands by Situation

### Começar Novo Projeto / Start New Project
```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin <url>
git push -u origin main
```

### Criar Feature / Create Feature
```bash
git checkout -b feature/nova-feature
# ... fazer mudanças
git add .
git commit -m "feat: adiciona nova feature"
git push -u origin feature/nova-feature
```

### Atualizar com Main / Update with Main
```bash
git checkout main
git pull origin main
git checkout feature/minha-feature
git merge main
# ou / or
git rebase main
```

### Corrigir Bug Urgente / Fix Urgent Bug
```bash
git checkout main
git checkout -b hotfix/corrige-bug
# ... corrigir bug
git add .
git commit -m "fix: corrige bug crítico"
git checkout main
git merge hotfix/corrige-bug
git push origin main
```

### Salvar Trabalho Temporário / Save Temporary Work
```bash
git stash                          # Salvar
git stash list                     # Listar
git stash pop                      # Recuperar
```

### Resolver Conflitos / Resolve Conflicts
```bash
git merge main                     # Tenta mesclar
# CONFLICT! Edite os arquivos
git add <arquivo-resolvido>
git commit -m "Resolve conflitos"
```

### Desfazer Último Commit / Undo Last Commit
```bash
git reset --soft HEAD~1            # Mantém mudanças
git reset --mixed HEAD~1           # Remove do staging
git reset --hard HEAD~1            # Remove tudo (CUIDADO!)
```

### Investigar Histórico / Investigate History
```bash
git log --oneline                  # Ver commits
git log --author="Nome"            # Por autor
git log --since="2 weeks ago"      # Por data
git blame <arquivo>                # Ver quem mudou cada linha
```

---

## Atalhos Úteis / Useful Shortcuts

### Aliases Recomendados / Recommended Aliases

Adicione ao `.gitconfig` / Add to `.gitconfig`:

```bash
[alias]
    st = status
    co = checkout
    br = branch
    ci = commit
    unstage = reset HEAD --
    last = log -1 HEAD
    visual = log --oneline --graph --decorate --all
    undo = reset --soft HEAD~1
```

Usar / Use:
```bash
git st                             # git status
git co main                        # git checkout main
git visual                         # git log --oneline --graph --decorate --all
```

---

## Cheat Sheet de Reset / Reset Cheat Sheet

| Comando | Commit | Staging | Working Dir | Use quando / Use when |
|---------|--------|---------|-------------|----------------------|
| `--soft` | Remove | Mantém | Mantém | Quer refazer commit / Want to redo commit |
| `--mixed` | Remove | Remove | Mantém | Quer revisar mudanças / Want to review changes |
| `--hard` | Remove | Remove | Remove | Quer descartar tudo / Want to discard everything |

---

## Comandos Perigosos / Dangerous Commands

**USE COM CUIDADO / USE WITH CAUTION**

```bash
git reset --hard                   # Remove todas as mudanças
git push --force                   # Reescreve histórico remoto
git clean -fd                      # Remove arquivos não rastreados
git branch -D <nome>               # Força deleção de branch
```

**Alternativas Mais Seguras / Safer Alternatives**

```bash
git reset --soft                   # Mantém mudanças
git push --force-with-lease        # Verifica antes de forçar
git clean -n                       # Preview antes de limpar
git branch -d <nome>               # Só deleta se merged
```

---

## Dicas Rápidas / Quick Tips

### Boas Práticas / Best Practices

- Commit frequentemente / Commit often
- Mensagens descritivas / Descriptive messages
- Pull antes de push / Pull before push
- Branch por feature / Branch per feature
- Review antes de commit / Review before commit

### Evite / Avoid

- Commit código quebrado / Broken code
- Commit arquivos grandes / Large files
- Force push em branches compartilhadas / Force push on shared branches
- Commit credenciais / Commit credentials
- Commits gigantes / Giant commits

---

## Recursos / Resources

### Mais Informações / More Information

- [README Principal](../README.md)
- [CLI Interativo](../scripts/git-cli.sh)
- [Exemplos Práticos](../examples/)
- [Lista de Comandos](../scripts/list-of-comds-how2git.sh)

### Links Externos / External Links

- [Git Documentation](https://git-scm.com/doc)
- [GitHub Guides](https://guides.github.com/)
- [Atlassian Git Tutorials](https://www.atlassian.com/git/tutorials)
- [Git Visualizer](https://git-school.github.io/visualizing-git/)

---

## Como Usar Este Cheatsheet / How to Use This Cheatsheet

1. **Marque este arquivo**
   Bookmark this file

2. **Use como referência rápida**
   Use as quick reference

3. **Pratique os comandos**
   Practice the commands

4. **Adicione seus próprios notes**
   Add your own notes

---

**Última atualização / Last updated:** 2025-11-05
**Autor / Author:** Madson Aragão
