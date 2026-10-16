% unit       : celex:32024R1689/oj#art_10
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c541e4190a04d9ecbae4ead3842b12b5bf926f7dc19bc65ddb327025a5f82816
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 1c0538dd2965946f4e7fcecc172eb605c59936d411a7cbeff4fadbaee69eaed1
% cached     : False
% title      : Data and data governance
:- pred data_governance_practices_applied/1, gloss('training, validation and testing data sets subject to data governance and management practices'), source('celex:32024R1689/oj#art_10').
:- pred data_sets_meet_quality_criteria/1, gloss('data sets meet quality criteria of paragraphs 2-5'), source('celex:32024R1689/oj#art_10').
:- pred data_sets_relevant_representative_complete/1, gloss('data sets are relevant, sufficiently representative, free of errors and complete'), source('celex:32024R1689/oj#art_10').
:- pred data_sets_account_for_setting/1, gloss('data sets take into account geographical, contextual, behavioural or functional setting'), source('celex:32024R1689/oj#art_10').
:- pred special_category_data_processing_conditions_met/1, gloss('conditions for processing special categories of personal data are met'), source('celex:32024R1689/oj#art_10').
:- pred bias_detection_correction_impossible_otherwise/1, gloss('bias detection and correction cannot be fulfilled by processing other data'), source('celex:32024R1689/oj#art_10').
:- pred technical_limitations_on_reuse/1, gloss('special categories of personal data subject to technical limitations on re-use'), source('celex:32024R1689/oj#art_10').
:- pred security_privacy_measures_applied/1, gloss('state-of-the-art security and privacy-preserving measures applied'), source('celex:32024R1689/oj#art_10').
:- pred data_secured_and_protected/1, gloss('personal data secured, protected, subject to suitable safeguards'), source('celex:32024R1689/oj#art_10').
:- pred data_not_transmitted_to_other_parties/1, gloss('special categories of personal data not transmitted or accessed by other parties'), source('celex:32024R1689/oj#art_10').
:- pred data_deleted_after_correction_or_retention/1, gloss('special categories of personal data deleted once bias corrected or retention period ends'), source('celex:32024R1689/oj#art_10').
:- pred records_include_necessity_reasoning/1, gloss('records of processing include reasons for necessity of processing special categories'), source('celex:32024R1689/oj#art_10').
:- pred uses_training_of_ai_models/1, gloss('high-risk AI system uses techniques involving training of AI models with data'), source('celex:32024R1689/oj#art_10').

% Paragraph 1: High-risk AI systems using training techniques must be developed on data sets meeting quality criteria
must_develop_on_quality_data_sets(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    uses_training_of_ai_models(S),
    data_sets_meet_quality_criteria(S).

data_sets_meet_quality_criteria(S) :-
    data_governance_practices_applied(S),
    data_sets_relevant_representative_complete(S),
    data_sets_account_for_setting(S),
    special_category_data_processing_conditions_met(S).

% Paragraph 2: Data governance and management practices
data_governance_practices_applied(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    % practices concern design choices, data collection, preparation, assumptions, assessment, bias examination, mitigation, gaps
    bias_mitigation_measures_identified(S).

% Paragraph 3: Data sets shall be relevant, sufficiently representative, free of errors and complete
data_sets_relevant_representative_complete(S) :-
    high_risk_ai_system(S),
    intended_purpose(S).

% Paragraph 4: Data sets shall take into account the specific setting
data_sets_account_for_setting(S) :-
    high_risk_ai_system(S),
    intended_purpose(S).

% Paragraph 5: Exception for processing special categories of personal data
special_category_data_processing_conditions_met(S) :-
    high_risk_ai_system(S),
    bias_detection_correction_impossible_otherwise(S),
    technical_limitations_on_reuse(S),
    security_privacy_measures_applied(S),
    data_secured_and_protected(S),
    data_not_transmitted_to_other_parties(S),
    data_deleted_after_correction_or_retention(S),
    records_include_necessity_reasoning(S).

% Paragraph 6: For systems not using training techniques, paragraphs 2-5 apply only to testing data sets
must_develop_on_quality_data_sets(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    \+ uses_training_of_ai_models(S),
    testing_data(S),
    data_governance_practices_applied(S),
    data_sets_relevant_representative_complete(S),
    data_sets_account_for_setting(S),
    special_category_data_processing_conditions_met(S).

% Provenance
provenance(must_develop_on_quality_data_sets/2, 'celex:32024R1689/oj#art_10').
provenance(data_sets_meet_quality_criteria/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practices_applied/1, 'celex:32024R1689/oj#art_10').
provenance(data_sets_relevant_representative_complete/1, 'celex:32024R1689/oj#art_10').
provenance(data_sets_account_for_setting/1, 'celex:32024R1689/oj#art_10').
provenance(special_category_data_processing_conditions_met/1, 'celex:32024R1689/oj#art_10').
provenance(bias_detection_correction_impossible_otherwise/1, 'celex:32024R1689/oj#art_10').
provenance(technical_limitations_on_reuse/1, 'celex:32024R1689/oj#art_10').
provenance(security_privacy_measures_applied/1, 'celex:32024R1689/oj#art_10').
provenance(data_secured_and_protected/1, 'celex:32024R1689/oj#art_10').
provenance(data_not_transmitted_to_other_parties/1, 'celex:32024R1689/oj#art_10').
provenance(data_deleted_after_correction_or_retention/1, 'celex:32024R1689/oj#art_10').
provenance(records_include_necessity_reasoning/1, 'celex:32024R1689/oj#art_10').
provenance(uses_training_of_ai_models/1, 'celex:32024R1689/oj#art_10').

% References
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
