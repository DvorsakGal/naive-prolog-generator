% unit       : celex:32024R1689/oj#art_16
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ccb6ea32e881fdb457a5e7e7774884fa720b03add1341ce6d731aabbfd8af058
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : a2fb48345e1599563dc6ca74b0e5816c765210f3d1ede8ec6a87231a933d3cb7
% cached     : False
% title      : Obligations of providers of high-risk AI systems
:- pred provides_high_risk_ai_system/2, gloss('provider provides a high‑risk AI system'), source('celex:32024R1689/oj#art_16').

must_ensure_compliance(Provider, compliance_with(chp_3_sec_2, System)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_indicate(Provider, identification_details(System)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_have(Provider, quality_management_system(complies_with(art_17))) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_keep(Provider, documentation(art_18, System)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_keep(Provider, logs(System, art_19)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_ensure(Provider, conformity_assessment_before_market(System, art_43)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_draw_up(Provider, eu_declaration_of_conformity(art_47, System)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_affix(Provider, ce_marking(System, art_48)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_comply(Provider, registration_obligations(art_49_par_1)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_take(Provider, corrective_actions_and_information(art_20, System)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_demonstrate(Provider, conformity(System, chp_3_sec_2)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System),
    national_competent_authority(_).

must_ensure(Provider, accessibility_compliance(System, [dir_32016L2102, dir_32019L0882])) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate/2, 'celex:32024R1689/oj#art_16').
provenance(must_have/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep/2, 'celex:32024R1689/oj#art_16').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply/2, 'celex:32024R1689/oj#art_16').
provenance(must_take/2, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate/2, 'celex:32024R1689/oj#art_16').

references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_16', 'celex:32016L2102/oj').
references('celex:32024R1689/oj#art_16', 'celex:32019L0882/oj').
