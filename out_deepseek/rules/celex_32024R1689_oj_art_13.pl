% unit       : celex:32024R1689/oj#art_13
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1d358e923a8c4bc07de673bd7db72ad561d83589aaee2c0c69f3f267ad3f1010
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 139736af4f82c620d78ccb7268628f1add6dc8172ac164f177a9de232b9745e1
% cached     : False
% title      : Transparency and provision of information to deployers
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_13').
:- pred sufficiently_transparent/1, gloss('operation is sufficiently transparent'), source('celex:32024R1689/oj#art_13').
:- pred accompanied_by_instructions/2, gloss('system accompanied by instructions for use'), source('celex:32024R1689/oj#art_13').
:- pred instructions_contain/2, gloss('instructions contain specified information'), source('celex:32024R1689/oj#art_13').

% Article 13(1) – Transparency obligation
must_ensure_transparency(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    sufficiently_transparent(S).

sufficiently_transparent(S) :-
    high_risk_ai_system(S),
    enables_interpretation_of_output(S),
    enables_appropriate_use(S).

% Article 13(2) – Instructions for use obligation
must_provide_instructions(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    accompanied_by_instructions(S, instructions(concise, complete, correct, clear, relevant, accessible, comprehensible)).

accompanied_by_instructions(S, I) :-
    high_risk_ai_system(S),
    instructions_for_use(I).

% Article 13(3) – Content of instructions
instructions_contain(I, identity_and_contact(Provider)) :-
    instructions_for_use(I),
    provider(Provider).

instructions_contain(I, identity_and_contact(Representative)) :-
    instructions_for_use(I),
    authorised_representative(Representative).

instructions_contain(I, characteristics_capabilities_limitations(S)) :-
    instructions_for_use(I),
    high_risk_ai_system(S),
    intended_purpose(Purpose),
    accuracy_robustness_cybersecurity_info(S),
    foreseeable_risk_circumstances(S),
    output_explanation_capabilities(S),
    performance_on_specific_groups(S),
    input_data_specifications(S),
    output_interpretation_info(S).

instructions_contain(I, predetermined_changes(S)) :-
    instructions_for_use(I),
    high_risk_ai_system(S).

instructions_contain(I, human_oversight_measures(S)) :-
    instructions_for_use(I),
    high_risk_ai_system(S).

instructions_contain(I, computational_resources_and_maintenance(S)) :-
    instructions_for_use(I),
    high_risk_ai_system(S).

instructions_contain(I, log_mechanisms_description(S)) :-
    instructions_for_use(I),
    high_risk_ai_system(S).

% Provenance
provenance(must_ensure_transparency/2, 'celex:32024R1689/oj#art_13').
provenance(sufficiently_transparent/1, 'celex:32024R1689/oj#art_13').
provenance(must_provide_instructions/2, 'celex:32024R1689/oj#art_13').
provenance(accompanied_by_instructions/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain/2, 'celex:32024R1689/oj#art_13').

% References
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').
