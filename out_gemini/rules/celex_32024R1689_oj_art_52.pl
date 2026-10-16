% unit       : celex:32024R1689/oj#art_52
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d34192fee5a019151e8559f8fa27a60c95eb1ddcc717c53e07535256c5400c55
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cde9f3c244d3af6657833ced69da06ee26944d4b5a85fb8fbcaa43f66c6cfcf3
% cached     : False
% title      : Procedure
:- pred meets_condition_art_51_1_a/1, gloss('General-purpose AI model meets condition of Article 51(1)(a)'), source('celex:32024R1689/oj#art_52').
:- pred provider_of/2, gloss('Entity is the provider of an AI model or system'), source('celex:32024R1689/oj#art_52').
:- pred must_notify/2, gloss('Party must notify an authority or body'), source('celex:32024R1689/oj#art_52').
:- pred permitted_designate/2, gloss('Entity is permitted to designate an AI model with systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred unnotified_systemic_risk/1, gloss('General-purpose AI model presents systemic risk but was not notified'), source('celex:32024R1689/oj#art_52').
:- pred permitted_present_arguments/2, gloss('Provider may present substantiated arguments that model lacks systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred arguments_sufficiently_substantiated/2, gloss('Arguments demonstrating lack of systemic risk are sufficiently substantiated'), source('celex:32024R1689/oj#art_52').
:- pred classified_with_systemic_risk/1, gloss('General-purpose AI model is classified or considered as model with systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred qualified_alert_scientific_panel/1, gloss('Qualified alert regarding general-purpose AI model issued by scientific panel'), source('celex:32024R1689/oj#art_52').
:- pred meets_annex_13_criteria/1, gloss('General-purpose AI model meets criteria set out in Annex XIII'), source('celex:32024R1689/oj#art_52').
:- pred permitted_request_reassessment/2, gloss('Provider may request reassessment of systemic risk designation'), source('celex:32024R1689/oj#art_52').
:- pred designated_under_paragraph_4/1, gloss('Model has been designated as model with systemic risk pursuant to paragraph 4'), source('celex:32024R1689/oj#art_52').
:- pred objective_detailed_new_reasons/1, gloss('Request contains objective detailed and new reasons arisen since designation'), source('celex:32024R1689/oj#art_52').
:- pred elapsed_since_decision/2, gloss('Time elapsed since designation or reassessment decision'), source('celex:32024R1689/oj#art_52').
:- pred permitted_reassess/2, gloss('Commission may decide to reassess systemic risk status of model'), source('celex:32024R1689/oj#art_52').
:- pred must_publish/2, gloss('Entity must publish and keep up to date a list'), source('celex:32024R1689/oj#art_52').

% Paragraph 1: Provider obligation to notify the Commission
must_notify(Provider, commission(meeting_condition(Model), within(weeks(2)))) :-
    provider(Provider),
    provider_of(Provider, Model),
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model).

% Paragraph 1: Commission may designate unnotified model
permitted_designate(commission, model_with_systemic_risk(Model)) :-
    general_purpose_ai_model(Model),
    unnotified_systemic_risk(Model).

% Paragraph 2: Provider may present arguments
permitted_present_arguments(Provider, model_without_systemic_risk(Model)) :-
    provider(Provider),
    provider_of(Provider, Model),
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model).

% Paragraph 3: Considered model with systemic risk if arguments not substantiated
classified_with_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    provider_of(Provider, Model),
    \+ arguments_sufficiently_substantiated(Provider, Model).

arguments_sufficiently_substantiated(Provider, Model) :-
    permitted_present_arguments(Provider, model_without_systemic_risk(Model)),
    \+ arguments_rejected(Provider, Model).

:- pred arguments_rejected/2, gloss('Commission rejected arguments regarding model systemic risk'), source('celex:32024R1689/oj#art_52').

% Paragraph 4: Designation based on Annex XIII ex officio or upon alert
permitted_designate(commission, model_with_systemic_risk(Model)) :-
    general_purpose_ai_model(Model),
    meets_annex_13_criteria(Model).

permitted_designate(commission, model_with_systemic_risk(Model)) :-
    general_purpose_ai_model(Model),
    qualified_alert_scientific_panel(Model),
    meets_annex_13_criteria(Model).

% Paragraph 5: Reassessment request conditions
permitted_request_reassessment(Provider, Model) :-
    provider(Provider),
    provider_of(Provider, Model),
    general_purpose_ai_model(Model),
    designated_under_paragraph_4(Model),
    objective_detailed_new_reasons(Model),
    elapsed_since_decision(Model, at_least(months(6))).

permitted_reassess(commission, Model) :-
    permitted_request_reassessment(Provider, Model),
    meets_annex_13_criteria(Model).

% Paragraph 6: Commission publishes and updates list of models with systemic risk
must_publish(commission, list(general_purpose_ai_models_with_systemic_risk)).

provenance(must_notify/2, 'celex:32024R1689/oj#art_52').
provenance(permitted_designate/2, 'celex:32024R1689/oj#art_52').
provenance(permitted_present_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(classified_with_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(arguments_sufficiently_substantiated/2, 'celex:32024R1689/oj#art_52').
provenance(permitted_request_reassessment/2, 'celex:32024R1689/oj#art_52').
provenance(permitted_reassess/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish/2, 'celex:32024R1689/oj#art_52').

references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').
