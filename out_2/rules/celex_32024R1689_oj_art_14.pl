% unit       : celex:32024R1689/oj#art_14
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : b9457cea932d2727fd5d9eeb38ec671c36b06a96579636aed11ab93a38f65871
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e05893457270a0decf33778ac46990929183cbccc831bc030ebb6a034de684ae
% cached     : False
% title      : Human oversight
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_14').
:- pred must_design_for_human_oversight/2, gloss('provider must design system to allow effective human oversight'), source('celex:32024R1689/oj#art_14').
:- pred objective_prevent_or_minimise_risks/1, gloss('human oversight aims to prevent or minimise risks'), source('celex:32024R1689/oj#art_14').
:- pred must_identify_and_build_measures/2, gloss('provider must identify and build oversight measures into the system'), source('celex:32024R1689/oj#art_14').
:- pred must_identify_measures_for_deployer/2, gloss('provider must identify oversight measures to be implemented by the deployer'), source('celex:32024R1689/oj#art_14').
:- pred must_implement_measures/2, gloss('deployer must implement identified oversight measures'), source('celex:32024R1689/oj#art_14').
:- pred must_provide/2, gloss('provider must provide the system enabling specific oversight capabilities'), source('celex:32024R1689/oj#art_14').
:- pred required_two_person_verification/1, gloss('identification must be verified by at least two competent natural persons'), source('celex:32024R1689/oj#art_14').
:- pred prohibited_deployer_action_without_verification/1, gloss('deployer may not act on identification without the required verification'), source('celex:32024R1689/oj#art_14').
:- pred exempt_law_enforcement_exemption/1, gloss('exemption applies to law‑enforcement, migration, border‑control or asylum uses'), source('celex:32024R1689/oj#art_14').
:- pred annex_3_pnt_1_a/1, gloss('systems referred to in annex 3 point 1 (a)'), source('celex:32024R1689/oj#art_14').
:- pred used_for_law_enforcement/1, gloss('system used for law‑enforcement purposes'), source('celex:32024R1689/oj#art_14').

must_design_for_human_oversight(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

objective_prevent_or_minimise_risks(System) :-
    high_risk_ai_system(System).

must_identify_and_build_measures(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

must_identify_measures_for_deployer(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

must_implement_measures(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

must_provide(Provider, provision(System, enable_understand_capacities)) :-
    provider(Provider),
    high_risk_ai_system(System).

must_provide(Provider, provision(System, enable_automation_bias_awareness)) :-
    provider(Provider),
    high_risk_ai_system(System).

must_provide(Provider, provision(System, enable_interpret_output)) :-
    provider(Provider),
    high_risk_ai_system(System).

must_provide(Provider, provision(System, enable_decision_override)) :-
    provider(Provider),
    high_risk_ai_system(System).

must_provide(Provider, provision(System, enable_intervention_stop)) :-
    provider(Provider),
    high_risk_ai_system(System).

required_two_person_verification(System) :-
    high_risk_ai_system(System),
    annex_3_pnt_1_a(System).

exempt_law_enforcement_exemption(System) :-
    high_risk_ai_system(System),
    used_for_law_enforcement(System).

prohibited_deployer_action_without_verification(System) :-
    high_risk_ai_system(System),
    annex_3_pnt_1_a(System),
    \+ exempt_law_enforcement_exemption(System).

% Provenance
provenance(must_design_for_human_oversight/2, 'celex:32024R1689/oj#art_14').
provenance(objective_prevent_or_minimise_risks/1, 'celex:32024R1689/oj#art_14').
provenance(must_identify_and_build_measures/2, 'celex:32024R1689/oj#art_14').
provenance(must_identify_measures_for_deployer/2, 'celex:32024R1689/oj#art_14').
provenance(must_implement_measures/2, 'celex:32024R1689/oj#art_14').
provenance(must_provide/2, 'celex:32024R1689/oj#art_14').
provenance(required_two_person_verification/1, 'celex:32024R1689/oj#art_14').
provenance(prohibited_deployer_action_without_verification/1, 'celex:32024R1689/oj#art_14').
provenance(exempt_law_enforcement_exemption/1, 'celex:32024R1689/oj#art_14').
provenance(annex_3_pnt_1_a/1, 'celex:32024R1689/oj#art_14').
provenance(used_for_law_enforcement/1, 'celex:32024R1689/oj#art_14').

% References
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
