% unit       : celex:32024R1689/oj#art_48
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : d74f625d78c09467c483ee3716bdb74dfb5f9163b82cdac98b10809f845bb15a
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 3f21f690f5e8babd84552ca7bf43afbd3cf8c7bb43ee162464b702c39f1c1214
% cached     : False
% title      : CE marking
:- pred required_general_principles/1, gloss('CE marking shall be subject to the general principles'), source('celex:32024R1689/oj#art_48').
:- pred required_digital_ce_marking/1, gloss('digital CE marking shall be used for digitally provided high‑risk AI systems'), source('celex:32024R1689/oj#art_48').
:- pred required_visible_affixation/1, gloss('CE marking shall be affixed visibly, legibly and indelibly'), source('celex:32024R1689/oj#art_48').
:- pred required_indication_of_other_law/1, gloss('CE marking shall indicate fulfilment of other applicable Union law'), source('celex:32024R1689/oj#art_48').
:- pred must_affix/2, gloss('actor shall affix the identification number of the notified body to the CE marking'), source('celex:32024R1689/oj#art_48').
:- pred must_indicate_in_promotional_material/2, gloss('actor shall indicate the identification number of the notified body in promotional material'), source('celex:32024R1689/oj#art_48').
:- pred provided_digitally/1, gloss('AI system is provided digitally'), source('celex:32024R1689/oj#art_48').
:- pred other_union_law/1, gloss('high‑risk AI system is subject to another Union law providing for CE marking'), source('celex:32024R1689/oj#art_48').

required_general_principles(CE) :-
    ce_marking(CE).

required_digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S).

required_visible_affixation(S) :-
    high_risk_ai_system(S).

required_indication_of_other_law(S) :-
    high_risk_ai_system(S),
    other_union_law(S).

must_affix(Body, identification_number(Body)) :-
    notified_body(Body).

must_affix(Provider, identification_number(Body)) :-
    provider(Provider),
    notified_body(Body).

must_affix(Rep, identification_number(Body)) :-
    authorised_representative(Rep),
    notified_body(Body).

must_indicate_in_promotional_material(Provider, identification_number(Body)) :-
    provider(Provider),
    notified_body(Body).

must_indicate_in_promotional_material(Rep, identification_number(Body)) :-
    authorised_representative(Rep),
    notified_body(Body).

provenance(required_general_principles/1, 'celex:32024R1689/oj#art_48').
provenance(required_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(required_visible_affixation/1, 'celex:32024R1689/oj#art_48').
provenance(required_indication_of_other_law/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix/2, 'celex:32024R1689/oj#art_48').
provenance(must_indicate_in_promotional_material/2, 'celex:32024R1689/oj#art_48').
provenance(provided_digitally/1, 'celex:32024R1689/oj#art_48').
provenance(other_union_law/1, 'celex:32024R1689/oj#art_48').

references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').
