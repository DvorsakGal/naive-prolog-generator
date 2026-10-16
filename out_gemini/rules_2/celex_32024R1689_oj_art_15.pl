% unit       : celex:32024R1689/oj#art_15
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : a0c9daf543fe1c63ca24c6c65655baeff108d03aa9602fa530c48258bf167d61
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 2b628616c7bd262945d43c3669d1afe1275cf7aa6c2d3ec72a324c63e29f7323
% cached     : False
% title      : Accuracy, robustness and cybersecurity
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_15').
:- pred accurate/1, gloss('achieves appropriate level of accuracy throughout lifecycle'), source('celex:32024R1689/oj#art_15').
:- pred robust/1, gloss('achieves appropriate level of robustness throughout lifecycle'), source('celex:32024R1689/oj#art_15').
:- pred cybersecurity_resilient/1, gloss('achieves appropriate level of cybersecurity throughout lifecycle'), source('celex:32024R1689/oj#art_15').
:- pred declared_in_instructions_for_use/2, gloss('information declared in instructions for use of system'), source('celex:32024R1689/oj#art_15').
:- pred resilient_against_errors_and_faults/1, gloss('system is as resilient as possible regarding errors, faults or inconsistencies'), source('celex:32024R1689/oj#art_15').
:- pred continuous_learning/1, gloss('system continues to learn after placing on market or putting into service'), source('celex:32024R1689/oj#art_15').
:- pred mitigates_feedback_loops/1, gloss('system eliminates or reduces feedback loop risks and mitigates them'), source('celex:32024R1689/oj#art_15').
:- pred resilient_against_unauthorised_alteration/1, gloss('system is resilient against unauthorised third party attempts to alter use, outputs or performance'), source('celex:32024R1689/oj#art_15').
:- pred appropriate_cybersecurity_measures/1, gloss('system employs technical cybersecurity solutions appropriate to circumstances and risks'), source('celex:32024R1689/oj#art_15').
:- pred must_encourage/2, gloss('actor must encourage an initiative or development'), source('celex:32024R1689/oj#art_15').
:- pred required_accuracy_and_robustness/1, gloss('system meets accuracy, robustness and cybersecurity design requirements'), source('celex:32024R1689/oj#art_15').

% Paragraph 1: High-risk AI systems design and development for accuracy, robustness, and cybersecurity
required_accuracy_and_robustness(S) :-
    high_risk_ai_system(S),
    accurate(S),
    robust(S),
    cybersecurity_resilient(S).

% Paragraph 2: Commission obligation to encourage benchmarks and measurement methodologies
must_encourage(Actor, development(benchmarks_and_measurement_methodologies)) :-
    commission(Actor).

% Paragraph 3: Levels of accuracy and metrics declared in instructions for use
required_accuracy_declaration(S) :-
    high_risk_ai_system(S),
    declared_in_instructions_for_use(S, accuracy_levels_and_metrics).

% Paragraph 4: Robustness against errors, faults, and continuous learning feedback loops
required_robustness_measures(S) :-
    high_risk_ai_system(S),
    resilient_against_errors_and_faults(S).

required_robustness_measures(S) :-
    high_risk_ai_system(S),
    continuous_learning(S),
    mitigates_feedback_loops(S).

% Paragraph 5: Cybersecurity against unauthorised third party exploitation
required_cybersecurity_measures(S) :-
    high_risk_ai_system(S),
    resilient_against_unauthorised_alteration(S),
    appropriate_cybersecurity_measures(S).

% Cross-references
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_15').
provenance(accurate/1, 'celex:32024R1689/oj#art_15').
provenance(robust/1, 'celex:32024R1689/oj#art_15').
provenance(cybersecurity_resilient/1, 'celex:32024R1689/oj#art_15').
provenance(declared_in_instructions_for_use/2, 'celex:32024R1689/oj#art_15').
provenance(resilient_against_errors_and_faults/1, 'celex:32024R1689/oj#art_15').
provenance(continuous_learning/1, 'celex:32024R1689/oj#art_15').
provenance(mitigates_feedback_loops/1, 'celex:32024R1689/oj#art_15').
provenance(resilient_against_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').
provenance(appropriate_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').
provenance(must_encourage/2, 'celex:32024R1689/oj#art_15').
provenance(required_accuracy_and_robustness/1, 'celex:32024R1689/oj#art_15').
provenance(required_accuracy_declaration/1, 'celex:32024R1689/oj#art_15').
provenance(required_robustness_measures/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').
