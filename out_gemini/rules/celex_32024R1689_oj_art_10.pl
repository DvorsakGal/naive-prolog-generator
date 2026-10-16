% unit       : celex:32024R1689/oj#art_10
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c541e4190a04d9ecbae4ead3842b12b5bf926f7dc19bc65ddb327025a5f82816
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f874af2e173539c76b7a033997b81dcc601b7115d582ebd548236966793a9e64
% cached     : False
% title      : Data and data governance
:- pred high_risk_ai_system/1, gloss('high-risk AI system pursuant to Chapter III Section 1'), source('celex:32024R1689/oj#art_10').
:- pred uses_model_training_techniques/1, gloss('AI system making use of techniques involving training of AI models with data'), source('celex:32024R1689/oj#art_10').
:- pred data_set/1, gloss('data set used for AI system development or testing'), source('celex:32024R1689/oj#art_10').
:- pred testing_data_set/1, gloss('separate data set used for testing'), source('celex:32024R1689/oj#art_10').
:- pred training_data_set/1, gloss('separate data set used for training'), source('celex:32024R1689/oj#art_10').
:- pred complies_with_data_governance/1, gloss('data set complies with the data governance and quality criteria of Article 10'), source('celex:32024R1689/oj#art_10').
:- pred required_data_governance(1), gloss('data governance requirements apply to a data set'), source('celex:32024R1689/oj#art_10').
:- pred appropriate_data_governance_practices(1), gloss('subject to appropriate data governance and management practices'), source('celex:32024R1689/oj#art_10').
:- pred meets_quality_criteria/1, gloss('data set meets relevance, representativeness, error-free and completeness criteria'), source('celex:32024R1689/oj#art_10').
:- pred takes_into_account_setting_characteristics/1, gloss('data set takes into account specific setting characteristics required by intended purpose'), source('celex:32024R1689/oj#art_10').
:- pred permitted_processing_special_categories(1), gloss('exceptional processing of special categories of personal data for bias detection and correction is permitted'), source('celex:32024R1689/oj#art_10').
:- pred bias_detection_correction_necessary(1), gloss('processing strictly necessary for bias detection and correction'), source('celex:32024R1689/oj#art_10').
:- pred cannot_fulfill_with_other_data(1), gloss('bias detection and correction cannot effectively be fulfilled with other data'), source('celex:32024R1689/oj#art_10').
:- pred technical_limitations_applied(1), gloss('technical limitations on re-use and privacy-preserving measures applied'), source('celex:32024R1689/oj#art_10').
:- pred access_control_measures_applied(1), gloss('strict access controls and security safeguards applied'), source('celex:32024R1689/oj#art_10').
:- pred not_transferred_to_other_parties(1), gloss('special category personal data not transmitted or transferred to other parties'), source('celex:32024R1689/oj#art_10').
:- pred deleted_after_correction_or_retention(1), gloss('special category personal data deleted after correction or retention period'), source('celex:32024R1689/oj#art_10').
:- pred records_include_necessity_reasons(1), gloss('records of processing activities include necessity reasons for special category data'), source('celex:32024R1689/oj#art_10').
:- pred used_for/2, gloss('data set is used for the development or testing of an AI system'), source('celex:32024R1689/oj#art_10').

% Paragraph 1 & Paragraph 6: Applicable data sets for data governance
required_data_governance(D) :-
    data_set(D),
    used_for(D, S),
    high_risk_ai_system(S),
    uses_model_training_techniques(S),
    ( training_data_set(D)
    ; validation_data_set(D)
    ; testing_data_set(D)
    ).

required_data_governance(D) :-
    data_set(D),
    used_for(D, S),
    high_risk_ai_system(S),
    \+ uses_model_training_techniques(S),
    testing_data_set(D).

% Paragraphs 2, 3, 4: Quality & governance compliance criteria
complies_with_data_governance(D) :-
    required_data_governance(D),
    appropriate_data_governance_practices(D),
    meets_quality_criteria(D),
    takes_into_account_setting_characteristics(D).

% Paragraph 5: Exceptionally permitted processing of special categories of personal data
permitted_processing_special_categories(P) :-
    provider(P),
    bias_detection_correction_necessary(P),
    cannot_fulfill_with_other_data(P),
    technical_limitations_applied(P),
    access_control_measures_applied(P),
    not_transferred_to_other_parties(P),
    deleted_after_correction_or_retention(P),
    records_include_necessity_reasons(P).

% Paragraph 1 requirement: High-risk AI system must be developed on conforming data sets
required_quality_data_sets(S) :-
    high_risk_ai_system(S),
    used_for(D, S),
    required_data_governance(D),
    complies_with_data_governance(D).

provenance(required_data_governance/1, 'celex:32024R1689/oj#art_10').
provenance(complies_with_data_governance/1, 'celex:32024R1689/oj#art_10').
provenance(permitted_processing_special_categories/1, 'celex:32024R1689/oj#art_10').
provenance(required_quality_data_sets/1, 'celex:32024R1689/oj#art_10').

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
