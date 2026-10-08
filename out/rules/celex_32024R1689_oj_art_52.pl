% unit       : celex:32024R1689/oj#art_52
% title      : Procedure
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d34192fee5a019151e8559f8fa27a60c95eb1ddcc717c53e07535256c5400c55
% model      : gpt-oss:120b-cloud
% prompt sha : ff4a16c4edba88246013c92b5af4398b6bf61fdd9166d1b39ea07f486189ffae
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred condition_art_51_par_1_unp_1_pnt_a_applies/1, gloss('condition referred to in art 51 para 1 unp 1 pnt a'), source('celex:32024R1689/oj#art_52').
:- pred provides_model/2, gloss('provider provides a general‑purpose AI model'), source('celex:32024R1689/oj#art_52').
:- pred must_notify/2, gloss('commission must be notified about a model'), source('celex:32024R1689/oj#art_52').
:- pred permitted_present_arguments/2, gloss('provider may present arguments with its notification'), source('celex:32024R1689/oj#art_52').
:- pred arguments_not_sufficiently_substantiated/2, gloss('arguments are not sufficiently substantiated'), source('celex:32024R1689/oj#art_52').
:- pred provider_unable_to_demonstrate/2, gloss('provider unable to demonstrate lack of systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred systemic_risk_applies/1, gloss('model is considered to present systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred criteria_set_in_annex_13_applies/1, gloss('criteria set out in annex 13 apply to the model'), source('celex:32024R1689/oj#art_52').
:- pred permitted_designate_systemic_risk/2, gloss('commission may designate a model as presenting systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred reasoned_request/2, gloss('provider makes a reasoned request for reassessment'), source('celex:32024R1689/oj#art_52').
:- pred must_take_request_into_account/3, gloss('commission shall take the provider\'s request into account'), source('celex:32024R1689/oj#art_52').
:- pred permitted_reassess/2, gloss('commission may reassess the systemic‑risk classification'), source('celex:32024R1689/oj#art_52').
:- pred must_publish_list/1, gloss('commission shall ensure a list of systemic‑risk models is published'), source('celex:32024R1689/oj#art_52').
:- pred must_keep_list_up_to_date/1, gloss('commission shall keep the list up to date'), source('celex:32024R1689/oj#art_52').

% Relationships
provides_model(P, M) :-
    provider(P),
    general_purpose_ai_model(M).

% Obligations and permissions
must_notify(commission, M) :-
    condition_art_51_par_1_unp_1_pnt_a_applies(M),
    provides_model(P, M),
    provider(P).

permitted_present_arguments(P, M) :-
    condition_art_51_par_1_unp_1_pnt_a_applies(M),
    provides_model(P, M).

must_reject_arguments(commission, P, M) :-
    arguments_not_sufficiently_substantiated(P, M),
    provider_unable_to_demonstrate(P, M),
    provides_model(P, M).

systemic_risk_applies(M) :-
    must_reject_arguments(commission, _, M).

permitted_designate_systemic_risk(commission, M) :-
    criteria_set_in_annex_13_applies(M).

must_take_request_into_account(commission, P, M) :-
    reasoned_request(P, M),
    provides_model(P, M).

permitted_reassess(commission, M) :-
    reasoned_request(P, M),
    provides_model(P, M).

must_publish_list(commission).

must_keep_list_up_to_date(commission).

% Provenance
provenance(condition_art_51_par_1_unp_1_pnt_a_applies/1, 'celex:32024R1689/oj#art_52').
provenance(provides_model/2, 'celex:32024R1689/oj#art_52').
provenance(must_notify/2, 'celex:32024R1689/oj#art_52').
provenance(permitted_present_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(arguments_not_sufficiently_substantiated/2, 'celex:32024R1689/oj#art_52').
provenance(provider_unable_to_demonstrate/2, 'celex:32024R1689/oj#art_52').
provenance(systemic_risk_applies/1, 'celex:32024R1689/oj#art_52').
provenance(criteria_set_in_annex_13_applies/1, 'celex:32024R1689/oj#art_52').
provenance(permitted_designate_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(reasoned_request/2, 'celex:32024R1689/oj#art_52').
provenance(must_take_request_into_account/3, 'celex:32024R1689/oj#art_52').
provenance(permitted_reassess/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish_list/1, 'celex:32024R1689/oj#art_52').
provenance(must_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_52').

% References
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').
