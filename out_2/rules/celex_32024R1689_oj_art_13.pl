% unit       : celex:32024R1689/oj#art_13
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1d358e923a8c4bc07de673bd7db72ad561d83589aaee2c0c69f3f267ad3f1010
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dc2182821b2fdd8ced48db5c5efb295a8d56deaef6ce7862e3d99da30fc50297
% cached     : False
% title      : Transparency and provision of information to deployers
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_13').
:- pred provides_system/2, gloss('provider provides AI system'), source('celex:32024R1689/oj#art_13').
:- pred must_ensure_transparency/2, gloss('provider must ensure transparency of system'), source('celex:32024R1689/oj#art_13').
:- pred must_provide_instructions/2, gloss('provider must provide instructions for use'), source('celex:32024R1689/oj#art_13').
:- pred must_include_information/2, gloss('provider must include required information in instructions'), source('celex:32024R1689/oj#art_13').
:- pred required_information/1, gloss('information required to be included in instructions'), source('celex:32024R1689/oj#art_13').

high_risk_ai_system(S) :-
    ai_system(S).

provides_system(P, S) :-
    provider(P),
    ai_system(S).

must_ensure_transparency(P, S) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system(S),
    provides_system(P, S).

must_provide_instructions(P, S) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system(S),
    provides_system(P, S).

must_include_information(P, Info) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system(S),
    provides_system(P, S),
    required_information(Info).

required_information(info(identity_and_contact_details)).
required_information(info(characteristics_capabilities_limitations)).
required_information(info(intended_purpose)).
required_information(info(level_of_accuracy)).
required_information(info(known_circumstances_impact_accuracy)).
required_information(info(known_or_foreseeable_circumstance_risk)).
required_information(info(technical_capabilities_explain_output)).
required_information(info(performance_specific_persons_groups)).
required_information(info(specifications_input_data)).
required_information(info(information_to_interpret_output)).
required_information(info(changes_and_performance_pre_determined)).
required_information(info(human_oversight_measures)).
required_information(info(computational_and_hardware_resources)).
required_information(info(log_collection_mechanisms)).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_13').
provenance(provides_system/2, 'celex:32024R1689/oj#art_13').
provenance(must_ensure_transparency/2, 'celex:32024R1689/oj#art_13').
provenance(must_provide_instructions/2, 'celex:32024R1689/oj#art_13').
provenance(must_include_information/2, 'celex:32024R1689/oj#art_13').
provenance(required_information/1, 'celex:32024R1689/oj#art_13').

references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').
