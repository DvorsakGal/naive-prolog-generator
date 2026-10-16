% unit       : celex:32024R1689/oj#art_10
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c541e4190a04d9ecbae4ead3842b12b5bf926f7dc19bc65ddb327025a5f82816
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : cb346d134bb5f586f6cec5d04c030cc7eaccd67a590ceb9cc7f7eb240f954ed8
% cached     : False
% title      : Data and data governance
:- pred required_data_governance_practices/1, gloss('training, validation and testing data sets subject to data governance and management practices appropriate for intended purpose'), source('celex:32024R1689/oj#art_10').
:- pred data_governance_practice_design_choices/1, gloss('data governance practices concern relevant design choices'), source('celex:32024R1689/oj#art_10').
:- pred data_governance_practice_data_collection/1, gloss('data governance practices concern data collection processes and origin of data, and original purpose of personal data collection'), source('celex:32024R1689/oj#art_10').
:- pred data_governance_practice_preparation_operations/1, gloss('data governance practices concern relevant data-preparation processing operations such as annotation, labelling, cleaning, updating, enrichment and aggregation'), source('celex:32024R1689/oj#art_10').
:- pred data_governance_practice_assumptions/1, gloss('data governance practices concern formulation of assumptions about what data measure and represent'), source('celex:32024R1689/oj#art_10').
:- pred data_governance_practice_availability_assessment/1, gloss('data governance practices concern assessment of availability, quantity and suitability of data sets needed'), source('celex:32024R1689/oj#art_10').
:- pred data_governance_practice_bias_examination/1, gloss('data governance practices concern examination for possible biases affecting health, safety, fundamental rights or leading to prohibited discrimination'), source('celex:32024R1689/oj#art_10').
:- pred data_governance_practice_bias_mitigation/1, gloss('data governance practices concern appropriate measures to detect, prevent and mitigate possible biases'), source('celex:32024R1689/oj#art_10').
:- pred data_governance_practice_data_gaps/1, gloss('data governance practices concern identification of relevant data gaps or shortcomings and how to address them'), source('celex:32024R1689/oj#art_10').
:- pred data_set_relevant/1, gloss('data set is relevant for intended purpose'), source('celex:32024R1689/oj#art_10').
:- pred data_set_sufficiently_representative/1, gloss('data set is sufficiently representative for intended purpose'), source('celex:32024R1689/oj#art_10').
:- pred data_set_free_of_errors/1, gloss('data set is to the best extent possible free of errors'), source('celex:32024R1689/oj#art_10').
:- pred data_set_complete/1, gloss('data set is complete in view of intended purpose'), source('celex:32024R1689/oj#art_10').
:- pred data_set_appropriate_statistical_properties/1, gloss('data set has appropriate statistical properties including as regards persons or groups of persons'), source('celex:32024R1689/oj#art_10').
:- pred data_set_contextual_characteristics/1, gloss('data set takes into account characteristics or elements particular to specific geographical, contextual, behavioural or functional setting'), source('celex:32024R1689/oj#art_10').
:- pred permitted_processing_special_categories_for_bias_correction/1, gloss('provider may exceptionally process special categories of personal data for bias detection and correction'), source('celex:32024R1689/oj#art_10').
:- pred bias_correction_ineffective_with_other_data/1, gloss('bias detection and correction cannot be effectively fulfilled by processing other data including synthetic or anonymised data'), source('celex:32024R1689/oj#art_10').
:- pred special_categories_technical_limitations/1, gloss('special categories of personal data subject to technical limitations on re-use and state-of-the-art security and privacy-preserving measures including pseudonymisation'), source('celex:32024R1689/oj#art_10').
:- pred special_categories_security_measures/1, gloss('special categories of personal data subject to measures ensuring security, protection, suitable safeguards, strict controls and documentation of access with appropriate confidentiality obligations'), source('celex:32024R1689/oj#art_10').
:- pred special_categories_not_transmitted/1, gloss('special categories of personal data not transmitted, transferred or otherwise accessed by other parties'), source('celex:32024R1689/oj#art_10').
:- pred special_categories_deleted_after_bias_correction/1, gloss('special categories of personal data deleted once bias corrected or retention period ends, whichever comes first'), source('celex:32024R1689/oj#art_10').
:- pred special_categories_processing_records_include_reasons/1, gloss('records of processing activities include reasons why processing special categories was strictly necessary and why objective could not be achieved with other data'), source('celex:32024R1689/oj#art_10').
:- pred training_technique_used/1, gloss('high-risk AI system makes use of techniques involving training of AI models with data'), source('celex:32024R1689/oj#art_10').
:- pred no_training_technique_used/1, gloss('high-risk AI system does not use techniques involving training of AI models with data'), source('celex:32024R1689/oj#art_10').

required_data_governance_practices(S) :-
    high_risk_ai_system(S),
    training_technique_used(S),
    training_data(D),
    uses_data_set(S, D).

required_data_governance_practices(S) :-
    high_risk_ai_system(S),
    training_technique_used(S),
    validation_data_set(D),
    uses_data_set(S, D).

required_data_governance_practices(S) :-
    high_risk_ai_system(S),
    training_technique_used(S),
    testing_data(D),
    uses_data_set(S, D).

required_data_governance_practices(S) :-
    high_risk_ai_system(S),
    no_training_technique_used(S),
    testing_data(D),
    uses_data_set(S, D).

data_governance_practice_design_choices(S) :-
    required_data_governance_practices(S).

data_governance_practice_data_collection(S) :-
    required_data_governance_practices(S).

data_governance_practice_preparation_operations(S) :-
    required_data_governance_practices(S).

data_governance_practice_assumptions(S) :-
    required_data_governance_practices(S).

data_governance_practice_availability_assessment(S) :-
    required_data_governance_practices(S).

data_governance_practice_bias_examination(S) :-
    required_data_governance_practices(S).

data_governance_practice_bias_mitigation(S) :-
    required_data_governance_practices(S).

data_governance_practice_data_gaps(S) :-
    required_data_governance_practices(S).

data_set_relevant(D) :-
    high_risk_ai_system(S),
    uses_data_set(S, D),
    intended_purpose(S).

data_set_sufficiently_representative(D) :-
    high_risk_ai_system(S),
    uses_data_set(S, D),
    intended_purpose(S).

data_set_free_of_errors(D) :-
    high_risk_ai_system(S),
    uses_data_set(S, D).

data_set_complete(D) :-
    high_risk_ai_system(S),
    uses_data_set(S, D),
    intended_purpose(S).

data_set_appropriate_statistical_properties(D) :-
    high_risk_ai_system(S),
    uses_data_set(S, D),
    intended_purpose(S).

data_set_contextual_characteristics(D) :-
    high_risk_ai_system(S),
    uses_data_set(S, D),
    intended_purpose(S).

permitted_processing_special_categories_for_bias_correction(S) :-
    high_risk_ai_system(S),
    provider(S),
    bias_correction_ineffective_with_other_data(S),
    special_categories_technical_limitations(S),
    special_categories_security_measures(S),
    special_categories_not_transmitted(S),
    special_categories_deleted_after_bias_correction(S),
    special_categories_processing_records_include_reasons(S).

provenance(required_data_governance_practices/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_design_choices/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_data_collection/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_preparation_operations/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_assumptions/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_availability_assessment/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_bias_examination/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_bias_mitigation/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_data_gaps/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_relevant/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_sufficiently_representative/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_free_of_errors/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_complete/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_appropriate_statistical_properties/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_contextual_characteristics/1, 'celex:32024R1689/oj#art_10').
provenance(permitted_processing_special_categories_for_bias_correction/1, 'celex:32024R1689/oj#art_10').
provenance(bias_correction_ineffective_with_other_data/1, 'celex:32024R1689/oj#art_10').
provenance(special_categories_technical_limitations/1, 'celex:32024R1689/oj#art_10').
provenance(special_categories_security_measures/1, 'celex:32024R1689/oj#art_10').
provenance(special_categories_not_transmitted/1, 'celex:32024R1689/oj#art_10').
provenance(special_categories_deleted_after_bias_correction/1, 'celex:32024R1689/oj#art_10').
provenance(special_categories_processing_records_include_reasons/1, 'celex:32024R1689/oj#art_10').
provenance(training_technique_used/1, 'celex:32024R1689/oj#art_10').
provenance(no_training_technique_used/1, 'celex:32024R1689/oj#art_10').

references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_3').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_10', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_10', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_10', 'celex:32016L0680/oj').
