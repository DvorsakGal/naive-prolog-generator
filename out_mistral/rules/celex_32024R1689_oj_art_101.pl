% unit       : celex:32024R1689/oj#art_101
% context    : CHAPTER XII PENALTIES
% slice sha  : 863289a44e0acab966ec52ddef65337536e6a1882b1d01e8499a22a251ca916c
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8ece8aa133d042f643983e144c6a824bcb09583060c7fe8eb276aa3cee752e10
% cached     : False
% title      : Fines for providers of general-purpose AI models
:- pred fine_imposed_on_provider/2, gloss('Commission imposes a fine on a provider of a general-purpose AI model'), source('celex:32024R1689/oj#art_101').
:- pred fine_amount/2, gloss('amount of a fine imposed on a provider'), source('celex:32024R1689/oj#art_101').
:- pred fine_exceeds/2, gloss('fine exceeds a threshold amount'), source('celex:32024R1689/oj#art_101').
:- pred annual_total_worldwide_turnover/2, gloss('annual total worldwide turnover of an entity in a financial year'), source('celex:32024R1689/oj#art_101').
:- pred preceding_financial_year/1, gloss('financial year preceding the current one'), source('celex:32024R1689/oj#art_101').
:- pred commission_finding/2, gloss('Commission finding of intentional or negligent infringement by a provider'), source('celex:32024R1689/oj#art_101').
:- pred intentional_or_negligent/1, gloss('infringement committed intentionally or negligently'), source('celex:32024R1689/oj#art_101').
:- pred infringed_regulation/1, gloss('provider infringed relevant provisions of the regulation'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_with_request/2, gloss('provider failed to comply with a Commission request for document or information'), source('celex:32024R1689/oj#art_101').
:- pred supplied_incorrect_information/1, gloss('provider supplied incorrect, incomplete or misleading information'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_with_measure/2, gloss('provider failed to comply with a measure requested by the Commission'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_make_available_access/2, gloss('provider failed to make available access to the general-purpose AI model for evaluation'), source('celex:32024R1689/oj#art_101').
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general-purpose AI model with systemic risk'), source('celex:32024R1689/oj#art_101').
:- pred evaluation_pursuant_to/2, gloss('evaluation conducted pursuant to a specific article'), source('celex:32024R1689/oj#art_101').
:- pred fixing_fine_amount/2, gloss('Commission fixes fine amount taking into account specified factors'), source('celex:32024R1689/oj#art_101').
:- pred nature_gravity_duration/1, gloss('nature, gravity and duration of the infringement'), source('celex:32024R1689/oj#art_101').
:- pred proportionality_and_appropriateness/1, gloss('principles of proportionality and appropriateness'), source('celex:32024R1689/oj#art_101').
:- pred commitments_made/2, gloss('commitments made by the provider in accordance with specified provisions'), source('celex:32024R1689/oj#art_101').
:- pred codes_of_practice/1, gloss('relevant codes of practice'), source('celex:32024R1689/oj#art_101').
:- pred preliminary_findings_communicated/2, gloss('Commission communicates preliminary findings to the provider'), source('celex:32024R1689/oj#art_101').
:- pred opportunity_to_be_heard/1, gloss('provider given opportunity to be heard'), source('celex:32024R1689/oj#art_101').
:- pred fine_effective_proportionate_dissuasive/1, gloss('fine is effective, proportionate and dissuasive'), source('celex:32024R1689/oj#art_101').
:- pred fine_information_communicated_to_board/1, gloss('information on fine communicated to the Board'), source('celex:32024R1689/oj#art_101').
:- pred unlimited_jurisdiction_to_review/2, gloss('Court of Justice has unlimited jurisdiction to review Commission decisions'), source('celex:32024R1689/oj#art_101').
:- pred may_cancel_reduce_or_increase/2, gloss('Court may cancel, reduce or increase the fine'), source('celex:32024R1689/oj#art_101').
:- pred implementing_acts_adopted/1, gloss('Commission adopts implementing acts with detailed arrangements'), source('celex:32024R1689/oj#art_101').
:- pred detailed_arrangements_and_procedural_safeguards/1, gloss('detailed arrangements and procedural safeguards for proceedings'), source('celex:32024R1689/oj#art_101').
:- pred examination_procedure/1, gloss('examination procedure referred to in Article 98(2)'), source('celex:32024R1689/oj#art_101').

% Article 101(1) - Commission may impose fines on providers of general-purpose AI models
fine_imposed_on_provider(Fine, Provider) :-
    provider(Provider),
    general_purpose_ai_model(_Model),
    commission_finding(Finding, Provider),
    intentional_or_negligent(Finding),
    fine_amount(Fine, Provider).

% Grounds for Commission finding: (a) infringed the regulation
commission_finding(finding(infringed_regulation), Provider) :-
    provider(Provider),
    infringed_regulation(Provider).

% Grounds for Commission finding: (b) failed to comply with request or supplied incorrect information
commission_finding(finding(failed_to_comply_with_request(Request)), Provider) :-
    provider(Provider),
    failed_to_comply_with_request(Provider, Request).

commission_finding(finding(supplied_incorrect_information), Provider) :-
    provider(Provider),
    supplied_incorrect_information(Provider).

% Grounds for Commission finding: (c) failed to comply with a measure
commission_finding(finding(failed_to_comply_with_measure(Measure)), Provider) :-
    provider(Provider),
    failed_to_comply_with_measure(Provider, Measure).

% Grounds for Commission finding: (d) failed to make available access for evaluation
commission_finding(finding(failed_to_make_available_access(Model)), Provider) :-
    provider(Provider),
    failed_to_make_available_access(Provider, Model).

% Fine amount: not exceeding 3% of annual total worldwide turnover or EUR 15,000,000, whichever is higher
fine_amount(Fine, Provider) :-
    annual_total_worldwide_turnover(Provider, Turnover),
    preceding_financial_year(Year),
    Fine = max(percent(3, Turnover), eur(15000000)).

% The Commission fixes the amount taking into account nature, gravity, duration, proportionality, appropriateness, and commitments
fixing_fine_amount(Commission, Fine) :-
    nature_gravity_duration(Infringement),
    proportionality_and_appropriateness(Principles),
    commitments_made(Provider, Commitments),
    codes_of_practice(Codes).

% Article 101(2) - Before adopting decision, Commission shall communicate preliminary findings and give opportunity to be heard
preliminary_findings_communicated(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(_Model).

opportunity_to_be_heard(Provider) :-
    provider(Provider),
    general_purpose_ai_model(_Model).

% Article 101(3) - Fines shall be effective, proportionate and dissuasive
fine_effective_proportionate_dissuasive(Fine) :-
    fine_imposed_on_provider(Fine, _Provider).

% Article 101(4) - Information on fines shall be communicated to the Board
fine_information_communicated_to_board(Fine) :-
    fine_imposed_on_provider(Fine, _Provider).

% Article 101(5) - Court of Justice has unlimited jurisdiction to review, may cancel, reduce or increase
unlimited_jurisdiction_to_review(court_of_justice_of_the_european_union, Fine) :-
    fine_imposed_on_provider(Fine, _Provider).

may_cancel_reduce_or_increase(court_of_justice_of_the_european_union, Fine) :-
    fine_imposed_on_provider(Fine, _Provider).

% Article 101(6) - Commission shall adopt implementing acts
implementing_acts_adopted(Commission) :-
    detailed_arrangements_and_procedural_safeguards(Arrangements),
    examination_procedure(Procedure).

% Helper: general-purpose AI model with systemic risk
general_purpose_ai_model_with_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(Model).

% Helper: evaluation pursuant to Article 92
evaluation_pursuant_to(Model, art_92) :-
    general_purpose_ai_model(Model).

evaluation_pursuant_to(Model, art_92) :-
    general_purpose_ai_model_with_systemic_risk(Model).

% Provenance
provenance(fine_imposed_on_provider/2, 'celex:32024R1689/oj#art_101').
provenance(fine_amount/2, 'celex:32024R1689/oj#art_101').
provenance(fine_exceeds/2, 'celex:32024R1689/oj#art_101').
provenance(annual_total_worldwide_turnover/2, 'celex:32024R1689/oj#art_101').
provenance(preceding_financial_year/1, 'celex:32024R1689/oj#art_101').
provenance(commission_finding/2, 'celex:32024R1689/oj#art_101').
provenance(intentional_or_negligent/1, 'celex:32024R1689/oj#art_101').
provenance(infringed_regulation/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_with_request/2, 'celex:32024R1689/oj#art_101').
provenance(supplied_incorrect_information/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_with_measure/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_make_available_access/2, 'celex:32024R1689/oj#art_101').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_101').
provenance(evaluation_pursuant_to/2, 'celex:32024R1689/oj#art_101').
provenance(fixing_fine_amount/2, 'celex:32024R1689/oj#art_101').
provenance(nature_gravity_duration/1, 'celex:32024R1689/oj#art_101').
provenance(proportionality_and_appropriateness/1, 'celex:32024R1689/oj#art_101').
provenance(commitments_made/2, 'celex:32024R1689/oj#art_101').
provenance(codes_of_practice/1, 'celex:32024R1689/oj#art_101').
provenance(preliminary_findings_communicated/2, 'celex:32024R1689/oj#art_101').
provenance(opportunity_to_be_heard/1, 'celex:32024R1689/oj#art_101').
provenance(fine_effective_proportionate_dissuasive/1, 'celex:32024R1689/oj#art_101').
provenance(fine_information_communicated_to_board/1, 'celex:32024R1689/oj#art_101').
provenance(unlimited_jurisdiction_to_review/2, 'celex:32024R1689/oj#art_101').
provenance(may_cancel_reduce_or_increase/2, 'celex:32024R1689/oj#art_101').
provenance(implementing_acts_adopted/1, 'celex:32024R1689/oj#art_101').
provenance(detailed_arrangements_and_procedural_safeguards/1, 'celex:32024R1689/oj#art_101').
provenance(examination_procedure/1, 'celex:32024R1689/oj#art_101').

% References
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').
