# Currículo — Constituição dos Agentes v6.2

Base: kit `inematds/constituicao-agentes` (docs/LOGICA.md, modelo/, exemplos/clinica-atendimento.md).
Não repetir o `empresas-2027-v62` (Lívia, Wagner; aula 5 "A constituição do seu agente"): aqui cada peça
da constituição vira uma aula e o aluno sai com o documento inteiro, testado.

## Aluno
Dono, gestor ou líder de equipe de empresa pequena/média, 30+. Já usa ChatGPT ou Claude no navegador e
WhatsApp. Pensa em pôr um agente para atender ou operar e tem medo de que ele "faça besteira". Sem terminal.

## Profissões-alvo (data-ex)
- `coordenadora` — **Rosana**, coordenadora de atendimento de uma clínica (agenda, pacientes; nunca diagnóstico).
- `contador` — **Edson**, dono de um escritório de contabilidade (prazos, documentos de clientes; nunca orientação fiscal personalizada).

## Promessa do curso
Sai com a **constituição de 1 a 2 páginas do agente da sua empresa** — missão, prioridades, limites, níveis de
autonomia, quando chamar uma pessoa, 3 casos difíceis com o porquê — testada com 8 casos e com data de revisão.

## Vocabulário fixo (um nome por conceito)
- **constituição do agente** — o documento inteiro.
- **agente** — o assistente de IA que trabalha para a empresa (atende, marca, responde).
- **prioridades** — a ordem do que vale mais quando duas coisas boas brigam (segurança, honestidade, regras da empresa, ser útil).
- **limites** — o que o agente nunca faz.
- **nível de autonomia** — 0 não toca · 1 propõe · 2 faz e avisa · 3 faz sozinho.
- **chamar uma pessoa** — quando o agente para e passa para alguém da equipe.
- **caso difícil** — situação + o que fazer + por quê.
- **casos de teste** — mensagens que você manda ao agente para ver se ele segue a constituição.
- **registro de falhas** — data, o que quebrou, a menor correção, se era texto ou sistema.
- Onde fica o documento: "o documento **Constituição do agente** nas Notas do celular ou num documento do computador" (criado na aula 2). Saída para quem pulou: o modelo pronto da própria aula.

## Aulas
1. **Ordem não basta: o agente precisa de critério** — tipo fundamento, prática `analise`.
   Gancho: o agente que segue a regra ao pé da letra e erra. Conteúdo: duas culturas da Anthropic (pessoas: propósito/autonomia; IA: constituição), o que os números mostram e o que não provam (8×, 11:1, 2 pontos), as 4 prioridades do Claude, treino ≠ instruções (sua constituição entra nas instruções, não muda o modelo).
   Prática: dar ao chat um caso sem regra e comparar a resposta com e sem as 4 prioridades.
2. **Missão, prioridades e limites** — prática `prompt`/`tarefa`. Cria o documento. Missão em 1–2 frases; prioridades na ordem; 3 a 5 limites concretos.
3. **Quanto o agente faz sozinho e quando chama uma pessoa** — níveis 0–3, tabela de ações, regras de chamar uma pessoa (sofrimento/risco, fora da missão ou limite, falta informação e o erro custa caro, errou 2×), quem e em quanto tempo.
4. **Casos difíceis com o porquê** — situação, o que fazer, por quê (apontando a prioridade ou o limite). Mínimo 3. Rascunho com o chat a partir do prompt-rascunho do kit, sem inventar regra.
5. **Testar e revisar em ciclo** — colar a constituição no início de uma conversa nova (ou nas instruções de um Projeto/GPT), mandar os 8 casos de teste, marcar ok/falhou, registro de falhas, regra: mudança só entra se os casos não pioram; data de revisão.

## Tempo
~15 min por aula, 5 aulas, sem módulos. Tema papel. Cenas: pessoas reais, sem robô.
