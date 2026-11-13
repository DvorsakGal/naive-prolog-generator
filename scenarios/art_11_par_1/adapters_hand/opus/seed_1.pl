% hand adapter: out_paragraphs/art_11_par_1/opus/seed_1.pl  (Opus 5.5, reasoning minimal)
% Inputs follow art_11_par_1/raw/adhoc/batch3cmp.pl (c1).
high_risk_ai_system(S) :- high_risk_ai_system(S).
technical_documentation_of(D, S) :- technical_documentation(S, D).
provider_of(P, S) :- provider(P, S).
sme(E) :- sme(E).
opts_simplified_provision(P, S) :- opts_for_simplified(P, S).
commission(commission).
notified_body(B) :- notified_body(B).

obligation(P, draw_up(S), before(entry)) :- must_draw_up(P, technical_documentation(S, _)).
obligation(P, keep_up_to_date(S), ongoing) :- must_keep_up_to_date(P, technical_documentation(S)).
% objective_demonstrate_compliance/1 and objective_provide_assessment_information/1 are
% purpose labels, not duties: not mapped (rule 1).
obligation(_P, include_annex_iv(_S), at_minimum) :- must_contain(_D, minimum(elements(annex_iv))).
permission(P, simplify_annex_iv(_S)) :- permitted_simplified_technical_documentation(P).
obligation(commission, establish(F), unconditional) :- must_establish(_C, F).
obligation(P, use_form(S, F), when_opted) :- must_use(P, F), F = simplified_technical_documentation_form(S).
obligation(B, accept(_Doc, F), in_assessment) :- must_accept(B, F).
