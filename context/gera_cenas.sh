#!/usr/bin/env bash
# Cenas do curso (Codex image_gen, fallback flux). 3 por vez.
D="$(cd "$(dirname "$0")/.." && pwd)"; G=~/.claude/skills/formato-curso-v6/scripts/gerar-cena.py
cena(){ python3 "$G" "$D/assets/img/$1.webp" "$2" >"$D/context/.cena-$1.log" 2>&1; echo "$1 rc=$?"; }
cena trilha "Uma coordenadora de atendimento de clínica, mulher negra de uns 45 anos, e o dono de um escritório de contabilidade, homem pardo de uns 55 anos, sentados lado a lado numa mesa clara revisando juntos uma folha impressa com anotações à caneta, luz natural de escritório, sem texto legível" &
cena aula-1 "Recepção de uma clínica pequena: a coordenadora de atendimento, mulher negra de uns 45 anos, segura o celular com uma conversa aberta e franze a testa, pensativa; ao fundo um paciente espera sentado; luz da manhã, sem texto legível" &
cena aula-2 "Escritório de contabilidade com estantes de pastas: o dono, homem pardo de uns 55 anos e óculos, escreve à caneta numa folha dividida em três blocos, com uma xícara de café ao lado; sem texto legível" &
wait
cena aula-3 "A coordenadora de atendimento de uma clínica, mulher negra de uns 45 anos, e uma recepcionista jovem diante de um quadro branco com uma tabela de quatro linhas desenhada a caneta, apontando para uma das linhas; sem texto legível" &
cena aula-4 "O dono de um escritório de contabilidade, homem pardo de uns 55 anos, ao telefone com um cliente, anotando num caderno com expressão concentrada; mesa com pastas e calculadora; sem texto legível" &
cena aula-5 "A coordenadora de atendimento de uma clínica, mulher negra de uns 45 anos, no notebook com uma lista impressa ao lado, marcando itens com caneta verde, expressão satisfeita; consultório ao fundo; sem texto legível" &
wait
echo FIM
