% unit       : celex:32024R1689/oj#art_13
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1d358e923a8c4bc07de673bd7db72ad561d83589aaee2c0c69f3f267ad3f1010
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : a0300701a7c062ec427e3dd0bb50ba062edf62603dfd10dafd9b70aaf5c609e9
% cached     : False
% title      : Transparency and provision of information to deployers
:- pred deployer_can_interpret_output/1, gloss('deployer can interpret output of high-risk AI system'), source('celex:32024R1689/oj#art_13').
:- pred deployer_can_use_appropriately/1, gloss('deployer can use high-risk AI system appropriately'), source('celex:32024R1689/oj#art_13').
:- pred instructions_for_use_accompany/1, gloss('instructions for use accompany high-risk AI system'), source('celex:32024R1689/oj#art_13').
:- pred instructions_for_use_appropriate_format/1, gloss('instructions for use in appropriate digital or other format'), source('celex:32024R1689/oj#art_13').
:- pred instructions_for_use_contain/2, gloss('instructions for use contain specified information'), source('celex:32024R1689/oj#art_13').

deployer_can_interpret_output(S) :-
    high_risk_ai_system(S),
    designed_and_developed(S, transparency_for_interpretation).

deployer_can_use_appropriately(S) :-
    high_risk_ai_system(S),
    designed_and_developed(S, transparency_for_appropriate_use).

instructions_for_use_accompany(S) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(_)).

instructions_for_use_appropriate_format(S) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    appropriate_format(I).

instructions_for_use_contain(S, identity_and_contact_details(Provider, Representative)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    identity_and_contact_details(I, Provider, Representative).

instructions_for_use_contain(S, characteristics_capabilities_limitations(Characteristics)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    characteristics_capabilities_limitations(I, Characteristics).

instructions_for_use_contain(S, intended_purpose(P)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    intended_purpose_information(I, P).

instructions_for_use_contain(S, accuracy_robustness_cybersecurity(Metrics)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    accuracy_robustness_cybersecurity_info(I, Metrics).

instructions_for_use_contain(S, known_foreseeable_circumstances_risks(Circumstances)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    known_foreseeable_circumstances(I, Circumstances).

instructions_for_use_contain(S, technical_capabilities_explain_output(Capabilities)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    technical_capabilities_explain_output(I, Capabilities).

instructions_for_use_contain(S, performance_specific_persons_groups(Performance)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    performance_specific_persons_groups(I, Performance).

instructions_for_use_contain(S, input_data_specifications(DataInfo)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    input_data_specifications(I, DataInfo).

instructions_for_use_contain(S, predetermined_changes(Changes)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    predetermined_changes(I, Changes).

instructions_for_use_contain(S, human_oversight_measures_technical(Measures)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    human_oversight_measures_technical_info(I, Measures).

instructions_for_use_contain(S, computational_hardware_resources(Resources)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    computational_hardware_resources(I, Resources).

instructions_for_use_contain(S, log_mechanisms_description(Mechanisms)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    log_mechanisms_description(I, Mechanisms).

provenance(deployer_can_interpret_output/1, 'celex:32024R1689/oj#art_13').
provenance(deployer_can_use_appropriately/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_for_use_accompany/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_for_use_appropriate_format/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_for_use_contain/2, 'celex:32024R1689/oj#art_13').

references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').
