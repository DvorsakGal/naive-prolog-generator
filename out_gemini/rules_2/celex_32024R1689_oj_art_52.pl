% unit       : celex:32024R1689/oj#art_52
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d34192fee5a019151e8559f8fa27a60c95eb1ddcc717c53e07535256c5400c55
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : c33dcbc5cc2360a6d0019a29588288c484f0649bc5f1e87c1eb36945950af7ba
% cached     : False
% title      : Procedure
:- pred meets_condition_art_51_1_a/1, gloss('General-purpose AI model meets condition of Article 51(1)(a)'), source('celex:32024R1689/oj#art_52').
:- pred provider_of_model/2, gloss('Entity is the provider of a specific general-purpose AI model'), source('celex:32024R1689/oj#art_52').
:- pred presents_systemic_risk/1, gloss('General-purpose AI model presents systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred notified_to_commission/1, gloss('General-purpose AI model has been notified to the Commission'), source('celex:32024R1689/oj#art_52').
:- pred permitted_designate_as_systemic_risk/2, gloss('Authority is permitted to designate an AI model as presenting systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred permitted_present_arguments_not_systemic_risk/2, gloss('Provider may present substantiated arguments that the model does not present systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred sufficiently_substantiated_exception_arguments/2, gloss('Provider submitted sufficiently substantiated arguments demonstrating model does not present systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred qualified_alert_from_scientific_panel/1, gloss('Scientific panel issued a qualified alert pursuant to Article 90(1)(a) for model'), source('celex:32024R1689/oj#art_52').
:- pred meets_annex_13_criteria/1, gloss('General-purpose AI model meets criteria in Annex XIII'), source('celex:32024R1689/oj#art_52').
:- pred designation_pursuant_to_par_4/1, gloss('Model was designated as general-purpose AI model with systemic risk pursuant to paragraph 4'), source('celex:32024R1689/oj#art_52').
:- pred permitted_request_reassessment/2, gloss('Provider may request reassessment of systemic risk designation'), source('celex:32024R1689/oj#art_52').
:- pred elapsed_since_designation_or_reassessment/2, gloss('Time elapsed since the designation decision or maintenance decision'), source('celex:32024R1689/oj#art_52').
:- pred contains_objective_detailed_new_reasons/1, gloss('Reassessment request contains objective, detailed and new reasons'), source('celex:32024R1689/oj#art_52').
:- pred permitted_reassess/2, gloss('Commission may decide to reassess designation of a general-purpose AI model'), source('celex:32024R1689/oj#art_52').
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('Model is classified/considered a general-purpose AI model with systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred must_notify/2, gloss('Actor must notify entity or object'), source('celex:32024R1689/oj#art_52').
:- pred must_publish/2, gloss('Actor must publish specified item'), source('celex:32024R1689/oj#art_52').

% Paragraph 1: Provider obligation to notify within two weeks
must_notify(Provider, notification(commission, Model, within(weeks(2)))) :-
    general_purpose_ai_model(Model),
    provider_of_model(Provider, Model),
    meets_condition_art_51_1_a(Model).

% Paragraph 1: Commission may designate unnotified model with systemic risk
permitted_designate_as_systemic_risk(Commission, Model) :-
    commission(Commission),
    general_purpose_ai_model(Model),
    presents_systemic_risk(Model),
    \+ notified_to_commission(Model).

% Paragraph 2: Provider may present substantiated arguments
permitted_present_arguments_not_systemic_risk(Provider, Model) :-
    general_purpose_ai_model(Model),
    provider_of_model(Provider, Model),
    meets_condition_art_51_1_a(Model).

% Paragraph 3: Rejection of arguments leads to classification as systemic risk
general_purpose_ai_model_with_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    \+ sufficiently_substantiated_exception_arguments(_Provider, Model).

% Paragraph 4: Ex officio designation or via qualified alert based on Annex XIII
permitted_designate_as_systemic_risk(Commission, Model) :-
    commission(Commission),
    general_purpose_ai_model(Model),
    meets_annex_13_criteria(Model).

permitted_designate_as_systemic_risk(Commission, Model) :-
    commission(Commission),
    general_purpose_ai_model(Model),
    qualified_alert_from_scientific_panel(Model),
    meets_annex_13_criteria(Model).

% Paragraph 5: Reassessment request conditions
permitted_request_reassessment(Provider, Model) :-
    provider_of_model(Provider, Model),
    designation_pursuant_to_par_4(Model),
    elapsed_since_designation_or_reassessment(Model, at_least(months(6))),
    contains_objective_detailed_new_reasons(Model).

% Paragraph 5: Commission may decide to reassess
permitted_reassess(Commission, Model) :-
    commission(Commission),
    permitted_request_reassessment(_Provider, Model).

% Paragraph 6: Commission must publish and maintain the list
must_publish(Commission, list_of_general_purpose_ai_models_with_systemic_risk) :-
    commission(Commission).

% Provenance facts
provenance(meets_condition_art_51_1_a/1, 'celex:32024R1689/oj#art_52').
provenance(provider_of_model/2, 'celex:32024R1689/oj#art_52').
provenance(presents_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(notified_to_commission/1, 'celex:32024R1689/oj#art_52').
provenance(permitted_designate_as_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(permitted_present_arguments_not_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(sufficiently_substantiated_exception_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(qualified_alert_from_scientific_panel/1, 'celex:32024R1689/oj#art_52').
provenance(meets_annex_13_criteria/1, 'celex:32024R1689/oj#art_52').
provenance(designation_pursuant_to_par_4/1, 'celex:32024R1689/oj#art_52').
provenance(permitted_request_reassessment/2, 'celex:32024R1689/oj#art_52').
provenance(elapsed_since_designation_or_reassessment/2, 'celex:32024R1689/oj#art_52').
provenance(contains_objective_detailed_new_reasons/1, 'celex:32024R1689/oj#art_52').
provenance(permitted_reassess/2, 'celex:32024R1689/oj#art_52').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(must_notify/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish/2, 'celex:32024R1689/oj#art_52').

% Cross-references
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').
