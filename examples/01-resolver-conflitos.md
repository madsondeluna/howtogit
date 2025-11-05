# Como Resolver Conflitos / How to Resolve Conflicts

## Cenário / Scenario

Você está trabalhando em uma feature branch e precisa mesclar mudanças da branch main, mas existem conflitos.

You're working on a feature branch and need to merge changes from main branch, but there are conflicts.

---

## Passo a Passo / Step by Step

### 1. Atualizar a main local / Update local main

```bash
git checkout main
git pull origin main
```

### 2. Voltar para sua branch / Go back to your branch

```bash
git checkout feature/minha-feature
```

### 3. Tentar mesclar a main / Try to merge main

```bash
git merge main
```

**Saída esperada / Expected output:**
```
Auto-merging arquivo.py
CONFLICT (content): Merge conflict in arquivo.py
Automatic merge failed; fix conflicts and then commit the result.
```

### 4. Ver arquivos com conflitos / See conflicted files

```bash
git status
```

**Saída / Output:**
```
On branch feature/minha-feature
You have unmerged paths.
  (fix conflicts and run "git commit")
  (use "git merge --abort" to abort the merge)

Unmerged paths:
  (use "git add <file>..." to mark resolution)
        both modified:   arquivo.py
```

### 5. Abrir arquivo e resolver conflito / Open file and resolve conflict

O arquivo terá marcadores de conflito:

The file will have conflict markers:

```python
<<<<<<< HEAD
# Seu código / Your code
def minha_funcao():
    return "versão da feature"
=======
# Código da main / Code from main
def minha_funcao():
    return "versão da main"
>>>>>>> main
```

**Escolha uma versão ou combine ambas:**

**Choose one version or combine both:**

```python
def minha_funcao():
    return "versão combinada"
```

### 6. Marcar como resolvido / Mark as resolved

```bash
git add arquivo.py
```

### 7. Finalizar o merge / Complete the merge

```bash
git commit -m "Merge main into feature/minha-feature e resolve conflitos"
```

### 8. Enviar para o remoto / Push to remote

```bash
git push origin feature/minha-feature
```

---

## Alternativa: Abortar o Merge / Alternative: Abort the Merge

Se você quiser cancelar o merge:

If you want to cancel the merge:

```bash
git merge --abort
```

---

## Dicas / Tips

### Usar ferramentas visuais / Use visual tools

```bash
# Configurar ferramenta de merge
git config --global merge.tool vimdiff
# ou / or
git config --global merge.tool meld

# Usar a ferramenta
git mergetool
```

### Ver diferenças / See differences

```bash
# Ver conflitos
git diff

# Ver arquivo antes do conflito
git show :1:arquivo.py

# Ver sua versão
git show :2:arquivo.py

# Ver versão da outra branch
git show :3:arquivo.py
```

### Aceitar uma versão completamente / Accept one version completely

```bash
# Aceitar sua versão
git checkout --ours arquivo.py
git add arquivo.py

# Aceitar versão da main
git checkout --theirs arquivo.py
git add arquivo.py
```

---

## Prevenindo Conflitos / Preventing Conflicts

### Sincronize frequentemente / Sync frequently

```bash
# Diariamente
git fetch origin
git rebase origin/main
```

### Commits pequenos e focados / Small focused commits

- Commit mudanças relacionadas juntas
- Evite commits grandes
- Commit frequently related changes together
- Avoid large commits
