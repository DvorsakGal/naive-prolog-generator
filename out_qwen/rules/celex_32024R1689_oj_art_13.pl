% unit       : celex:32024R1689/oj#art_13
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1d358e923a8c4bc07de673bd7db72ad561d83589aaee2c0c69f3f267ad3f1010
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6d15c552b160f45aed2c0fb2511251926b2f6f30a0351071dd46e240fd19d402
% cached     : False
% title      : Transparency and provision of information to deployers
:- pred must_ensure_transparency(Provider, System), gloss('provider must design system to be sufficiently transparent for deployers'), source('celex:32024R1689/oj#art_13').
:- pred must_provide_instructions_for_use(Provider, System), gloss('provider must accompany system with instructions for use'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_provider_identity(System), gloss('instructions include provider identity and contact details'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_characteristics_and_limitations(System), gloss('instructions include characteristics, capabilities and performance limitations'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_predetermined_changes(System), gloss('instructions include pre-determined changes from initial conformity assessment'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_human_oversight_measures(System), gloss('instructions include human oversight measures and technical interpretation aids'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_resource_and_maintenance_info(System), gloss('instructions include computational resources, lifetime and maintenance measures'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_log_mechanism_description(System), gloss('instructions include description of log collection and interpretation mechanisms'), source('celex:32024R1689/oj#art_13').

must_ensure_transparency(P, S) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system_applies(S).

must_provide_instructions_for_use(P, S) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system_applies(S).

instructions_contain_provider_identity(S) :-
    ai_system(S),
    high_risk_ai_system_applies(S).

instructions_contain_characteristics_and_limitations(S) :-
    ai_system(S),
    high_risk_ai_system_applies(S).

instructions_contain_predetermined_changes(S) :-
    ai_system(S),
    high_risk_ai_system_applies(S).

instructions_contain_human_oversight_measures(S) :-
    ai_system(S),
    high_risk_ai_system_applies(S).

instructions_contain_resource_and_maintenance_info(S) :-
    ai_system(S),
    high_risk_ai_system_applies(S).

instructions_contain_log_mechanism_description(S) :-
    ai_system(S),
    high_risk_ai_system_applies(S).

provenance(must_ensure_transparency/2, 'celex:32024R1689/oj#art_13').
provenance(must_provide_instructions_for_use/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_provider_identity/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_characteristics_and_limitations/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_predetermined_changes/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_human_oversight_measures/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_resource_and_maintenance_info/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_log_mechanism_description/1, 'celex:32024R1689/oj#art_13').

references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').
