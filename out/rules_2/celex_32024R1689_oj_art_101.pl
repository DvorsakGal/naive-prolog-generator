% unit       : celex:32024R1689/oj#art_101
% title      : Fines for providers of general-purpose AI models
% context    : CHAPTER XII PENALTIES
% slice sha  : 863289a44e0acab966ec52ddef65337536e6a1882b1d01e8499a22a251ca916c
% model      : gpt-oss:120b-cloud
% prompt sha : 0b5c776eaa51cb2a8f56bb40b96468966a0dc6821445fcc9af4f9083365dd595
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred provides_general_purpose_ai_model/2, gloss('provider provides a general‑purpose AI model'), source('celex:32024R1689/oj#art_101').
:- pred commission_finds_intentional_or_negligent_infringement/1, gloss('commission finds that the provider acted intentionally or negligently'), source('celex:32024R1689/oj#art_101').
:- pred infringement_a/1, gloss('provider infringed the relevant provisions of the Regulation'), source('celex:32024R1689/oj#art_101').
:- pred infringement_b/1, gloss('provider failed to comply with a request for a document or information or supplied incorrect, incomplete or misleading information'), source('celex:32024R1689/oj#art_101').
:- pred infringement_c/1, gloss('provider failed to comply with a measure requested by the Commission'), source('celex:32024R1689/oj#art_101').
:- pred infringement_d/1, gloss('provider failed to make available the general‑purpose AI model or model with systemic risk for evaluation'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_with_request/2, gloss('provider failed to comply with a request for a document or information'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_with_measure/1, gloss('provider failed to comply with a measure requested by the Commission'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_make_available_model/1, gloss('provider failed to make available the AI model for Commission evaluation'), source('celex:32024R1689/oj#art_101').
:- pred permitted_fine_imposition/2, gloss('Commission may impose a fine on a provider of a general‑purpose AI model'), source('celex:32024R1689/oj#art_101').
:- pred required_fine_not_exceeding_limit/2, gloss('fine must not exceed 3 % of annual worldwide turnover or EUR 15 000 000, whichever is higher'), source('celex:32024R1689/oj#art_101').
:- pred must_communicate_preliminary_findings/2, gloss('Commission shall communicate preliminary findings to the provider before adopting a decision'), source('celex:32024R1689/oj#art_101').
:- pred required_fine_characteristics/1, gloss('fines shall be effective, proportionate and dissuasive'), source('celex:32024R1689/oj#art_101').
:- pred must_communicate_fine_information/3, gloss('information on fines shall be communicated to the Board'), source('celex:32024R1689/oj#art_101').
:- pred must_have_unlimited_jurisdiction/2, gloss('Court of Justice shall have unlimited jurisdiction to review Commission fine decisions'), source('celex:32024R1689/oj#art_101').
:- pred must_adopt_implementing_acts/2, gloss('Commission shall adopt implementing acts containing detailed arrangements and procedural safeguards'), source('celex:32024R1689/oj#art_101').

provides_general_purpose_ai_model(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).

provenance(provides_general_purpose_ai_model/2, 'celex:32024R1689/oj#art_101').

commission_finds_intentional_or_negligent_infringement(Provider) :-
    infringement_a(Provider) ;
    infringement_b(Provider) ;
    infringement_c(Provider) ;
    infringement_d(Provider).

provenance(commission_finds_intentional_or_negligent_infringement/1, 'celex:32024R1689/oj#art_101').

infringement_a(Provider) :-
    provider(Provider),
    intentional_or_negligent(Provider),
    infringed_relevant_provisions(Provider).

provenance(infringement_a/1, 'celex:32024R1689/oj#art_101').

infringement_b(Provider) :-
    provider(Provider),
    intentional_or_negligent(Provider),
    failed_to_comply_with_request(Provider, document_or_information).

provenance(infringement_b/1, 'celex:32024R1689/oj#art_101').

infringement_c(Provider) :-
    provider(Provider),
    intentional_or_negligent(Provider),
    failed_to_comply_with_measure(Provider).

provenance(infringement_c/1, 'celex:32024R1689/oj#art_101').

infringement_d(Provider) :-
    provider(Provider),
    intentional_or_negligent(Provider),
    failed_to_make_available_model(Provider).

provenance(infringement_d/1, 'celex:32024R1689/oj#art_101').

permitted_fine_imposition(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides_general_purpose_ai_model(Provider, Model),
    commission_finds_intentional_or_negligent_infringement(Provider).

provenance(permitted_fine_imposition/2, 'celex:32024R1689/oj#art_101').

required_fine_not_exceeding_limit(Provider, Fine) :-
    provider(Provider),
    annual_total_worldwide_turnover(Provider, Turnover),
    Max1 is 0.03 * Turnover,
    ( Max1 > 15000000 -> Max = Max1 ; Max = 15000000 ),
    Fine =< Max.

provenance(required_fine_not_exceeding_limit/2, 'celex:32024R1689/oj#art_101').

must_communicate_preliminary_findings(_Commission, Provider) :-
    provider(Provider).

provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').

required_fine_characteristics(Fine) :-
    effective(Fine),
    proportionate(Fine),
    dissuasive(Fine).

provenance(required_fine_characteristics/1, 'celex:32024R1689/oj#art_101').

must_communicate_fine_information(_Commission, _Board, Fine) :-
    fine(Fine).

provenance(must_communicate_fine_information/3, 'celex:32024R1689/oj#art_101').

must_have_unlimited_jurisdiction(_Court, _Decision).

provenance(must_have_unlimited_jurisdiction/2, 'celex:32024R1689/oj#art_101').

must_adopt_implementing_acts(_Commission, Act) :-
    implementing_act(Act).

provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_101').

% References
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').
