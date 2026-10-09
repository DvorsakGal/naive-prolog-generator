% unit       : celex:32024R1689/oj#art_14
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : b9457cea932d2727fd5d9eeb38ec671c36b06a96579636aed11ab93a38f65871
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 83d4d2948bde2c2f8aa7e7c02ca99e70bbe8c69abed8718f2b1b15dd0fdac76e
% cached     : False
% title      : Human oversight
:- pred required_human_oversight_capability/1, gloss('high‑risk AI system must be designed and developed to allow effective human oversight'), source('celex:32024R1689/oj#art_14').
:- pred objective_prevent_or_minimise_risk/1, gloss('human oversight shall aim to prevent or minimise risks to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_14').
:- pred required_oversight_measure_a/1, gloss('provider must build oversight measures into the system before market placement or putting into service'), source('celex:32024R1689/oj#art_14').
:- pred required_oversight_measure_b/1, gloss('provider must identify oversight measures to be implemented by the deployer before market placement or putting into service'), source('celex:32024R1689/oj#art_14').
:- pred required_understand_capacities/1, gloss('deployer must be enabled to understand capacities and limitations of the system'), source('celex:32024R1689/oj#art_14').
:- pred required_awareness_of_automation_bias/1, gloss('deployer must be aware of the tendency to over‑rely on system output'), source('celex:32024R1689/oj#art_14').
:- pred required_interpret_output/1, gloss('deployer must be able to correctly interpret the system’s output'), source('celex:32024R1689/oj#art_14').
:- pred required_decide_not_use/1, gloss('deployer must be able to decide not to use or to override the system’s output'), source('celex:32024R1689/oj#art_14').
:- pred required_intervene_stop/1, gloss('deployer must be able to intervene or stop the system safely'), source('celex:32024R1689/oj#art_14').
:- pred required_separate_verification/1, gloss('identifications must be verified by at least two competent natural persons unless an exception applies'), source('celex:32024R1689/oj#art_14').
:- pred exception_for_separate_verification/1, gloss('exception where separate verification is not required for law‑enforcement, migration, border‑control or asylum purposes'), source('celex:32024R1689/oj#art_14').
:- pred law_enforcement_use/1, gloss('high‑risk AI system is used for law‑enforcement, migration, border‑control or asylum purposes'), source('celex:32024R1689/oj#art_14').

required_human_oversight_capability(S) :-
    high_risk_ai_system(S).

provenance(required_human_oversight_capability/1, 'celex:32024R1689/oj#art_14').

objective_prevent_or_minimise_risk(S) :-
    high_risk_ai_system(S),
    (intended_purpose(S) ; reasonably_foreseeable_misuse(S)).

provenance(objective_prevent_or_minimise_risk/1, 'celex:32024R1689/oj#art_14').

required_oversight_measure_a(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P).

provenance(required_oversight_measure_a/1, 'celex:32024R1689/oj#art_14').

required_oversight_measure_b(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P),
    deployer(D),
    deployer(D).

provenance(required_oversight_measure_b/1, 'celex:32024R1689/oj#art_14').

required_understand_capacities(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P).

provenance(required_understand_capacities/1, 'celex:32024R1689/oj#art_14').

required_awareness_of_automation_bias(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P).

provenance(required_awareness_of_automation_bias/1, 'celex:32024R1689/oj#art_14').

required_interpret_output(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P).

provenance(required_interpret_output/1, 'celex:32024R1689/oj#art_14').

required_decide_not_use(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P).

provenance(required_decide_not_use/1, 'celex:32024R1689/oj#art_14').

required_intervene_stop(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P).

provenance(required_intervene_stop/1, 'celex:32024R1689/oj#art_14').

required_separate_verification(S) :-
    high_risk_ai_system(S),
    annex_3_pnt_1_a(S),
    \+ exception_for_separate_verification(S).

provenance(required_separate_verification/1, 'celex:32024R1689/oj#art_14').

exception_for_separate_verification(S) :-
    high_risk_ai_system(S),
    law_enforcement_use(S).

provenance(exception_for_separate_verification/1, 'celex:32024R1689/oj#art_14').

law_enforcement_use(S) :-
    high_risk_ai_system(S).

provenance(law_enforcement_use/1, 'celex:32024R1689/oj#art_14').

references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
