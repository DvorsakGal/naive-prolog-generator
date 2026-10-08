% unit       : celex:32024R1689/oj#art_14
% title      : Human oversight
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : b9457cea932d2727fd5d9eeb38ec671c36b06a96579636aed11ab93a38f65871
% model      : gpt-oss:120b-cloud
% prompt sha : 32353869519e5c66d5be24d58a914c8f5a9ead1259f16902236912ccdb83cde4
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred required_human_oversight_capability/1, gloss('high‑risk AI system must be designed to allow effective human oversight'), source('celex:32024R1689/oj#art_14').
:- pred objective_prevent_risk_via_oversight/1, gloss('human oversight shall aim to prevent or minimise risks to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_14').
:- pred required_oversight_measure_built_in/1, gloss('oversight measures built into the high‑risk AI system by the provider before market placement'), source('celex:32024R1689/oj#art_14').
:- pred required_oversight_measure_deployer_implemented/1, gloss('oversight measures identified by the provider and implemented by the deployer'), source('celex:32024R1689/oj#art_14').
:- pred required_oversight_capability_understand/1, gloss('natural persons can properly understand capacities and limitations of the system'), source('celex:32024R1689/oj#art_14').
:- pred required_oversight_capability_avoid_automation_bias/1, gloss('natural persons remain aware of automation bias'), source('celex:32024R1689/oj#art_14').
:- pred required_oversight_capability_interpret_output/1, gloss('natural persons can correctly interpret the system’s output'), source('celex:32024R1689/oj#art_14').
:- pred required_oversight_capability_decide_not_use/1, gloss('natural persons can decide not to use or override the system’s output'), source('celex:32024R1689/oj#art_14').
:- pred required_oversight_capability_intervene/1, gloss('natural persons can intervene or stop the system safely'), source('celex:32024R1689/oj#art_14').
:- pred required_separate_verification/1, gloss('identifications must be verified by at least two competent natural persons'), source('celex:32024R1689/oj#art_14').
:- pred exempt_law_enforcement_context/1, gloss('exemption applies to systems used for law‑enforcement, migration, border control or asylum where disproportionate'), source('celex:32024R1689/oj#art_14').
:- pred annex_3_ai_system/1, gloss('high‑risk AI system referred to in annex III point 1'), source('celex:32024R1689/oj#art_14').
:- pred purpose_law_enforcement/1, gloss('system is used for law‑enforcement, migration, border control or asylum purposes'), source('celex:32024R1689/oj#art_14').

required_human_oversight_capability(S) :-
    high_risk_ai_system(S).

provenance(required_human_oversight_capability/1, 'celex:32024R1689/oj#art_14').

objective_prevent_risk_via_oversight(S) :-
    high_risk_ai_system(S),
    ( intended_purpose(S) ; reasonably_foreseeable_misuse(S) ).

provenance(objective_prevent_risk_via_oversight/1, 'celex:32024R1689/oj#art_14').

required_oversight_measure_built_in(S) :-
    high_risk_ai_system(S).

provenance(required_oversight_measure_built_in/1, 'celex:32024R1689/oj#art_14').

required_oversight_measure_deployer_implemented(S) :-
    high_risk_ai_system(S),
    deployer(_).

provenance(required_oversight_measure_deployer_implemented/1, 'celex:32024R1689/oj#art_14').

required_oversight_capability_understand(S) :-
    high_risk_ai_system(S).

provenance(required_oversight_capability_understand/1, 'celex:32024R1689/oj#art_14').

required_oversight_capability_avoid_automation_bias(S) :-
    high_risk_ai_system(S).

provenance(required_oversight_capability_avoid_automation_bias/1, 'celex:32024R1689/oj#art_14').

required_oversight_capability_interpret_output(S) :-
    high_risk_ai_system(S).

provenance(required_oversight_capability_interpret_output/1, 'celex:32024R1689/oj#art_14').

required_oversight_capability_decide_not_use(S) :-
    high_risk_ai_system(S).

provenance(required_oversight_capability_decide_not_use/1, 'celex:32024R1689/oj#art_14').

required_oversight_capability_intervene(S) :-
    high_risk_ai_system(S).

provenance(required_oversight_capability_intervene/1, 'celex:32024R1689/oj#art_14').

required_separate_verification(S) :-
    high_risk_ai_system(S),
    annex_3_ai_system(S),
    \+ exempt_law_enforcement_context(S).

provenance(required_separate_verification/1, 'celex:32024R1689/oj#art_14').

exempt_law_enforcement_context(S) :-
    purpose_law_enforcement(S).

provenance(exempt_law_enforcement_context/1, 'celex:32024R1689/oj#art_14').

references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
