% unit       : celex:32024R1689/oj#art_101
% title      : Fines for providers of general-purpose AI models
% context    : CHAPTER XII PENALTIES
% slice sha  : 863289a44e0acab966ec52ddef65337536e6a1882b1d01e8499a22a251ca916c
% model      : gpt-oss:120b-cloud
% prompt sha : 028d90200c0a0272000ffcefdd067eb833d1c997b508451acc5f5e2f16868384
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred provider_of_general_purpose_ai_model/1, gloss('provider of a general‑purpose AI model'), source('celex:32024R1689/oj#art_101').
:- pred infringed_relevant_provisions/1, gloss('provider infringed relevant provisions of the Regulation'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_request/1, gloss('provider failed to comply with a request for documents or information'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_measure/1, gloss('provider failed to comply with a measure requested by the Commission'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_make_available_model/1, gloss('provider failed to make the general‑purpose AI model available for evaluation'), source('celex:32024R1689/oj#art_101').
:- pred infringement_intentional_or_negligent/1, gloss('the Commission finds that the provider acted intentionally or negligently'), source('celex:32024R1689/oj#art_101').
:- pred permitted_fine/3, gloss('the Commission may impose a fine on the provider'), source('celex:32024R1689/oj#art_101').
:- pred fine_cap/2, gloss('maximum fine amount applicable to the provider'), source('celex:32024R1689/oj#art_101').
:- pred turnover/2, gloss('annual total worldwide turnover of the provider in the preceding financial year'), source('celex:32024R1689/oj#art_101').
:- pred must_communicate_preliminary_findings/2, gloss('the Commission shall communicate its preliminary findings to the provider'), source('celex:32024R1689/oj#art_101').
:- pred must_adopt_implementing_acts/1, gloss('the Commission shall adopt implementing acts with procedural safeguards'), source('celex:32024R1689/oj#art_101').

provider_of_general_purpose_ai_model(P) :-
    provider(P).

infringed_relevant_provisions(P) :-
    provider(P).

failed_to_comply_request(P) :-
    provider(P).

failed_to_comply_measure(P) :-
    provider(P).

failed_to_make_available_model(P) :-
    provider(P).

infringement_intentional_or_negligent(P) :-
    infringed_relevant_provisions(P).
infringement_intentional_or_negligent(P) :-
    failed_to_comply_request(P).
infringement_intentional_or_negligent(P) :-
    failed_to_comply_measure(P).
infringement_intentional_or_negligent(P) :-
    failed_to_make_available_model(P).

fine_cap(P, Fine) :-
    turnover(P, Turnover),
    Percent is Turnover * 0.03,
    (   Percent >= 15000000
    ->  Fine = Percent
    ;   Fine = 15000000
    ).

permitted_fine(_Commission, P, Fine) :-
    provider_of_general_purpose_ai_model(P),
    infringement_intentional_or_negligent(P),
    fine_cap(P, Fine).

must_communicate_preliminary_findings(_Commission, P) :-
    provider_of_general_purpose_ai_model(P).

must_adopt_implementing_acts(_Commission) :-
    true.

% Provenance
provenance(provider_of_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_101').
provenance(infringed_relevant_provisions/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_request/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_measure/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_make_available_model/1, 'celex:32024R1689/oj#art_101').
provenance(infringement_intentional_or_negligent/1, 'celex:32024R1689/oj#art_101').
provenance(permitted_fine/3, 'celex:32024R1689/oj#art_101').
provenance(fine_cap/2, 'celex:32024R1689/oj#art_101').
provenance(turnover/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(must_adopt_implementing_acts/1, 'celex:32024R1689/oj#art_101').

% References
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').
