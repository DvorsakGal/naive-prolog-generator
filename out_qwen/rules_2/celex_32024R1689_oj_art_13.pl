% unit       : celex:32024R1689/oj#art_13
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1d358e923a8c4bc07de673bd7db72ad561d83589aaee2c0c69f3f267ad3f1010
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : c4cb92c91e44c4c3f40184bd94055a641b375a3d9e39090b8d44c393e0d35713
% cached     : False
% title      : Transparency and provision of information to deployers
:- pred must_ensure_transparency/2, gloss('provider must ensure high-risk AI system operation is sufficiently transparent'), source('celex:32024R1689/oj#art_13').
:- pred must_accompany_with_instructions_for_use/2, gloss('high-risk AI system must be accompanied by instructions for use'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_provider_identity/1, gloss('instructions for use contain identity and contact details of provider'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_characteristics_and_limitations/1, gloss('instructions for use contain characteristics capabilities and limitations of performance'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_predetermined_changes/1, gloss('instructions for use contain changes to system and performance predetermined at initial conformity assessment'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_human_oversight_measures/1, gloss('instructions for use contain human oversight measures and technical measures to facilitate interpretation'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_resource_and_maintenance_info/1, gloss('instructions for use contain computational resources expected lifetime and maintenance measures'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain_log_interpretation_mechanisms/1, gloss('instructions for use contain description of mechanisms to collect store and interpret logs'), source('celex:32024R1689/oj#art_13').

must_ensure_transparency(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    intended_purpose(S).

must_accompany_with_instructions_for_use(_P, S) :-
    high_risk_ai_system(S),
    instructions_for_use(S).

instructions_contain_provider_identity(I) :-
    instructions_for_use(I).

instructions_contain_characteristics_and_limitations(I) :-
    instructions_for_use(I),
    intended_purpose(I).

instructions_contain_predetermined_changes(I) :-
    instructions_for_use(I).

instructions_contain_human_oversight_measures(I) :-
    instructions_for_use(I).

instructions_contain_resource_and_maintenance_info(I) :-
    instructions_for_use(I).

instructions_contain_log_interpretation_mechanisms(I) :-
    instructions_for_use(I).

provenance(must_ensure_transparency/2, 'celex:32024R1689/oj#art_13').
provenance(must_accompany_with_instructions_for_use/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_provider_identity/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_characteristics_and_limitations/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_predetermined_changes/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_human_oversight_measures/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_resource_and_maintenance_info/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_log_interpretation_mechanisms/1, 'celex:32024R1689/oj#art_13').

references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').
