#!/bin/bash

# GUIA COMPLETO DE AUTOMACAO GIT
# Script de referencia com comandos Git organizados e comentados
# Autor: Madson Aragao
# Repositorio: https://github.com/madsondeluna/howtogit
# Data: Outubro 2025

# CONFIGURACAO INICIAL DE UM NOVO PROJETO

# Inicializa um novo repositorio Git no diretorio atual
git init

# Conecta o repositorio local com um servidor remoto
git remote add origin https://github.com/usuario/repositorio.git

# Adiciona todos os arquivos ao staging area
git add .

# Prepara e faz commit de todos os arquivos rastreados com uma mensagem
git commit -am "Primeiro commit - Adiciona arquivos iniciais"

# Envia a branch principal para o remoto e configura o rastreamento upstream
git push -u origin main

# TRABALHANDO COM BRANCHES

# Lista todas as branches, incluindo as remotas
git branch -a

# Cria e muda para uma nova branch para sua feature
git checkout -b feature/nova-feature

# Envia a nova branch para o remoto e configura rastreamento
git push -u origin feature/nova-feature

# Deleta uma branch local apos a fusao
git branch -d feature/velha-feature

# LIDANDO COM MUDANCAS

# Adiciona mudancas interativamente, parte por parte
git add -p

# Modifica o ultimo commit (mensagem ou conteudo)
git commit --amend

# Alternativa para modificar apenas a mensagem
# git commit --amend -m "Corrige mensagem"

# Desfaz os dois ultimos commits localmente
git reset --hard HEAD~2

# Salva mudancas atuais temporariamente com uma descricao
git stash push -m "Trabalho em progresso"

# Lista todos os stashes salvos
# git stash list

# Recupera o ultimo stash
# git stash pop

# COLABORACAO

# Busca mudancas do remoto sem mesclar
git fetch origin

# Mescla mudancas da branch principal remota
git merge origin/main

# Reorganiza ultimos tres commits para manter historico limpo
git rebase -i HEAD~3

# Aplica commit especifico de outra branch
git cherry-pick a1b2c3d

# HISTORICO E RASTREAMENTO

# Mostra historico de commits com grafico
git log --oneline --graph --decorate --all

# Mostra diferencas entre ultimo e penultimo commit
git diff HEAD^ HEAD

# Mostra autores das linhas 10 a 20 do arquivo
git blame arquivo.py -L 10,20

# GERENCIANDO TAGS

# Cria tag anotada com mensagem
git tag -a v1.0 -m "Versao 1.0 liberada"

# Envia tag para o repositorio remoto
git push origin v1.0

# Envia todas as tags
# git push origin --tags

# LIDANDO COM REMOTOS

# Lista repositorios remotos configurados
git remote -v

# Busca mudancas e remove branches remotos obsoletos
git fetch --all --prune

# DESFAZENDO MUDANCAS

# Desfaz ultimo commit mas mantem alteracoes
git reset --soft HEAD~1

# Descarta mudancas locais em um arquivo
git checkout -- arquivo.py

# Alternativa moderna (Git 2.23+)
# git restore arquivo.py

# CONFIGURACOES GLOBAIS

# Configura nome de usuario
git config --global user.name "Madson Aragao"

# Configura email
git config --global user.email "seu-email@example.com"

# Configura editor padrao
git config --global core.editor "vim"

# Habilita cores no output
git config --global color.ui auto

# WORKFLOW PARA PROJETOS PYTHON

# 1. Criar branch de feature
git checkout -b feature/nova-funcionalidade

# 2. Fazer mudancas e commits
git add .
git commit -m "Implementa nova funcionalidade"

# 3. Manter atualizado com main
git fetch origin
git rebase origin/main

# 4. Enviar para revisao
git push -u origin feature/nova-funcionalidade

# 5. Apos aprovacao, mesclar na main
git checkout main
git merge feature/nova-funcionalidade
git push origin main

# 6. Limpar branch antiga
git branch -d feature/nova-funcionalidade
git push origin --delete feature/nova-funcionalidade

# FIM DO SCRIPT
