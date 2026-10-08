% unit       : celex:32024R1689/oj#art_52
% title      : Procedure
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d34192fee5a019151e8559f8fa27a60c95eb1ddcc717c53e07535256c5400c55
% model      : gpt-oss:120b-cloud
% prompt sha : 131aef5c2b105e43425f3b163d2c41c6ac85a8853eac450e5ce769ecbef2ae08
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred condition_applies/1, gloss('condition referred to in art 51 paragraph 1'), source('celex:32024R1689/oj#art_52').
:- pred required_notification/2, gloss('provider must notify the Commission'), source('celex:32024R1689/oj#art_52').
:- pred permitted_present_arguments/2, gloss('provider may present arguments to demonstrate no systemic risk'), source('celex:32024R1689/oj#art_52').
:- pred arguments_not_substantiated/1, gloss('Commission concludes arguments are not sufficiently substantiated'), source('celex:32024R1689/oj#art_52').
:- pred permitted_designate_systemic_risk/2, gloss('Commission may designate a model as presenting systemic risks'), source('celex:32024R1689/oj#art_52').
:- pred must_publish_list/1, gloss('Commission shall publish the list of systemic‑risk models'), source('celex:32024R1689/oj#art_52').
:- pred must_keep_list_up_to_date/1, gloss('Commission shall keep the list up to date'), source('celex:32024R1689/oj#art_52').
:- pred must_take_request_into_account/3, gloss('Commission shall take a provider\'s reasoned request into account'), source('celex:32024R1689/oj#art_52').
:- pred permitted_reassess/2, gloss('Commission may reassess a designated systemic‑risk model'), source('celex:32024R1689/oj#art_52').
:- pred reasoned_request/2, gloss('provider makes a reasoned request for reassessment'), source('celex:32024R1689/oj#art_52').
:- pred six_months_elapsed_since_designation/1, gloss('six months have elapsed since the designation decision'), source('celex:32024R1689/oj#art_52').

required_notification(commission, M) :-
    provider(_P),
    general_purpose_ai_model(M),
    condition_applies(M).

permitted_present_arguments(P, M) :-
    provider(P),
    provider(P),
    general_purpose_ai_model(M),
    condition_applies(M).

systemic_risk(M) :-
    general_purpose_ai_model(M),
    condition_applies(M),
    arguments_not_substantiated(M).

permitted_designate_systemic_risk(commission, M) :-
    general_purpose_ai_model(M),
    condition_applies(M).

must_publish_list(commission).

must_keep_list_up_to_date(commission).

must_take_request_into_account(commission, P, M) :-
    provider(P),
    provider(P),
    systemic_risk(M),
    reasoned_request(P, M).

permitted_reassess(commission, M) :-
    provider(P),
    provider(P),
    systemic_risk(M),
    reasoned_request(P, M),
    six_months_elapsed_since_designation(M).

provenance(required_notification/2, 'celex:32024R1689/oj#art_52').
provenance(permitted_present_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(permitted_designate_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish_list/1, 'celex:32024R1689/oj#art_52').
provenance(must_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_52').
provenance(must_take_request_into_account/3, 'celex:32024R1689/oj#art_52').
provenance(permitted_reassess/2, 'celex:32024R1689/oj#art_52').

references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').
