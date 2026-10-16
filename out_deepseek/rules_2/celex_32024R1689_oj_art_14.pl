% unit       : celex:32024R1689/oj#art_14
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : b9457cea932d2727fd5d9eeb38ec671c36b06a96579636aed11ab93a38f65871
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : a1990cf6b9c256e03e40ed0edaddeaa476c891f31ebec824898c01fda25bceab
% cached     : False
% title      : Human oversight
:- pred must_be_designed_for_human_oversight/1, gloss('high-risk AI system must be designed and developed to be effectively overseen by natural persons'), source('celex:32024R1689/oj#art_14').
:- pred human_oversight_aims_to_prevent_risks/1, gloss('human oversight aims to prevent or minimise risks to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_14').
:- pred oversight_measures_commensurate/1, gloss('oversight measures are commensurate with risks, autonomy and context of use'), source('celex:32024R1689/oj#art_14').
:- pred provider_built_in_oversight/1, gloss('oversight measures identified and built into the system by the provider'), source('celex:32024R1689/oj#art_14').
:- pred provider_identified_deployer_oversight/1, gloss('oversight measures identified by the provider for implementation by the deployer'), source('celex:32024R1689/oj#art_14').
:- pred must_enable_oversight_capabilities/1, gloss('system must be provided to deployer enabling natural persons to exercise oversight capabilities'), source('celex:32024R1689/oj#art_14').
:- pred must_understand_capacities_and_limitations/1, gloss('oversight person must be able to understand capacities and limitations and monitor operation'), source('celex:32024R1689/oj#art_14').
:- pred must_remain_aware_of_automation_bias/1, gloss('oversight person must remain aware of possible automation bias'), source('celex:32024R1689/oj#art_14').
:- pred must_correctly_interpret_output/1, gloss('oversight person must be able to correctly interpret system output'), source('celex:32024R1689/oj#art_14').
:- pred must_be_able_to_disregard_output/1, gloss('oversight person must be able to decide not to use or to disregard, override or reverse output'), source('celex:32024R1689/oj#art_14').
:- pred must_be_able_to_interrupt_system/1, gloss('oversight person must be able to intervene or interrupt the system via a stop button'), source('celex:32024R1689/oj#art_14').
:- pred annex_3_point_1_a_system/1, gloss('high-risk AI system referred to in Annex III point 1(a)'), source('celex:32024R1689/oj#art_14').
:- pred must_require_separate_verification/1, gloss('system must ensure no action is taken on identification unless verified by at least two natural persons'), source('celex:32024R1689/oj#art_14').
:- pred separate_verification_exception_applies/1, gloss('exception to separate verification requirement for law enforcement, migration, border control or asylum'), source('celex:32024R1689/oj#art_14').

% Article 14(1)
must_be_designed_for_human_oversight(S) :-
    high_risk_ai_system(S).

% Article 14(2)
human_oversight_aims_to_prevent_risks(S) :-
    high_risk_ai_system(S).

% Article 14(3)
oversight_measures_commensurate(S) :-
    high_risk_ai_system(S).

provider_built_in_oversight(S) :-
    high_risk_ai_system(S),
    provider(P),
    placing_on_market(S),
    putting_into_service(S).

provider_identified_deployer_oversight(S) :-
    high_risk_ai_system(S),
    provider(P),
    placing_on_market(S),
    putting_into_service(S).

% Article 14(4)
must_enable_oversight_capabilities(S) :-
    high_risk_ai_system(S).

must_understand_capacities_and_limitations(S) :-
    high_risk_ai_system(S).

must_remain_aware_of_automation_bias(S) :-
    high_risk_ai_system(S).

must_correctly_interpret_output(S) :-
    high_risk_ai_system(S).

must_be_able_to_disregard_output(S) :-
    high_risk_ai_system(S).

must_be_able_to_interrupt_system(S) :-
    high_risk_ai_system(S).

% Article 14(5)
must_require_separate_verification(S) :-
    annex_3_point_1_a_system(S),
    \+ separate_verification_exception_applies(S).

separate_verification_exception_applies(S) :-
    annex_3_point_1_a_system(S),
    law_enforcement_migration_asylum_border(S).

% Provenance
provenance(must_be_designed_for_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(human_oversight_aims_to_prevent_risks/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measures_commensurate/1, 'celex:32024R1689/oj#art_14').
provenance(provider_built_in_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(provider_identified_deployer_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(must_enable_oversight_capabilities/1, 'celex:32024R1689/oj#art_14').
provenance(must_understand_capacities_and_limitations/1, 'celex:32024R1689/oj#art_14').
provenance(must_remain_aware_of_automation_bias/1, 'celex:32024R1689/oj#art_14').
provenance(must_correctly_interpret_output/1, 'celex:32024R1689/oj#art_14').
provenance(must_be_able_to_disregard_output/1, 'celex:32024R1689/oj#art_14').
provenance(must_be_able_to_interrupt_system/1, 'celex:32024R1689/oj#art_14').
provenance(must_require_separate_verification/1, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_exception_applies/1, 'celex:32024R1689/oj#art_14').

% References
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
