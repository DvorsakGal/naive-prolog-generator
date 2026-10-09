% unit       : celex:32024R1689/oj#art_101
% context    : CHAPTER XII PENALTIES
% slice sha  : 863289a44e0acab966ec52ddef65337536e6a1882b1d01e8499a22a251ca916c
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8591061685f2a806b7dc9ba3a96f5c3401e3e416f8559446a48cfe4171336fad
% cached     : False
% title      : Fines for providers of general-purpose AI models
:- pred provides_general_purpose_ai_model/1, gloss('provider supplies a general‑purpose AI model'), source('celex:32024R1689/oj#art_101').
:- pred commission_finds_intentional_or_negligent/2, gloss('Commission finds provider acted intentionally or negligently'), source('celex:32024R1689/oj#art_101').
:- pred infringed_provision/2, gloss('provider infringed a provision of the regulation'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_request/2, gloss('provider failed to comply with a request for document or information'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_measure/2, gloss('provider failed to comply with a requested measure'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_make_available_model/2, gloss('provider failed to make available the model for Commission evaluation'), source('celex:32024R1689/oj#art_101').
:- pred must_communicate_preliminary_findings/2, gloss('Commission must communicate its preliminary findings to the provider'), source('celex:32024R1689/oj#art_101').
:- pred must_give_opportunity_to_be_heard/2, gloss('Commission must give the provider an opportunity to be heard'), source('celex:32024R1689/oj#art_101').

% Permission to impose a fine
permitted_impose_fine(Commission, Provider) :-
    provider(Provider),
    provides_general_purpose_ai_model(Provider),
    commission_finds_intentional_or_negligent(Provider, Reason),
    (   Reason = infringement
    ;   Reason = request_noncompliance
    ;   Reason = measure_noncompliance
    ;   Reason = access_denial
    ).

% Reasons for the Commission's finding
commission_finds_intentional_or_negligent(Provider, infringement) :-
    infringed_provision(Provider, _).

commission_finds_intentional_or_negligent(Provider, request_noncompliance) :-
    failed_to_comply_request(Provider, _).

commission_finds_intentional_or_negligent(Provider, measure_noncompliance) :-
    failed_to_comply_measure(Provider, _).

commission_finds_intentional_or_negligent(Provider, access_denial) :-
    failed_to_make_available_model(Provider, _).

% Duties of the Commission
must_communicate_preliminary_findings(_Commission, Provider) :-
    provider(Provider),
    provides_general_purpose_ai_model(Provider).

must_give_opportunity_to_be_heard(_Commission, Provider) :-
    provider(Provider),
    provides_general_purpose_ai_model(Provider).

% Provenance
provenance(permitted_impose_fine/2, 'celex:32024R1689/oj#art_101').
provenance(commission_finds_intentional_or_negligent/2, 'celex:32024R1689/oj#art_101').
provenance(infringed_provision/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_request/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_measure/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_make_available_model/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_101').

% References (deduplicated)
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').
