% unit       : celex:32024R1689/oj#art_13
% title      : Transparency and provision of information to deployers
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1d358e923a8c4bc07de673bd7db72ad561d83589aaee2c0c69f3f267ad3f1010
% model      : gpt-oss:120b-cloud
% prompt sha : 317b385a8314a1450d3727111b65d86b3875b5bcebfa6107087af168df9cf3e0
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_13').
:- pred required_transparency/1, gloss('obligation to ensure transparency of operation'), source('celex:32024R1689/oj#art_13').
:- pred required_instructions_for_use/1, gloss('obligation to provide appropriate digital instructions for use'), source('celex:32024R1689/oj#art_13').
:- pred required_information/2, gloss('specific information that must be included in the instructions for use'), source('celex:32024R1689/oj#art_13').

% 1. Transparency requirement for high‑risk AI systems
required_transparency(S) :-
    high_risk(S).

provenance(required_transparency/1, 'celex:32024R1689/oj#art_13').

% 2. Instructions for use requirement
required_instructions_for_use(S) :-
    high_risk(S).

provenance(required_instructions_for_use/1, 'celex:32024R1689/oj#art_13').

% 3. Mandatory information items in the instructions for use

% (a) identity and contact details of the provider and, where applicable, its authorised representative
required_information(S, provider_identity_and_contact) :-
    high_risk(S).

% (b)(i) intended purpose
required_information(S, intended_purpose) :-
    high_risk(S).

% (b)(ii) level of accuracy, metrics, robustness and cybersecurity (see art 15)
required_information(S, accuracy_and_cybersecurity) :-
    high_risk(S).

% (b)(iii) known or foreseeable circumstances that may lead to risks to health, safety or fundamental rights (see art 9/par 2)
required_information(S, risk_circumstances) :-
    high_risk(S).

% (b)(iv) technical capabilities and characteristics relevant to explaining the output
required_information(S, technical_capabilities_for_explanation) :-
    high_risk(S).

% (b)(v) performance regarding specific persons or groups of persons
required_information(S, performance_for_specific_persons) :-
    high_risk(S).

% (b)(vi) specifications for input data and information on training, validation and testing data sets
required_information(S, data_specifications) :-
    high_risk(S).

% (b)(vii) information enabling deployers to interpret the output and use it appropriately
required_information(S, interpretation_information) :-
    high_risk(S).

% (c) changes to the system and its performance predetermined at the initial conformity assessment
required_information(S, changes_and_performance) :-
    high_risk(S).

% (d) human oversight measures (see art 14) including technical measures to facilitate interpretation
required_information(S, human_oversight_measures) :-
    high_risk(S).

% (e) computational and hardware resources, expected lifetime, maintenance and care measures
required_information(S, resources_and_maintenance) :-
    high_risk(S).

% (f) mechanisms for collecting, storing and interpreting logs (see art 12)
required_information(S, log_mechanisms) :-
    high_risk(S).

provenance(required_information/2, 'celex:32024R1689/oj#art_13').

% References cited in this provision
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').
