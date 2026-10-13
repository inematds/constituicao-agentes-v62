# Brief para os autores de aula — Constituição dos Agentes v6.2

Curso: `~/projetos/constituicao-agentes-v62` (formato-curso-v6, edição 6.2, `"glossario": true`, sem perfil técnico, sem módulos).

## Leia antes de escrever (nesta ordem)
1. `~/.claude/skills/formato-curso-v6/SKILL.md` e as referências: `references/CONTEUDO-INICIANTE.md`, `references/V6-DESIGN.md`, `references/CHECKLIST-V6.md`, `references/TESTE-HUMANO.md` §1.
2. `context/curriculo.md` — aluno, profissões-alvo, vocabulário fixo e a tabela das 5 aulas.
3. Conteúdo de origem (nenhum fato, número ou regra fora dele e do currículo):
   - `~/projetos/constituicao-agentes/docs/LOGICA.md` (a análise)
   - `~/projetos/constituicao-agentes/modelo/constituicao-modelo.md` (as 9 seções)
   - `~/projetos/constituicao-agentes/modelo/casos-de-teste.md` (os 8 casos)
   - `~/projetos/constituicao-agentes/modelo/prompt-rascunho.md`
   - `~/projetos/constituicao-agentes/exemplos/clinica-atendimento.md` (exemplo da clínica)
4. `aulas/aula-1.html` — **aula-modelo aprovada (10/10)**: copie estrutura, tom, tamanho e padrão de visuais.

## Regras deste curso
- `<section class="view" id="v-aula-N" data-aula="N" data-tempo="NNmin">`; kicker "Aula N de 5"; rodapé `<p class="aula-pe">Aula N · Constituição dos Agentes v6.2 · INEMA.CLUB PRO</p>`; nav `← trilha` / `próxima aula →` (#aula-N+1; na aula 5 o próximo é `#trilha` com texto "voltar à trilha →").
- Cena: `<figure class="cena"><img src="assets/img/aula-N.webp" width="1280" height="720" alt="…">` — as imagens já existem/estão sendo geradas com estas situações (alt coerente):
  - aula-2: Edson, dono do escritório de contabilidade, escreve à caneta numa folha dividida em três blocos, café ao lado, estantes de pastas.
  - aula-3: Rosana e uma recepcionista jovem diante de um quadro branco com uma tabela de quatro linhas, apontando para uma linha.
  - aula-4: Edson ao telefone com um cliente, anotando num caderno, mesa com pastas e calculadora.
  - aula-5: Rosana no notebook com uma lista impressa ao lado, marcando itens com caneta verde.
- Exemplos: `p[data-ex="coordenadora"]` (Rosana, coordenadora de atendimento de uma clínica; o agente atende pacientes no WhatsApp: marca, remarca, responde endereço/convênio; nunca diagnóstico) e `p[data-ex="contador"]` (Edson, dono de um escritório de contabilidade; o agente lembra prazos e pede documentos aos clientes no WhatsApp; nunca orientação fiscal personalizada nem valor de imposto). Alterne os dois; situações novas em cada aula. **Não repita as da aula 1**: paciente com dor no peito, cliente que pergunta valor do imposto, multa da Receita pela metade.
- **Onde fica o documento**: a constituição é escrita no documento **Constituição do agente**, nas Notas do celular ou num documento do computador, criado na aula 2. Nas aulas 3–5, diga isso e dê a saída para quem pulou ("Não fez a aula 2? Comece pelo molde abaixo").
- Prática no chat de IA que o aluno já usa. Na aula 5 o chat faz o papel do agente: o aluno cola a constituição no início de uma conversa nova e manda os casos de teste. Nada de instalar, nada de terminal, nada de Python (o verificador do kit fica fora das aulas).
- Telas "boas" simuladas não inventam fato que não esteja no pedido. Nada de emoji, hype ou "!!".
- **Definições (`.gterm`) — use EXATAMENTE este `data-def` na 1ª vez que o termo aparece em cada aula** (o glossário junta as aulas):
  - agente: `um assistente de IA que trabalha para a empresa: responde clientes, marca horários, organiza pedidos. Na clínica, atende pacientes no WhatsApp; no escritório, lembra prazos aos clientes.`
  - constituição: `o documento que diz para que o agente existe, o que vale mais, o que ele nunca faz e quando chama uma pessoa. A Anthropic escreveu uma para o Claude; na clínica e no escritório, ela cabe em uma ou duas páginas.`
  - prioridades: `a ordem do que vale mais quando duas coisas boas brigam: segurança, honestidade, regras da empresa e ser útil. Vale a de cima.`
  - limite: `uma coisa que o agente nunca faz, mesmo que o cliente peça. Na clínica, dar diagnóstico; no escritório, dizer o valor do imposto.`
  - nível de autonomia: `quanto o agente pode fazer sozinho numa ação: 0 não toca, 1 propõe e espera, 2 faz e avisa, 3 faz sozinho.`
  - chamar uma pessoa: `o agente para e passa a conversa para alguém da equipe, com o histórico, em vez de decidir sozinho.`
  - caso difícil: `uma situação que a regra não resolve sozinha, escrita com o que fazer e o porquê. O porquê é o que ensina o agente a julgar.`
  - caso de teste: `uma mensagem que você manda ao agente, com o comportamento certo já escrito, para conferir se ele segue a constituição.`
  - registro de falhas: `uma lista com uma linha por erro do agente: data, o que quebrou, a menor correção e se o problema era o texto ou o sistema.`
- Um nome só por conceito (ver vocabulário do currículo).

## Verificação (numa cópia isolada — nunca monte no repositório real)
```bash
S=$(mktemp -d); cp -r ~/projetos/constituicao-agentes-v62/{aulas,assets,curso.json,landing.html} $S/
# na cópia, apague as aulas que não são suas, exceto a sua (o montador numera pelo que existir)
# se assets/img/aula-N.webp ou trilha.webp ainda não existir na cópia, crie um placeholder 1280x720 (PIL) SÓ na cópia
python3 ~/.claude/skills/formato-curso-v6/scripts/montar-curso.py $S
node ~/.claude/skills/formato-curso-v6/scripts/auditar-curso.cjs $S/curso.html
```
Meta: a aula ≥9/10 (mire 10) e sem falha nos critérios 7, 8 e 10. Faça o leitor simulado (`TESTE-HUMANO.md` §1) e corrija.
Copie de volta para `~/projetos/constituicao-agentes-v62/aulas/` **só** o seu `aula-N.html`. Não toque em `assets/img/`, `curso.json` nem em outras aulas. Não faça commit.

Relate: nota do auditor, o que corrigiu e qualquer dúvida de conteúdo.
