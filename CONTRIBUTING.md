# Contributing Guide | Guia de Contribuição

---

## Table of Contents | Índice

### English Version
- [How to Contribute](#how-to-contribute-english)
- [Ways to Contribute](#ways-to-contribute-english)
- [Contribution Process](#contribution-process-english)
- [Code Standards](#code-standards-english)
- [PR Checklist](#pr-checklist-english)
- [Reporting Issues](#reporting-issues-english)
- [Community](#community-english)

### Versão em Português
- [Como Contribuir](#como-contribuir-português)
- [Formas de Contribuir](#formas-de-contribuir-português)
- [Processo de Contribuição](#processo-de-contribuição-português)
- [Padrões de Código](#padrões-de-código-português)
- [Checklist de PR](#checklist-de-pr-português)
- [Reportar Problemas](#reportar-problemas-português)
- [Comunidade](#comunidade-português)

---

---

# ENGLISH VERSION

---

## How to Contribute (English)

Thank you for considering contributing to HowToGit! This project aims to help developers master Git through clear documentation and practical examples.

We welcome contributions of all sizes - from fixing typos to adding new features, all contributions are valuable and appreciated.

---

## Ways to Contribute (English)

### 1. Report Bugs or Errors

- Use available issue templates
- Describe the problem clearly and concisely
- Include steps to reproduce the issue
- Provide examples when possible
- Mention your OS and Git version

### 2. Suggest Improvements

- Open an issue with your suggestion
- Explain the benefit of the improvement
- Provide usage examples or mockups
- Discuss the implementation approach

### 3. Add Documentation

- Fix typos and grammatical errors
- Improve existing explanations
- Add new commands or workflows
- Translate content (maintaining bilingual format)
- Create examples for real-world scenarios

### 4. Contribute Code

- Automation scripts
- Helper tools
- CLI improvements
- Bug fixes
- Performance optimizations

---

## Contribution Process (English)

### 1. Fork the Repository

```bash
# Clone your fork
git clone https://github.com/your-username/howtogit.git
cd howtogit
```

### 2. Create a Branch

```bash
# Use a descriptive name
git checkout -b feature/my-contribution
```

**Branch naming conventions:**
- `feature/description` - New features
- `fix/bug-description` - Bug fixes
- `docs/what-changed` - Documentation updates
- `refactor/what-improved` - Code refactoring
- `test/what-tested` - Test additions

### 3. Make Your Changes

**Best practices:**
- Keep commits small and focused
- Use clear, descriptive commit messages
- Follow Conventional Commits standard:
  - `feat:` for new features
  - `fix:` for bug fixes
  - `docs:` for documentation
  - `style:` for formatting
  - `refactor:` for refactoring
  - `test:` for tests
  - `chore:` for maintenance tasks

**Example commit messages:**
```bash
feat(cli): add interactive commit helper
fix(simulator): resolve merge conflict display bug
docs(readme): update installation instructions
```

### 4. Test Your Changes

- Verify scripts work correctly
- Test on multiple operating systems if possible
- Validate Markdown formatting
- Ensure bilingual content is consistent
- Check that all links work

### 5. Submit a Pull Request

```bash
# Push your changes
git push origin feature/my-contribution
```

**In your PR:**
- Fill out the PR template completely
- Describe what changes were made and why
- Reference related issues (e.g., "Closes #123")
- Add screenshots for visual changes
- List any breaking changes

---

## Code Standards (English)

### Markdown

- Use proper heading hierarchy (h1, h2, h3)
- Include code examples with syntax highlighting
- Keep lines under 120 characters when possible
- Use tables for comparisons
- Maintain bilingual format: English first, then Portuguese

**Example:**
```markdown
## Section Title (English) | Título da Seção (Português)

Content in English goes here.

Content in Portuguese goes here.
```

### Bash Scripts

- Add explanatory comments in both languages
- Use descriptive variable names
- Validate user inputs
- Include error handling
- Follow existing code style
- Add bilingual user messages

**Example:**
```bash
# Valida entrada do usuário / Validates user input
if [ -z "$branch_name" ]; then
    echo -e "${RED}Nome não pode ser vazio / Name cannot be empty${NC}"
    return 1
fi
```

### File Structure

```
howtogit/
├── docs/              # Detailed documentation
├── examples/          # Practical examples
├── scripts/           # Automation scripts
│   ├── git-cli.sh
│   ├── git-learn.sh
│   ├── git-simulator.sh
│   └── list-of-comds-how2git.sh
├── config/            # Configuration files
└── .github/           # Templates and workflows
```

---

## Documentation Style (English)

### Bilingual Content

**Always provide content in both languages:**
- English first
- Portuguese second
- Maintain consistent formatting
- Translate examples and code comments

### Practical Examples

- Include real-world usage examples
- Show both the command and expected output
- Explain when and why to use each approach
- Provide context for the examples

### Clarity

- Use simple and direct language
- Avoid jargon when possible
- Explain technical terms when necessary
- Break complex topics into digestible sections

### Context

- Explain the "why" beyond the "how"
- Provide background information
- Link to related topics
- Include troubleshooting tips

---

## PR Checklist (English)

Before submitting your PR, verify:

- [ ] Code/documentation tested thoroughly
- [ ] Commits follow Conventional Commits standard
- [ ] Documentation updated (if applicable)
- [ ] Examples included (if applicable)
- [ ] Bilingual content (PT/EN) provided
- [ ] No conflicts with main branch
- [ ] All scripts are executable (`chmod +x`)
- [ ] No emojis in code or documentation
- [ ] Links work correctly
- [ ] Markdown renders properly

---

## Reporting Issues (English)

When reporting an issue, please include:

### For Bugs

- Clear problem description
- Steps to reproduce
- Expected vs actual behavior
- Operating system and version
- Git version (`git --version`)
- Screenshots or error logs (if relevant)

### For Feature Requests

- Clear description of the feature
- Use case or problem it solves
- Proposed implementation (if you have ideas)
- Examples of similar features elsewhere

### For Documentation Issues

- What is unclear or incorrect
- Suggested improvement
- Which file/section needs updating

---

## Community (English)

### Guidelines

- Be respectful and constructive
- Welcome newcomers warmly
- Help other contributors
- Share knowledge freely
- Celebrate contributions of all sizes
- Follow the Code of Conduct

### Communication

- Use clear, professional language
- Be patient with questions
- Provide helpful feedback
- Thank contributors for their work

### Recognition

We value all contributions! Contributors will be:
- Mentioned in release notes
- Listed in project documentation
- Welcomed into our community

---

## Questions?

If you have questions or need help:
- Open an issue with the "question" label
- Check existing documentation
- Review closed issues for similar questions

---

---

# VERSÃO EM PORTUGUÊS

---

## Como Contribuir (Português)

Obrigado por considerar contribuir com o HowToGit! Este projeto visa ajudar desenvolvedores a dominar o Git através de documentação clara e exemplos práticos.

Aceitamos contribuições de todos os tamanhos - desde correção de erros de digitação até adição de novas funcionalidades, todas as contribuições são valiosas e apreciadas.

---

## Formas de Contribuir (Português)

### 1. Reportar Bugs ou Erros

- Use os templates de issue disponíveis
- Descreva o problema de forma clara e concisa
- Inclua passos para reproduzir o problema
- Forneça exemplos quando possível
- Mencione seu sistema operacional e versão do Git

### 2. Sugerir Melhorias

- Abra uma issue com sua sugestão
- Explique o benefício da melhoria
- Forneça exemplos de uso ou mockups
- Discuta a abordagem de implementação

### 3. Adicionar Documentação

- Corrija erros de digitação e gramaticais
- Melhore explicações existentes
- Adicione novos comandos ou workflows
- Traduza conteúdo (mantendo formato bilíngue)
- Crie exemplos para cenários do mundo real

### 4. Contribuir com Código

- Scripts de automação
- Ferramentas auxiliares
- Melhorias no CLI
- Correções de bugs
- Otimizações de desempenho

---

## Processo de Contribuição (Português)

### 1. Fork o Repositório

```bash
# Clone seu fork
git clone https://github.com/seu-usuario/howtogit.git
cd howtogit
```

### 2. Crie uma Branch

```bash
# Use um nome descritivo
git checkout -b feature/minha-contribuicao
```

**Convenções de nomes de branches:**
- `feature/descricao` - Novas funcionalidades
- `fix/descricao-bug` - Correções de bugs
- `docs/o-que-mudou` - Atualizações de documentação
- `refactor/o-que-melhorou` - Refatoração de código
- `test/o-que-testou` - Adição de testes

### 3. Faça suas Alterações

**Melhores práticas:**
- Mantenha commits pequenos e focados
- Use mensagens de commit claras e descritivas
- Siga o padrão Conventional Commits:
  - `feat:` para novas funcionalidades
  - `fix:` para correções
  - `docs:` para documentação
  - `style:` para formatação
  - `refactor:` para refatoração
  - `test:` para testes
  - `chore:` para tarefas de manutenção

**Exemplos de mensagens de commit:**
```bash
feat(cli): adiciona helper interativo para commits
fix(simulator): resolve bug de exibição de conflitos de merge
docs(readme): atualiza instruções de instalação
```

### 4. Teste suas Alterações

- Verifique se os scripts funcionam corretamente
- Teste em múltiplos sistemas operacionais se possível
- Valide a formatação Markdown
- Garanta que o conteúdo bilíngue está consistente
- Verifique se todos os links funcionam

### 5. Envie um Pull Request

```bash
# Envie suas mudanças
git push origin feature/minha-contribuicao
```

**No seu PR:**
- Preencha o template de PR completamente
- Descreva quais mudanças foram feitas e por quê
- Referencie issues relacionadas (ex: "Closes #123")
- Adicione screenshots para mudanças visuais
- Liste quaisquer breaking changes

---

## Padrões de Código (Português)

### Markdown

- Use hierarquia adequada de títulos (h1, h2, h3)
- Inclua exemplos de código com syntax highlighting
- Mantenha linhas com no máximo 120 caracteres quando possível
- Use tabelas para comparações
- Mantenha formato bilíngue: Inglês primeiro, depois Português

**Exemplo:**
```markdown
## Section Title (English) | Título da Seção (Português)

Conteúdo em inglês vem aqui.

Conteúdo em português vem aqui.
```

### Scripts Bash

- Adicione comentários explicativos em ambos os idiomas
- Use nomes de variáveis descritivos
- Valide entradas do usuário
- Inclua tratamento de erros
- Siga o estilo de código existente
- Adicione mensagens bilíngues para o usuário

**Exemplo:**
```bash
# Valida entrada do usuário / Validates user input
if [ -z "$branch_name" ]; then
    echo -e "${RED}Nome não pode ser vazio / Name cannot be empty${NC}"
    return 1
fi
```

### Estrutura de Arquivos

```
howtogit/
├── docs/              # Documentação detalhada
├── examples/          # Exemplos práticos
├── scripts/           # Scripts de automação
│   ├── git-cli.sh
│   ├── git-learn.sh
│   ├── git-simulator.sh
│   └── list-of-comds-how2git.sh
├── config/            # Arquivos de configuração
└── .github/           # Templates e workflows
```

---

## Estilo de Documentação (Português)

### Conteúdo Bilíngue

**Sempre forneça conteúdo em ambos os idiomas:**
- Inglês primeiro
- Português segundo
- Mantenha formatação consistente
- Traduza exemplos e comentários de código

### Exemplos Práticos

- Inclua exemplos de uso do mundo real
- Mostre tanto o comando quanto a saída esperada
- Explique quando e por que usar cada abordagem
- Forneça contexto para os exemplos

### Clareza

- Use linguagem simples e direta
- Evite jargões quando possível
- Explique termos técnicos quando necessário
- Divida tópicos complexos em seções digestíveis

### Contexto

- Explique o "porquê" além do "como"
- Forneça informações de background
- Crie links para tópicos relacionados
- Inclua dicas de troubleshooting

---

## Checklist de PR (Português)

Antes de submeter seu PR, verifique:

- [ ] Código/documentação testado completamente
- [ ] Commits seguem padrão Conventional Commits
- [ ] Documentação atualizada (se aplicável)
- [ ] Exemplos incluídos (se aplicável)
- [ ] Conteúdo bilíngue (PT/EN) fornecido
- [ ] Sem conflitos com a branch main
- [ ] Todos os scripts são executáveis (`chmod +x`)
- [ ] Sem emojis em código ou documentação
- [ ] Links funcionam corretamente
- [ ] Markdown renderiza adequadamente

---

## Reportar Problemas (Português)

Ao reportar um problema, inclua:

### Para Bugs

- Descrição clara do problema
- Passos para reproduzir
- Comportamento esperado vs comportamento real
- Sistema operacional e versão
- Versão do Git (`git --version`)
- Screenshots ou logs de erro (se relevante)

### Para Pedidos de Funcionalidades

- Descrição clara da funcionalidade
- Caso de uso ou problema que resolve
- Implementação proposta (se tiver ideias)
- Exemplos de funcionalidades similares em outros lugares

### Para Problemas de Documentação

- O que está pouco claro ou incorreto
- Melhoria sugerida
- Qual arquivo/seção precisa de atualização

---

## Comunidade (Português)

### Diretrizes

- Seja respeitoso e construtivo
- Receba novatos de forma calorosa
- Ajude outros contribuidores
- Compartilhe conhecimento livremente
- Celebre contribuições de todos os tamanhos
- Siga o Código de Conduta

### Comunicação

- Use linguagem clara e profissional
- Seja paciente com perguntas
- Forneça feedback útil
- Agradeça contribuidores por seu trabalho

### Reconhecimento

Valorizamos todas as contribuições! Contribuidores serão:
- Mencionados nas notas de release
- Listados na documentação do projeto
- Bem-vindos em nossa comunidade

---

## Dúvidas?

Se você tem dúvidas ou precisa de ajuda:
- Abra uma issue com a label "question"
- Verifique a documentação existente
- Revise issues fechadas para perguntas similares
