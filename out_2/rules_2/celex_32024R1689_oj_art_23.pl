% unit       : celex:32024R1689/oj#art_23
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : b201972e5b41297b8016735f75a6700057178c54c6ab1587eb933e6223a689fd
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 6c08ef686ac2b0bdae410f2e96c7bef21d811d4e8e1423afbc708fea024bdb35
% cached     : False
% title      : Obligations of importers
:- pred must_ensure/2, gloss('importer must ensure the specified conformity condition for a high‑risk AI system'), source('celex:32024R1689/oj#art_23').
:- pred must_not_place_on_market/2, gloss('importer must not place a non‑conforming high‑risk AI system on the market'), source('celex:32024R1689/oj#art_23').
:- pred must_inform/2, gloss('importer must inform relevant parties about a condition concerning a high‑risk AI system'), source('celex:32024R1689/oj#art_23').
:- pred must_provide/2, gloss('importer must provide specified information or documentation for a high‑risk AI system'), source('celex:32024R1689/oj#art_23').
:- pred must_keep/2, gloss('importer must keep specified documentation for a period'), source('celex:32024R1689/oj#art_23').
:- pred must_cooperate/2, gloss('importer must cooperate with competent authorities regarding a high‑risk AI system'), source('celex:32024R1689/oj#art_23').
:- pred non_conformity/1, gloss('the AI system is not in conformity with the regulation'), source('celex:32024R1689/oj#art_23').

must_ensure(I, conformity_assessment_by_provider(S)) :-
    importer(I),
    high_risk_ai_system(S).

must_ensure(I, technical_documentation_drawn_up_by_provider(S)) :-
    importer(I),
    high_risk_ai_system(S).

must_ensure(I, ce_marking_and_declaration_present(S)) :-
    importer(I),
    high_risk_ai_system(S),
    ce_marking(S),
    instructions_for_use(S).

must_ensure(I, authorised_representative_appointed(S)) :-
    importer(I),
    high_risk_ai_system(S),
    authorised_representative(_R).

must_not_place_on_market(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    non_conformity(S).

must_inform(I, non_conformity(S)) :-
    importer(I),
    high_risk_ai_system(S),
    non_conformity(S).

must_inform(I, risk(S)) :-
    importer(I),
    high_risk_ai_system(S),
    risk(S).

must_provide(I, identification_information(S)) :-
    importer(I),
    high_risk_ai_system(S).

must_ensure(I, storage_transport_not_jeopardise_compliance(S)) :-
    importer(I),
    high_risk_ai_system(S).

must_keep(I, documentation_copy(S, years(10))) :-
    importer(I),
    high_risk_ai_system(S).

must_provide(I, information_to_authorities(S)) :-
    importer(I),
    high_risk_ai_system(S).

must_cooperate(I, competent_authorities(S)) :-
    importer(I),
    high_risk_ai_system(S).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_23').
provenance(must_not_place_on_market/2, 'celex:32024R1689/oj#art_23').
provenance(must_inform/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep/2, 'celex:32024R1689/oj#art_23').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_23').
provenance(non_conformity/1, 'celex:32024R1689/oj#art_23').

references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_22/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_23/par_5').
