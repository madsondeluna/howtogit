# Guia de Comandos Git com Exemplos

## Configurando um Novo Projeto

| Comando                             | Descrição                                                                 | Exemplo                                                          |
|-------------------------------------|---------------------------------------------------------------------------|------------------------------------------------------------------|
| `git init`                          | Inicializa um novo repositório Git no diretório atual                     | `git init`                                                       |
| `git remote add origin <url>`       | Conecta o repositório local com um servidor remoto                        | `git remote add origin https://github.com/usuario/repositorio.git` |
| `git commit -am "Primeiro commit"`  | Prepara e faz commit de todos os arquivos rastreados com uma mensagem     | `git commit -am "Adiciona arquivos iniciais"`                    |
| `git push -u origin main`           | Envia a branch principal para o remoto e configura o rastreamento upstream| `git push -u origin main`                                       |

## Trabalhando com Branches

| Comando                                       | Descrição                                                               | Exemplo                                 |
|-----------------------------------------------|-------------------------------------------------------------------------|-----------------------------------------|
| `git branch -a`                               | Lista todas as branches, incluindo as remotas                          | `git branch -a`                          |
| `git checkout -b feature/nova-feature`        | Cria e muda para uma nova branch para sua feature                      | `git checkout -b feature/login`          |
| `git push -u origin feature/nova-feature`     | Envia a nova branch para o remoto e configura rastreamento             | `git push -u origin feature/login`       |
| `git branch -d feature/velha-feature`         | Deleta uma branch local após a fusão                                   | `git branch -d feature/login-antigo`     |

## Lidando com Mudanças

| Comando                                 | Descrição                                                                 | Exemplo                                      |
|-----------------------------------------|---------------------------------------------------------------------------|----------------------------------------------|
| `git add -p`                            | Adiciona mudanças interativamente, parte por parte                        | `git add -p`                                  |
| `git commit --amend`                    | Modifica o último commit (mensagem ou conteúdo)                           | `git commit --amend -m "Corrige mensagem"`    |
| `git reset --hard HEAD~2`              | Desfaz os dois últimos commits localmente                                 | `git reset --hard HEAD~2`                     |
| `git stash push -m "Trabalho em progresso"` | Salva mudanças atuais temporariamente com uma descrição                 | `git stash push -m "Refatoração do login"`    |

## Colaboração

| Comando                              | Descrição                                                                 | Exemplo                        |
|--------------------------------------|---------------------------------------------------------------------------|--------------------------------|
| `git fetch origin`                   | Busca mudanças do remoto sem mesclar                                      | `git fetch origin`             |
| `git merge origin/main`             | Mescla mudanças da branch principal remota                                | `git merge origin/main`        |
| `git rebase -i HEAD~3`              | Reorganiza últimos três commits para manter histórico limpo               | `git rebase -i HEAD~3`         |
| `git cherry-pick <commit-hash>`     | Aplica commit específico de outra branch                                  | `git cherry-pick a1b2c3d`      |

## Histórico e Rastreamento

| Comando                                              | Descrição                                                       | Exemplo                          |
|------------------------------------------------------|-----------------------------------------------------------------|----------------------------------|
| `git log --oneline --graph --decorate --all`         | Mostra histórico de commits com gráfico                         | `git log --oneline --graph --decorate --all` |
| `git diff HEAD^ HEAD`                                | Mostra diferenças entre último e penúltimo commit               | `git diff HEAD^ HEAD`            |
| `git blame arquivo -L 10,20`                         | Mostra autores das linhas 10 a 20 do arquivo                    | `git blame app.py -L 10,20`      |

## Gerenciando Tags

| Comando                                  | Descrição                                                       | Exemplo                                 |
|------------------------------------------|------------------------------------------------------------------|-----------------------------------------|
| `git tag -a v1.0 -m "Versão 1.0 liberada"` | Cria tag anotada com mensagem                                   | `git tag -a v1.0 -m "Release estável"`   |
| `git push origin v1.0`                    | Envia tag para o repositório remoto                             | `git push origin v1.0`                   |

## Lidando com Remotos

| Comando                     | Descrição                                                       | Exemplo                      |
|-----------------------------|------------------------------------------------------------------|------------------------------|
| `git remote -v`            | Lista repositórios remotos configurados                         | `git remote -v`              |
| `git fetch --all --prune` | Busca mudanças e remove branches remotos obsoletos              | `git fetch --all --prune`    |

## Desfazendo Mudanças

| Comando                            | Descrição                                                       | Exemplo                        |
|------------------------------------|------------------------------------------------------------------|--------------------------------|
| `git reset --soft HEAD~1`          | Desfaz último commit mas mantém alterações                      | `git reset --soft HEAD~1`      |
| `git checkout -- <arquivo>`        | Descarta mudanças locais em um arquivo                          | `git checkout -- main.py`      |

> This is an easter egg! If you found this, congrats! <br>
> Hi, André! Enjoy this new world of Git commands! 
