% unit       : celex:32024R1689/oj#art_10
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c541e4190a04d9ecbae4ead3842b12b5bf926f7dc19bc65ddb327025a5f82816
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2826380cf757e1be8278ce7b9a6c9e7d3544e19a165902715db003428f9da60a
% cached     : False
% title      : Data and data governance
:- pred required_data_governance/1, gloss('data governance and management practices for high-risk AI systems'), source('celex:32024R1689/oj#art_10/par_2').
:- pred required_data_quality_criteria/1, gloss('quality criteria for training, validation and testing data sets'), source('celex:32024R1689/oj#art_10/par_1').
:- pred required_data_relevance_representativeness/1, gloss('relevance, representativeness, accuracy and completeness of data sets'), source('celex:32024R1689/oj#art_10/par_3').
:- pred required_data_contextual_appropriateness/1, gloss('data sets reflecting specific contextual characteristics'), source('celex:32024R1689/oj#art_10/par_4').
:- pred permitted_special_category_processing/2, gloss('exceptional processing of special categories of personal data for bias detection'), source('celex:32024R1689/oj#art_10/par_5').
:- pred required_testing_data_only/1, gloss('testing data sets requirements for non-training-based systems'), source('celex:32024R1689/oj#art_10/par_6').

% Article 10(1): High-risk AI systems using training techniques must meet quality criteria
required_data_quality_criteria(S) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data_set(D1),
    validation_data_set(D2),
    testing_data_set(D3),
    meets_quality_criteria(D1),
    meets_quality_criteria(D2),
    meets_quality_criteria(D3).

% Article 10(2): Data governance and management practices required
required_data_governance(S) :-
    high_risk_ai_system(S),
    training_validation_testing_data_sets_used(S, Ds),
    data_governance_practices_appropriate(Ds, intended_purpose(S)).

% Article 10(3): Data sets must be relevant, representative, free of errors, complete
required_data_relevance_representativeness(S) :-
    high_risk_ai_system(S),
    training_validation_testing_data_sets_used(S, Ds),
    relevant(Ds),
    sufficiently_representative(Ds),
    to_best_extent_possible(free_of_errors(Ds)),
    to_best_extent_possible(complete(Ds)),
    appropriate_statistical_properties(Ds),
    appropriate_statistical_properties_for_persons_or_groups(Ds, intended_use_persons(S)).

% Article 10(4): Data sets must account for specific contextual characteristics
required_data_contextual_appropriateness(S) :-
    high_risk_ai_system(S),
    training_validation_testing_data_sets_used(S, Ds),
    required_by_intended_purpose(extent, S),
    takes_into_account(Ds, geographical_characteristics(S)),
    takes_into_account(Ds, contextual_characteristics(S)),
    takes_into_account(Ds, behavioural_characteristics(S)),
    takes_into_account(Ds, functional_characteristics(S)).

% Article 10(5): Exceptional permission to process special categories for bias detection
permitted_special_category_processing(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    strictly_necessary_for(bias_detection_and_correction, S),
    condition_met(a, P, S),
    condition_met(b, P, S),
    condition_met(c, P, S),
    condition_met(d, P, S),
    condition_met(e, P, S),
    condition_met(f, P, S).

condition_met(a, _P, S) :-
    \+ effectively_fulfilled_by_other_data(bias_detection_and_correction, S).

condition_met(b, P, S) :-
    special_categories_processed(P, S),
    technical_limitations_on_reuse(S),
    state_of_the_art_security_measures(S),
    privacy_preserving_measures(S),
    pseudonymisation(S).

condition_met(c, P, S) :-
    special_categories_processed(P, S),
    secured(S),
    protected(S),
    suitable_safeguards(S),
    strict_controls(S),
    documentation_of_access(S),
    only_authorised_persons_access(S),
    confidentiality_obligations(S).

condition_met(d, _P, S) :-
    \+ transmitted(S),
    \+ transferred(S),
    \+ accessed_by_other_parties(S).

condition_met(e, _P, S) :-
    deleted_once(bias_corrected, S);
    deleted_once(retention_period_ended, S).

condition_met(f, P, S) :-
    records_of_processing_activities_include(P, reasons_strictly_necessary(S)),
    records_of_processing_activities_include(P, reasons_other_data_insufficient(S)).

% Article 10(6): For non-training systems, requirements apply only to testing data
required_testing_data_only(S) :-
    high_risk_ai_system(S),
    \+ uses_training_techniques(S),
    testing_data_set(D),
    meets_quality_criteria(D),
    required_data_governance_for_testing(S),
    required_data_relevance_representativeness_for_testing(S),
    required_data_contextual_appropriateness_for_testing(S).

% Supporting predicates for paragraph 6 (applying subset of requirements to testing only)
required_data_governance_for_testing(S) :-
    high_risk_ai_system(S),
    \+ uses_training_techniques(S),
    testing_data_set(D),
    data_governance_practices_appropriate(D, intended_purpose(S)).

required_data_relevance_representativeness_for_testing(S) :-
    high_risk_ai_system(S),
    \+ uses_training_techniques(S),
    testing_data_set(D),
    relevant(D),
    sufficiently_representative(D),
    to_best_extent_possible(free_of_errors(D)),
    to_best_extent_possible(complete(D)),
    appropriate_statistical_properties(D).

required_data_contextual_appropriateness_for_testing(S) :-
    high_risk_ai_system(S),
    \+ uses_training_techniques(S),
    testing_data_set(D),
    required_by_intended_purpose(extent, S),
    takes_into_account(D, geographical_characteristics(S)),
    takes_into_account(D, contextual_characteristics(S)),
    takes_into_account(D, behavioural_characteristics(S)),
    takes_into_account(D, functional_characteristics(S)).

% Additional supporting predicates
:- pred uses_training_techniques/1, gloss('AI system uses techniques involving training of AI models with data'), source('celex:32024R1689/oj#art_10/par_1').
:- pred training_validation_testing_data_sets_used/2, gloss('data sets used for training, validation and testing'), source('celex:32024R1689/oj#art_10').
:- pred meets_quality_criteria/1, gloss('data set meets quality criteria referred to in paragraphs 2-5'), source('celex:32024R1689/oj#art_10').
:- pred data_governance_practices_appropriate/2, gloss('data governance practices are appropriate for intended purpose'), source('celex:32024R1689/oj#art_10/par_2').
:- pred relevant/1, gloss('data sets are relevant to intended purpose'), source('celex:32024R1689/oj#art_10/par_3').
:- pred sufficiently_representative/1, gloss('data sets are sufficiently representative'), source('celex:32024R1689/oj#art_10/par_3').
:- pred free_of_errors/1, gloss('data sets are free of errors to best extent possible'), source('celex:32024R1689/oj#art_10/par_3').
:- pred complete/1, gloss('data sets are complete to best extent possible'), source('celex:32024R1689/art_10/par_3').
:- pred appropriate_statistical_properties/1, gloss('data sets have appropriate statistical properties'), source('celex:32024R1689/oj#art_10/par_3').
:- pred appropriate_statistical_properties_for_persons_or_groups/2, gloss('statistical properties appropriate for intended persons or groups'), source('celex:32024R1689/oj#art_10/par_3').
:- pred to_best_extent_possible/1, gloss('requirement applies to best extent possible'), source('celex:32024R1689/oj#art_10/par_3').
:- pred takes_into_account/2, gloss('data sets take into account specific characteristics'), source('celex:32024R1689/oj#art_10/par_4').
:- pred required_by_intended_purpose/2, gloss('requirement extent determined by intended purpose'), source('celex:32024R1689/oj#art_10/par_4').
:- pred geographical_characteristics/1, gloss('geographical characteristics of intended use setting'), source('celex:32024R1689/oj#art_10/par_4').
:- pred contextual_characteristics/1, gloss('contextual characteristics of intended use setting'), source('celex:32024R1689/oj#art_10/par_4').
:- pred behavioural_characteristics/1, gloss('behavioural characteristics of intended use setting'), source('celex:32024R1689/oj#art_10/par_4').
:- pred functional_characteristics/1, gloss('functional characteristics of intended use setting'), source('celex:32024R1689/oj#art_10/par_4').
:- pred strictly_necessary_for/2, gloss('processing strictly necessary for specified purpose'), source('celex:32024R1689/oj#art_10/par_5').
:- pred effectively_fulfilled_by_other_data/2, gloss('purpose can be fulfilled by other data including synthetic or anonymised'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_a').
:- pred special_categories_processed/2, gloss('provider processes special categories of personal data for system'), source('celex:32024R1689/oj#art_10/par_5').
:- pred technical_limitations_on_reuse/1, gloss('technical limitations on re-use of personal data'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_b').
:- pred state_of_the_art_security_measures/1, gloss('state-of-the-art security measures applied'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_b').
:- pred privacy_preserving_measures/1, gloss('privacy-preserving measures applied'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_b').
:- pred pseudonymisation/1, gloss('pseudonymisation applied to data'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_b').
:- pred secured/1, gloss('personal data are secured'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
:- pred protected/1, gloss('personal data are protected'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
:- pred suitable_safeguards/1, gloss('suitable safeguards in place'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
:- pred strict_controls/1, gloss('strict controls on access'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
:- pred documentation_of_access/1, gloss('access is documented'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
:- pred only_authorised_persons_access/1, gloss('only authorised persons have access'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
:- pred confidentiality_obligations/1, gloss('appropriate confidentiality obligations in place'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
:- pred transmitted/1, gloss('data are transmitted'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_d').
:- pred transferred/1, gloss('data are transferred'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_d').
:- pred accessed_by_other_parties/1, gloss('data are accessed by other parties'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_d').
:- pred deleted_once/2, gloss('data are deleted once condition met'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_e').
:- pred records_of_processing_activities_include/2, gloss('records include specified information'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_f').
:- pred reasons_strictly_necessary/1, gloss('reasons why processing was strictly necessary'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_f').
:- pred reasons_other_data_insufficient/1, gloss('reasons why objective could not be achieved with other data'), source('celex:32024R1689/oj#art_10/par_5/unp_1/pnt_f').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_6').

% Provenance facts
provenance(required_data_quality_criteria/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_relevance_representativeness/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_contextual_appropriateness/1, 'celex:32024R1689/oj#art_10').
provenance(permitted_special_category_processing/2, 'celex:32024R1689/oj#art_10').
provenance(required_testing_data_only/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_governance_for_testing/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_relevance_representativeness_for_testing/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_contextual_appropriateness_for_testing/1, 'celex:32024R1689/oj#art_10').
provenance(uses_training_techniques/1, 'celex:32024R1689/oj#art_10').
provenance(training_validation_testing_data_sets_used/2, 'celex:32024R1689/oj#art_10').
provenance(meets_quality_criteria/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practices_appropriate/2, 'celex:32024R1689/oj#art_10').
provenance(relevant/1, 'celex:32024R1689/oj#art_10').
provenance(sufficiently_representative/1, 'celex:32024R1689/oj#art_10').
provenance(free_of_errors/1, 'celex:32024R1689/oj#art_10').
provenance(complete/1, 'celex:32024R1689/oj#art_10').
provenance(appropriate_statistical_properties/1, 'celex:32024R1689/oj#art_10').
provenance(appropriate_statistical_properties_for_persons_or_groups/2, 'celex:32024R1689/oj#art_10').
provenance(to_best_extent_possible/1, 'celex:32024R1689/oj#art_10').
provenance(takes_into_account/2, 'celex:32024R1689/oj#art_10').
provenance(required_by_intended_purpose/2, 'celex:32024R1689/oj#art_10').
provenance(geographical_characteristics/1, 'celex:32024R1689/oj#art_10').
provenance(contextual_characteristics/1, 'celex:32024R1689/oj#art_10').
provenance(behavioural_characteristics/1, 'celex:32024R1689/oj#art_10').
provenance(functional_characteristics/1, 'celex:32024R1689/oj#art_10').
provenance(strictly_necessary_for/2, 'celex:32024R1689/oj#art_10').
provenance(effectively_fulfilled_by_other_data/2, 'celex:32024R1689/oj#art_10').
provenance(special_categories_processed/2, 'celex:32024R1689/oj#art_10').
provenance(technical_limitations_on_reuse/1, 'celex:32024R1689/oj#art_10').
provenance(state_of_the_art_security_measures/1, 'celex:32024R1689/oj#art_10').
provenance(privacy_preserving_measures/1, 'celex:32024R1689/oj#art_10').
provenance(pseudonymisation/1, 'celex:32024R1689/oj#art_10').
provenance(secured/1, 'celex:32024R1689/oj#art_10').
provenance(protected/1, 'celex:32024R1689/oj#art_10').
provenance(suitable_safeguards/1, 'celex:32024R1689/oj#art_10').
provenance(strict_controls/1, 'celex:32024R1689/oj#art_10').
provenance(documentation_of_access/1, 'celex:32024R1689/oj#art_10').
provenance(only_authorised_persons_access/1, 'celex:32024R1689/oj#art_10').
provenance(confidentiality_obligations/1, 'celex:32024R1689/oj#art_10').
provenance(transmitted/1, 'celex:32024R1689/oj#art_10').
provenance(transferred/1, 'celex:32024R1689/oj#art_10').
provenance(accessed_by_other_parties/1, 'celex:32024R1689/oj#art_10').
provenance(deleted_once/2, 'celex:32024R1689/oj#art_10').
provenance(records_of_processing_activities_include/2, 'celex:32024R1689/oj#art_10').
provenance(reasons_strictly_necessary/1, 'celex:32024R1689/oj#art_10').
provenance(reasons_other_data_insufficient/1, 'celex:32024R1689/oj#art_10').

% References from the provision
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_3').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g').
references('celex:32024R1689/oj#art_10', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_10', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_10', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_3').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_5').
