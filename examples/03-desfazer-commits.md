# Como Desfazer Commits / How to Undo Commits

## Cenários Comuns / Common Scenarios

---

## 1. Desfazer último commit mas manter alterações / Undo last commit but keep changes

### Manter no staging / Keep in staging

```bash
git reset --soft HEAD~1
```

**O que acontece / What happens:**
- Commit é removido / Commit is removed
- Alterações ficam no staging / Changes stay in staging
- Pronto para fazer novo commit / Ready to make new commit

**Quando usar / When to use:**
- Você quer refazer o commit com nova mensagem
- Quer adicionar mais arquivos ao commit
- You want to redo commit with new message
- Want to add more files to commit

### Remover do staging / Remove from staging

```bash
git reset HEAD~1
# ou / or
git reset --mixed HEAD~1
```

**O que acontece / What happens:**
- Commit é removido / Commit is removed
- Alterações ficam no working directory / Changes stay in working directory
- Não está no staging / Not in staging

**Quando usar / When to use:**
- Você quer revisar as mudanças novamente
- Quer fazer commits separados
- You want to review changes again
- Want to make separate commits

---

## 2. Desfazer último commit e descartar alterações / Undo last commit and discard changes

```bash
git reset --hard HEAD~1
```

**CUIDADO! Isso remove permanentemente as alterações.**

**WARNING! This permanently removes changes.**

**Quando usar / When to use:**
- Tem certeza que não quer essas mudanças
- O commit foi completamente errado
- You're sure you don't want these changes
- The commit was completely wrong

---

## 3. Desfazer múltiplos commits / Undo multiple commits

```bash
# Desfaz últimos 3 commits
git reset --soft HEAD~3

# Desfaz até commit específico
git reset --soft abc123
```

---

## 4. Reverter commit público / Revert public commit

**Se já fez push, NÃO use reset! Use revert:**

**If you already pushed, DON'T use reset! Use revert:**

```bash
# Cria novo commit que desfaz as mudanças
git revert abc123

# Reverter múltiplos commits
git revert abc123 def456 ghi789

# Reverter range de commits
git revert abc123..def456
```

**Por quê? / Why?**
- Não reescreve histórico / Doesn't rewrite history
- Seguro para branches compartilhadas / Safe for shared branches
- Mantém rastreabilidade / Maintains traceability

---

## 5. Commit na branch errada / Committed to wrong branch

### Cenário: Commit em main ao invés de feature branch

### Scenario: Committed to main instead of feature branch

```bash
# 1. Veja o hash do commit
git log --oneline

# 2. Crie nova branch (ou mude para existente)
git checkout -b feature/correta

# 3. O commit já está aqui! Volte para main
git checkout main

# 4. Remova o commit da main
git reset --hard HEAD~1

# 5. Continue trabalhando na feature branch
git checkout feature/correta
```

### Alternativa com cherry-pick

```bash
# 1. Anote o hash do commit
git log --oneline

# 2. Volte para branch correta
git checkout feature/correta

# 3. Aplique o commit
git cherry-pick abc123

# 4. Volte para main e remova
git checkout main
git reset --hard HEAD~1
```

---

## 6. Alterar mensagem do último commit / Change last commit message

### Commit NÃO foi enviado / Commit NOT pushed

```bash
git commit --amend -m "Nova mensagem"
```

### Commit JÁ foi enviado / Commit ALREADY pushed

```bash
git commit --amend -m "Nova mensagem"
git push --force-with-lease
```

**Use com cuidado em branches compartilhadas!**

**Use carefully on shared branches!**

---

## 7. Adicionar arquivos ao último commit / Add files to last commit

```bash
# Adicione os arquivos esquecidos
git add arquivo-esquecido.py

# Adicione ao último commit
git commit --amend --no-edit

# Se já fez push
git push --force-with-lease
```

---

## 8. Recuperar commit perdido / Recover lost commit

```bash
# 1. Veja histórico de mudanças do HEAD
git reflog

# Saída exemplo:
# abc123 HEAD@{0}: reset: moving to HEAD~1
# def456 HEAD@{1}: commit: mensagem do commit perdido

# 2. Recupere o commit
git checkout def456

# 3. Crie uma branch a partir dele
git checkout -b recuperado
```

---

## 9. Desfazer mudanças em arquivo específico / Undo changes in specific file

### Arquivo não commitado / Uncommitted file

```bash
# Descartar mudanças locais
git checkout -- arquivo.py

# Alternativa moderna
git restore arquivo.py
```

### Arquivo já commitado / Committed file

```bash
# Voltar arquivo para estado de commit específico
git checkout abc123 -- arquivo.py

# Voltar arquivo para estado da main
git checkout main -- arquivo.py
```

---

## Comparação de Reset / Reset Comparison

| Comando | Commit | Staging | Working Dir |
|---------|--------|---------|-------------|
| `--soft` | ❌ Remove | ✅ Mantém | ✅ Mantém |
| `--mixed` | ❌ Remove | ❌ Remove | ✅ Mantém |
| `--hard` | ❌ Remove | ❌ Remove | ❌ Remove |

---

## Dicas de Segurança / Safety Tips

### Antes de fazer reset hard / Before doing reset hard

```bash
# Criar backup em nova branch
git branch backup-antes-reset

# Agora pode fazer reset seguro
git reset --hard HEAD~1

# Se precisar, recupere:
git checkout backup-antes-reset
```

### Verificar o que vai ser perdido / Check what will be lost

```bash
# Ver diferenças antes de reset hard
git diff HEAD~1
```

### Usar stash como backup / Use stash as backup

```bash
# Salve tudo antes de reset
git stash push -m "Backup antes de reset"

# Faça o reset
git reset --hard HEAD~1

# Se precisar, recupere:
git stash pop
```

---

## Regra de Ouro / Golden Rule

**NÃO use `git reset` em commits já enviados para branches compartilhadas!**

**Use `git revert` ao invés.**

**DON'T use `git reset` on commits already pushed to shared branches!**

**Use `git revert` instead.**
