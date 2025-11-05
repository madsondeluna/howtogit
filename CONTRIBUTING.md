# Guia de Contribuição / Contributing Guide

## Português

### Como Contribuir

Obrigado por considerar contribuir com o HowToGit! Este projeto visa ajudar desenvolvedores a dominar o Git através de documentação clara e exemplos práticos.

### Formas de Contribuir

1. **Reportar Bugs ou Erros**
   - Use os templates de issue disponíveis
   - Descreva o problema claramente
   - Inclua exemplos quando possível

2. **Sugerir Melhorias**
   - Abra uma issue com sua sugestão
   - Explique o benefício da melhoria
   - Forneça exemplos de uso

3. **Adicionar Documentação**
   - Corrija erros de digitação
   - Melhore explicações existentes
   - Adicione novos comandos ou workflows

4. **Contribuir com Código**
   - Scripts de automação
   - Ferramentas auxiliares
   - Melhorias no CLI

### Processo de Contribuição

1. **Fork o Repositório**
   ```bash
   # Clone seu fork
   git clone https://github.com/seu-usuario/howtogit.git
   cd howtogit
   ```

2. **Crie uma Branch**
   ```bash
   # Use um nome descritivo
   git checkout -b feature/minha-contribuicao
   ```

3. **Faça suas Alterações**
   - Mantenha commits pequenos e focados
   - Use mensagens de commit claras
   - Siga o padrão Conventional Commits:
     - `feat:` para novas funcionalidades
     - `fix:` para correções
     - `docs:` para documentação
     - `style:` para formatação
     - `refactor:` para refatoração
     - `test:` para testes
     - `chore:` para tarefas de manutenção

4. **Teste suas Alterações**
   - Verifique se os scripts funcionam
   - Valide a formatação Markdown
   - Teste em diferentes sistemas operacionais quando possível

5. **Envie um Pull Request**
   ```bash
   git push origin feature/minha-contribuicao
   ```
   - Preencha o template de PR
   - Descreva suas alterações
   - Referencie issues relacionadas

### Padrões de Código

#### Markdown
- Use títulos hierárquicos adequadamente
- Inclua exemplos de código com syntax highlighting
- Mantenha linhas com no máximo 120 caracteres
- Use tabelas para comparações

#### Scripts Bash
- Adicione comentários explicativos
- Use nomes de variáveis descritivos
- Valide entradas do usuário
- Inclua tratamento de erros

#### Estrutura de Arquivos
```
howtogit/
├── docs/              # Documentação detalhada
├── examples/          # Exemplos práticos
├── scripts/           # Scripts de automação
├── config/            # Arquivos de configuração
└── .github/           # Templates e workflows
```

### Estilo de Documentação

- **Bilíngue**: Sempre forneça conteúdo em português e inglês
- **Exemplos Práticos**: Inclua exemplos reais de uso
- **Clareza**: Use linguagem simples e direta
- **Contexto**: Explique o "porquê" além do "como"

### Checklist de PR

Antes de submeter seu PR, verifique:

- [ ] Código/documentação testado
- [ ] Commits seguem padrão Conventional Commits
- [ ] Documentação atualizada (se aplicável)
- [ ] Exemplos incluídos (se aplicável)
- [ ] Conteúdo bilíngue (PT/EN)
- [ ] Sem conflitos com a branch main

### Reportar Problemas

Ao reportar um problema, inclua:

- Descrição clara do problema
- Passos para reproduzir
- Comportamento esperado vs obtido
- Sistema operacional e versão do Git
- Screenshots ou logs (se relevante)

### Comunidade

- Seja respeitoso e construtivo
- Ajude outros contribuidores
- Compartilhe conhecimento
- Celebre contribuições de todos os tamanhos

---

## English

### How to Contribute

Thank you for considering contributing to HowToGit! This project aims to help developers master Git through clear documentation and practical examples.

### Ways to Contribute

1. **Report Bugs or Errors**
   - Use available issue templates
   - Describe the problem clearly
   - Include examples when possible

2. **Suggest Improvements**
   - Open an issue with your suggestion
   - Explain the benefit of the improvement
   - Provide usage examples

3. **Add Documentation**
   - Fix typos
   - Improve existing explanations
   - Add new commands or workflows

4. **Contribute Code**
   - Automation scripts
   - Helper tools
   - CLI improvements

### Contribution Process

1. **Fork the Repository**
   ```bash
   # Clone your fork
   git clone https://github.com/your-username/howtogit.git
   cd howtogit
   ```

2. **Create a Branch**
   ```bash
   # Use a descriptive name
   git checkout -b feature/my-contribution
   ```

3. **Make Your Changes**
   - Keep commits small and focused
   - Use clear commit messages
   - Follow Conventional Commits standard:
     - `feat:` for new features
     - `fix:` for bug fixes
     - `docs:` for documentation
     - `style:` for formatting
     - `refactor:` for refactoring
     - `test:` for tests
     - `chore:` for maintenance tasks

4. **Test Your Changes**
   - Verify scripts work
   - Validate Markdown formatting
   - Test on different operating systems when possible

5. **Submit a Pull Request**
   ```bash
   git push origin feature/my-contribution
   ```
   - Fill out the PR template
   - Describe your changes
   - Reference related issues

### Code Standards

#### Markdown
- Use proper heading hierarchy
- Include code examples with syntax highlighting
- Keep lines under 120 characters
- Use tables for comparisons

#### Bash Scripts
- Add explanatory comments
- Use descriptive variable names
- Validate user inputs
- Include error handling

#### File Structure
```
howtogit/
├── docs/              # Detailed documentation
├── examples/          # Practical examples
├── scripts/           # Automation scripts
├── config/            # Configuration files
└── .github/           # Templates and workflows
```

### Documentation Style

- **Bilingual**: Always provide content in Portuguese and English
- **Practical Examples**: Include real-world usage examples
- **Clarity**: Use simple and direct language
- **Context**: Explain the "why" beyond the "how"

### PR Checklist

Before submitting your PR, verify:

- [ ] Code/documentation tested
- [ ] Commits follow Conventional Commits standard
- [ ] Documentation updated (if applicable)
- [ ] Examples included (if applicable)
- [ ] Bilingual content (PT/EN)
- [ ] No conflicts with main branch

### Reporting Issues

When reporting an issue, include:

- Clear problem description
- Steps to reproduce
- Expected vs actual behavior
- Operating system and Git version
- Screenshots or logs (if relevant)

### Community

- Be respectful and constructive
- Help other contributors
- Share knowledge
- Celebrate contributions of all sizes

---

## Dúvidas? / Questions?

Abra uma issue ou entre em contato!
Open an issue or get in touch!
