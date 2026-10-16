Given a sentence s and a candidate FOL translation c, we collect peer translations {p1, . . . , pk}
from k independent LLM families.1 Each peer uses the same few-shot prompt but a different base
model (e.g., one from each of Gemini, Claude, GPT, Llama, Qwen, Phi, Mistral). We compute:
$$c\_score\_align(c, s) = 1 - \frac{1}{k} \sum_{i=1}^{k} \mathbb{1}[\text{equiv}(c, p_i)]$$
where equiv(c, pi) checks logical equivalence between c and pi using the Z3 SMT solver [de Moura
and Bjørner, 2008], after aligning predicate names between the two formulas.