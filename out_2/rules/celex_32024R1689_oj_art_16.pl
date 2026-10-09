% unit       : celex:32024R1689/oj#art_16
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ccb6ea32e881fdb457a5e7e7774884fa720b03add1341ce6d731aabbfd8af058
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 06b6bac0b8181ab2ddc5db4494abfd35f7bd0b90e773b9b4534c638bff204abf
% cached     : False
% title      : Obligations of providers of high-risk AI systems
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_16').
high_risk_ai_system(S) :-
    ai_system(S).

must_ensure_compliance(P, compliance(high_risk_ai_system(S), requirements(chp_3_sec_2))) :-
    provider(P),
    high_risk_ai_system(S).

must_indicate_contact_info(P, identification(high_risk_ai_system(S), contact_details(name, trade_name, trade_mark, address))) :-
    provider(P),
    high_risk_ai_system(S).

must_have(P, quality_management_system(complies(art_17))) :-
    provider(P).

must_keep(P, documentation(art_18)) :-
    provider(P).

must_keep(P, logs(high_risk_ai_system(S), art_19)) :-
    provider(P),
    high_risk_ai_system(S).

must_ensure(P, conformity_assessment(high_risk_ai_system(S), art_43, before(placing_on_market(S)))) :-
    provider(P),
    high_risk_ai_system(S).

must_draw_up(P, eu_declaration_of_conformity(art_47)) :-
    provider(P).

must_affix(P, ce_marking(high_risk_ai_system(S), art_48)) :-
    provider(P),
    high_risk_ai_system(S).

must_comply(P, registration_obligations(art_49_par_1)) :-
    provider(P).

must_take_corrective_actions(P, corrective_actions(art_20)) :-
    provider(P).

must_provide_information(P, information(art_20)) :-
    provider(P).

must_demonstrate(P, conformity(high_risk_ai_system(S), requirements(chp_3_sec_2))) :-
    provider(P),
    high_risk_ai_system(S).

must_ensure(P, accessibility_compliance(high_risk_ai_system(S), directives([dir_32016L2102, dir_32019L0882]))) :-
    provider(P),
    high_risk_ai_system(S).

% Provenance
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_contact_info/2, 'celex:32024R1689/oj#art_16').
provenance(must_have/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep/2, 'celex:32024R1689/oj#art_16').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply/2, 'celex:32024R1689/oj#art_16').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_16').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate/2, 'celex:32024R1689/oj#art_16').

% References
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_16', 'celex:32016L2102/oj').
references('celex:32024R1689/oj#art_16', 'celex:32019L0882/oj').
