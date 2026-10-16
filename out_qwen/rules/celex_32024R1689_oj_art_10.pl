% unit       : celex:32024R1689/oj#art_10
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c541e4190a04d9ecbae4ead3842b12b5bf926f7dc19bc65ddb327025a5f82816
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : bd36df32a4466fd294dc5750365eb5a2c893f9fe46d7c9df4d4805d79349c859
% cached     : False
% title      : Data and data governance
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_10').
:- pred uses_training_techniques/1, gloss('AI system developed using techniques involving training with data'), source('celex:32024R1689/oj#art_10').
:- pred data_set_meets_quality_criteria/1, gloss('data set satisfies requirements of Article 10(2)-(5)'), source('celex:32024R1689/oj#art_10').
:- pred subject_to_data_governance/1, gloss('data set governed by practices appropriate for intended purpose'), source('celex:32024R1689/oj#art_10').
:- pred relevant_and_representative/1, gloss('data set is relevant, representative, error-free and complete for intended purpose'), source('celex:32024R1689/oj#art_10').
:- pred accounts_for_setting_characteristics/1, gloss('data set accounts for geographical, contextual, behavioural or functional setting'), source('celex:32024R1689/oj#art_10').
:- pred permitted_processing_special_categories/2, gloss('exceptional processing of special categories of personal data for bias detection'), source('celex:32024R1689/oj#art_10').
:- pred strictly_necessary_for_bias_correction/1, gloss('processing strictly necessary for bias detection and correction'), source('celex:32024R1689/oj#art_10').
:- pred cannot_use_alternative_data/1, gloss('bias detection cannot be fulfilled by other data including synthetic or anonymised'), source('celex:32024R1689/oj#art_10').
:- pred technical_limitations_on_reuse/1, gloss('special category data subject to technical limitations on re-use'), source('celex:32024R1689/oj#art_10').
:- pred security_and_privacy_measures/1, gloss('state-of-the-art security and privacy-preserving measures applied'), source('celex:32024R1689/oj#art_10').
:- pred access_controls_and_documentation/1, gloss('strict controls and documentation of access to prevent misuse'), source('celex:32024R1689/oj#art_10').
:- pred no_transmission_to_third_parties/1, gloss('data not transmitted, transferred or accessed by other parties'), source('celex:32024R1689/oj#art_10').
:- pred deletion_after_correction_or_retention/1, gloss('data deleted once bias corrected or retention period ends'), source('celex:32024R1689/oj#art_10').
:- pred processing_records_include_justification/1, gloss('records include reasons why processing was strictly necessary'), source('celex:32024R1689/oj#art_10').

must_develop_with_quality_data_sets(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    uses_training_techniques(S),
    data_set_meets_quality_criteria(S).

must_apply_data_governance(_P, S) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    subject_to_data_governance(S).

must_ensure_data_relevance(_P, S) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    relevant_and_representative(S).

must_account_for_setting(_P, S) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    accounts_for_setting_characteristics(S).

permitted_processing_special_categories(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    strictly_necessary_for_bias_correction(S),
    cannot_use_alternative_data(S),
    technical_limitations_on_reuse(S),
    security_and_privacy_measures(S),
    access_controls_and_documentation(S),
    no_transmission_to_third_parties(S),
    deletion_after_correction_or_retention(S),
    processing_records_include_justification(S).

must_apply_requirements_to_testing_data_only(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    \+ uses_training_techniques(S),
    data_set_meets_quality_criteria(S).

provenance(must_develop_with_quality_data_sets/2, 'celex:32024R1689/oj#art_10').
provenance(must_apply_data_governance/2, 'celex:32024R1689/oj#art_10').
provenance(must_ensure_data_relevance/2, 'celex:32024R1689/oj#art_10').
provenance(must_account_for_setting/2, 'celex:32024R1689/oj#art_10').
provenance(permitted_processing_special_categories/2, 'celex:32024R1689/oj#art_10').
provenance(must_apply_requirements_to_testing_data_only/2, 'celex:32024R1689/oj#art_10').

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
