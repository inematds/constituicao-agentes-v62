# Leitor simulado — Constituição dos Agentes v6.2

Personas: **Tatiane**, 34, coordenadora de atendimento de clínica odontológica · **Valdir**, 58, dono de escritório de contabilidade. Celular 390px, 15 min por aula, capturas de `capturar-aulas.cjs`.

## Rodada 1 (12/10/2026)
Notas: A1 7–7,5 · A2 8 · A3 7 · A4 7–7,5 · A5 6–6,5.
Principais travas: prioridade 1 com 4 nomes; limite "nunca" × nível "propõe" (taxa, desconto, imposto); escala listada 3→0; legendas pulando números; caso do médico só contado (A4); A5 sem mensagens de teste prontas e diagrama do ciclo ilegível (~7px); "kit" sem explicação; passo da Anthropic parecendo desvio.
Correções: `correcoes-leitor-1.md` (decisões globais + por aula).

## Rodada 2
Notas: A1 7–8 · A2 7,5–8 · A3 7–8 · A4 7–7,5 · A5 6,5–7. Itens da rodada 1 resolvidos.
Restavam: prazo do Edson (limite × nível 2), "0 · não toca" confuso, prompt da A3 sem os limites, exemplo do Edson com `< >` (A4), A5 sem o passo de gerar as mensagens na prática, tempo apertado no celular, ponte para o agente real.
Correções aplicadas: limite "nunca prometer prazo por conta própria" + "mudar data" no nível 1; "0 · não toca: passa para uma pessoa" (inclusive no glossário); limites colados no prompt da A3 e lista em vez de tabela; exemplo do Edson completo; A5 com "hoje: 5 críticos / amanhã: os outros 3", uma conversa por caso (exceto o 8), regra de ouro = caso que falhou + 5 críticos, ponte para as instruções do agente; tempos honestos no `.pgoal`.

## Pendente
- Notas depois dos ajustes da rodada 3 não foram remedidas.
- Teste humano com 2–3 iniciantes 30+ (TESTE-HUMANO §2) quando houver pessoas.

## Rodada 3
Notas: Tatiane 8 · 9 · 7 · 8 · 7 — Valdir 7 · 8 · 8 · 8 · 7. Sem contradição de nomes, prioridades ou numeração.
Ajustes aplicados depois: LGPD explicada (A2); regra prática 0 × 1 (A3); responder os colchetes na mesma conversa e pedir os casos prontos (A4); A5 com os 5 críticos numa conversa só, caso 8 explicado (como reclamar e quando passa), "na data de revisão, rode os 8", exemplo do caso 8 coerente com a regra da A3.
Mantido por decisão: o step "duas culturas" da A1 (é o tema que originou o curso), com o relatório no "Quer saber mais?".
