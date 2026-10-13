# Correções da 1ª rodada do leitor simulado (Tatiane 34, Valdir 58)

Notas: A1 7–7,5 · A2 8 · A3 7 · A4 7–7,5 · A5 6–6,5. Meta: ≥9.

## Decisões que valem para o curso inteiro (aplicar em todas as aulas)
1. **Prioridade 1 — um nome e um sentido só.** Nome curto em pedidos/prompts: `segurança e supervisão humana`.
   Sentido (sempre que explicar): "se houver risco, o agente para e chama uma pessoa; e uma pessoa pode corrigir ou parar o agente a qualquer momento".
   As 4, nos prompts, sempre assim: `1. segurança e supervisão humana; 2. honestidade, sem inventar; 3. regras da empresa e a lei; 4. ser útil.`
2. **Prioridade 3 = "regras da empresa e a lei"** (LGPD entra aqui como lei; nunca "a lei é regra da empresa").
3. **Limite × nível de autonomia não podem se contradizer.** Limite = o que o agente nunca faz **por conta própria**.
   - Clínica: "Nunca dar desconto por conta própria." · "Nunca isentar taxa de cancelamento por conta própria." · "Nunca dar diagnóstico." · "Nunca passar dado de um paciente a outra pessoa."
   - Escritório: "Nunca dizer o valor do imposto." · "Nunca dar orientação fiscal personalizada." · "Nunca prometer prazo que o Edson não confirmou."
   - Na tabela de autonomia: isentar taxa e dar desconto = nível 1 (propõe e espera a pessoa decidir); valor do imposto e pergunta clínica = nível 0 (não toca, passa para uma pessoa). Nada de "nível 1 ou 0".
   - Caso de teste 1 (desconto) = "não dá o desconto por conta própria e chama uma pessoa".
4. **Escala de autonomia sempre de 0 para 3, com as palavras junto do número**: 0 · não toca · 1 · propõe e espera · 2 · faz e avisa · 3 · faz sozinho. Nunca listar 3→0. Explicar "propõe e espera" no WhatsApp: o agente responde ao cliente que vai confirmar e manda o pedido para a pessoa.
5. **Legendas `.passos` não pulam números**: se a janela tem 4 itens numerados, a lista explica os 4 (ou a janela só numera o que a lista explica).
6. **Não dizer "o kit"** dentro das aulas (o aluno não conhece). Diga "a lista abaixo".
7. **Menos repetição de imposto/taxa.** Varie as situações; não use "valor do imposto" de novo fora da aula 1 (exceto citar o limite).

## Por aula
- **A2:** legendas das 4 prioridades do Edson (hoje só 1 e 3); prioridade 1 com o sentido único; limites com "por conta própria"; o pedido preenchido da Rosana com quebras de linha (white-space já é pre-line? senão `<br>`); a dica "segure o dedo para copiar" antes do exemplo, dentro dos passos; "a folha à caneta" do step 4 → explique (ex.: "o rascunho que ele fez à caneta").
- **A3:** tabela 0→3 com palavras; tabela do Edson completa com nível em cada ação (como texto que cola nas Notas: "Lembrar prazo — 3 · faz sozinho"); teste-se do "cancelar consulta" ambíguo → troque por uma ação cujo nível sai das duas perguntas sem discussão; regra das duas perguntas quando divergem ("vale a resposta mais cuidadosa"); "errou duas vezes" → diga como se percebe (o cliente repete o pedido ou reclama); tirar "chutar é o erro mais comum" (sem fonte); prazo de chamar uma pessoa: "combine com quem vai receber; se não souber, escreva o prazo que você já cumpre hoje no WhatsApp".
- **A4:** passo 1 mostra o caso do médico escrito (Situação/O que fazer/Por quê) antes da tela; o caso da mãe/filha cita "regras da empresa e a lei (prioridade 3)"; prompt com as 4 prioridades no texto padrão; "Se não aponta nada, falta escrever esse limite" → diga o que fazer ("acrescente o limite no documento agora"); "se o tempo for curto, faça um caso hoje" também no `.pgoal`; menos `< >` (junte num campo só "cole aqui as três seções do seu documento").
- **A5 (maior risco):**
  - Os 8 casos viram **mensagens prontas para copiar**: um pedido copiável em que o chat escreve as 8 mensagens de teste do negócio do aluno a partir da lista (e o comportamento certo de cada uma), + a lista pronta do escritório do Edson como exemplo (8 mensagens reais curtas).
  - Diagrama do ciclo ilegível (texto ~7px, zigue-zague) → troque por `.janela` vertical com 4 itens numerados (ou `.lado` em lista), texto ≥14px.
  - Explicar "crítico" em 1 frase (falha ali pode machucar alguém ou a empresa: se falhar, não coloque o agente para atender).
  - "Sistema" com exemplo do dia a dia de quem só usa chat ("o agente não enxerga a agenda; nenhuma frase resolve isso, é preciso ligar a agenda ou deixar essa ação com uma pessoa").
  - "Saldo" → outro rótulo ("Resultado").
  - A frase "a mudança só entra se os casos de teste não pioram" no corpo do step antes do teste-se.
  - Projeto do Claude/GPT: uma frase no corpo ("para pôr o agente para atender de verdade, o mesmo texto vai nas instruções de um Projeto do Claude ou de um GPT"); detalhe no `details.mais`.
  - Prática: tempo honesto (se passar de 12 min, ofereça "rode agora os 5 críticos; os outros 3 amanhã").
