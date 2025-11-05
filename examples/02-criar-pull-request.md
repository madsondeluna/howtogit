# Como Criar um Pull Request / How to Create a Pull Request

## Passo a Passo / Step by Step

### 1. Criar uma nova branch / Create a new branch

```bash
git checkout main
git pull origin main
git checkout -b feature/nova-funcionalidade
```

### 2. Fazer suas alterações / Make your changes

```bash
# Edite seus arquivos
# Edit your files

# Veja o que mudou
git status
git diff
```

### 3. Commit suas mudanças / Commit your changes

```bash
git add .
git commit -m "feat: adiciona nova funcionalidade X"
```

**Dica: Use mensagens de commit descritivas / Tip: Use descriptive commit messages**

Padrão Conventional Commits:
- `feat:` nova funcionalidade / new feature
- `fix:` correção de bug / bug fix
- `docs:` documentação / documentation
- `style:` formatação / formatting
- `refactor:` refatoração / refactoring
- `test:` testes / tests
- `chore:` tarefas / maintenance

### 4. Atualizar sua branch com main / Update your branch with main

```bash
# Garanta que tem as últimas mudanças
git fetch origin
git rebase origin/main

# Se houver conflitos, resolva-os e continue
# git add <arquivo-resolvido>
# git rebase --continue
```

### 5. Enviar para o remoto / Push to remote

```bash
git push -u origin feature/nova-funcionalidade
```

### 6. Criar o PR no GitHub / Create PR on GitHub

**Via navegador / Via browser:**
1. Vá para o repositório no GitHub
2. Clique em "Compare & pull request"
3. Preencha o título e descrição
4. Clique em "Create pull request"

**Via CLI (gh) / Via CLI (gh):**
```bash
gh pr create --title "Adiciona funcionalidade X" --body "Descrição detalhada"
```

---

## Exemplo de Descrição de PR / PR Description Example

```markdown
## Descrição / Description
Adiciona funcionalidade de autenticação OAuth para Google.

Adds OAuth authentication functionality for Google.

## Mudanças / Changes
- Implementa fluxo OAuth 2.0
- Adiciona botão de login com Google
- Atualiza documentação

- Implements OAuth 2.0 flow
- Adds Google login button
- Updates documentation

## Como testar / How to test
1. Execute `npm install`
2. Configure as variáveis de ambiente
3. Acesse `/login` e clique em "Login com Google"

1. Run `npm install`
2. Configure environment variables
3. Go to `/login` and click "Login with Google"

## Checklist
- [x] Código testado localmente
- [x] Testes passando
- [x] Documentação atualizada
- [ ] Revisão de código solicitada

- [x] Code tested locally
- [x] Tests passing
- [x] Documentation updated
- [ ] Code review requested
```

---

## Depois do PR / After PR

### Fazer alterações solicitadas / Make requested changes

```bash
# Na mesma branch
git checkout feature/nova-funcionalidade

# Faça as alterações
# Make changes

git add .
git commit -m "fix: corrige conforme review"
git push
```

**O PR será atualizado automaticamente!**

**The PR will be updated automatically!**

### Manter PR atualizado / Keep PR updated

```bash
# Se a main foi atualizada
git fetch origin
git rebase origin/main
git push --force-with-lease
```

### Após merge / After merge

```bash
# Voltar para main e atualizar
git checkout main
git pull origin main

# Deletar branch local
git branch -d feature/nova-funcionalidade

# Deletar branch remota
git push origin --delete feature/nova-funcionalidade
```

---

## Dicas / Tips

### PR pequenos / Small PRs
- PRs menores são mais fáceis de revisar
- Uma funcionalidade por PR
- Smaller PRs are easier to review
- One feature per PR

### Commits limpos / Clean commits
```bash
# Limpe commits antes do PR
git rebase -i HEAD~3

# No editor:
# pick = manter commit
# squash = juntar com anterior
# reword = mudar mensagem
# drop = remover commit
```

### Draft PR / Draft PR
```bash
# Criar PR como rascunho
gh pr create --draft --title "WIP: Nova funcionalidade"

# Marcar como pronto
gh pr ready
```

### Solicitar revisão / Request review
```bash
gh pr create --reviewer usuario1,usuario2
```
