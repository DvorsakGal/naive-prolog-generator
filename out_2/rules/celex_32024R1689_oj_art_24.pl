% unit       : celex:32024R1689/oj#art_24
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 86f6a4142313fee528529b0ed884f90cb20a4b5625bb7a122e24a779cab98c12
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : bec506300f8befe75ed492467aaceafb3d3aba46ff45137ff5cc3cede715a376
% cached     : False
% title      : Obligations of distributors
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('24').
:- pred non_conformity/1, gloss('system not in conformity with requirements'), source('24').
:- pred risk_present/1, gloss('risk within the meaning of art 79 par 1'), source('24').
:- pred request_from/2, gloss('relevant competent authority has requested information from distributor'), source('24').

must_verify(D, ce_marking(S)) :-
    distributor(D),
    high_risk_ai_system(S).

must_verify(D, declaration_of_conformity(S)) :-
    distributor(D),
    high_risk_ai_system(S).

must_verify(D, instructions_for_use(S)) :-
    distributor(D),
    high_risk_ai_system(S).

must_verify(D, provider_obligations_met(P, S)) :-
    distributor(D),
    provider(P),
    high_risk_ai_system(S).

must_verify(D, importer_obligations_met(I, S)) :-
    distributor(D),
    importer(I),
    high_risk_ai_system(S).

prohibited_making_on_market(D) :-
    distributor(D),
    high_risk_ai_system(S),
    non_conformity(S).

must_inform(D, inform_provider_or_importer(S)) :-
    distributor(D),
    high_risk_ai_system(S),
    risk_present(S).

must_ensure(D, storage_transport_conditions_not_jeopardising_compliance(S)) :-
    distributor(D),
    high_risk_ai_system(S).

must_take_corrective_actions(D, bring_into_conformity(S)) :-
    distributor(D),
    high_risk_ai_system(S),
    non_conformity(S).

must_take_corrective_actions(D, withdraw_or_recall(S)) :-
    distributor(D),
    high_risk_ai_system(S),
    non_conformity(S).

must_ensure_provider_takes_actions(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    non_conformity(S).

must_inform(D, immediate_risk_notification(S)) :-
    distributor(D),
    high_risk_ai_system(S),
    risk_present(S).

must_provide(D, information_and_documentation(A, S)) :-
    distributor(D),
    high_risk_ai_system(S),
    request_from(A, D).

must_cooperate(D, authority(A)) :-
    distributor(D),
    national_competent_authority(A).

provenance(must_verify/2, 'celex:32024R1689/oj#art_24').
provenance(prohibited_making_on_market/1, 'celex:32024R1689/oj#art_24').
provenance(must_inform/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_provider_takes_actions/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide/2, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_24').

references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_b').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_c').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_23/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_1').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_4').
