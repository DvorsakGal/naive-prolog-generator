% unit       : celex:32024R1689/oj#art_101
% context    : CHAPTER XII PENALTIES
% slice sha  : 863289a44e0acab966ec52ddef65337536e6a1882b1d01e8499a22a251ca916c
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3f0cb92446cf65e93ef9a698107d0f8d7c03bce6d420cd88c7667a3cef82662f
% cached     : False
% title      : Fines for providers of general-purpose AI models
:- pred may_impose_fine/2, gloss('Commission may impose a fine on a provider'), source('celex:32024R1689/oj#art_101').
:- pred fine_amount/2, gloss('maximum fine amount for a provider'), source('celex:32024R1689/oj#art_101').
:- pred infringement_nature/1, gloss('nature of the infringement for fine calculation'), source('celex:32024R1689/oj#art_101').
:- pred infringement_gravity/1, gloss('gravity of the infringement for fine calculation'), source('celex:32024R1689/art_101').
:- pred infringement_duration/1, gloss('duration of the infringement for fine calculation'), source('celex:32024R1689/oj#art_101').
:- pred must_communicate_preliminary_findings/2, gloss('Commission must communicate preliminary findings to provider before decision'), source('celex:32024R1689/oj#art_101').
:- pred must_give_opportunity_to_be_heard/2, gloss('Commission must give provider opportunity to be heard'), source('celex:32024R1689/oj#art_101').
:- pred fine_effective/1, gloss('fine must be effective'), source('celex:32024R1689/oj#art_101').
:- pred fine_proportionate/1, gloss('fine must be proportionate'), source('celex:32024R1689/oj#art_101').
:- pred fine_dissuasive/1, gloss('fine must be dissuasive'), source('celex:32024R1689/oj#art_101').
:- pred must_communicate_fines_to_board/1, gloss('information on fines must be communicated to the Board'), source('celex:32024R1689/oj#art_101').
:- pred court_unlimited_jurisdiction/1, gloss('Court of Justice has unlimited jurisdiction to review fine decisions'), source('celex:32024R1689/oj#art_101').
:- pred may_cancel_fine/2, gloss('Court of Justice may cancel a fine'), source('celex:32024R1689/oj#art_101').
:- pred may_reduce_fine/2, gloss('Court of Justice may reduce a fine'), source('celex:32024R1689/oj#art_101').
:- pred may_increase_fine/2, gloss('Court of Justice may increase a fine'), source('celex:32024R1689/oj#art_101').
:- pred must_adopt_implementing_acts/1, gloss('Commission must adopt implementing acts for procedural safeguards'), source('celex:32024R1689/oj#art_101').
:- pred implementing_acts_procedural_safeguards/1, gloss('implementing acts contain detailed arrangements and procedural safeguards'), source('celex:32024R1689/oj#art_101').

may_impose_fine(commission, P) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M),
    infringement_by_provider(P, _Infringement).

fine_amount(P, higher_of(percent(3, annual_total_worldwide_turnover_preceding_year), eur(15000000))) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M).

infringement_by_provider(P, infringed_relevant_provisions) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M),
    intentionally_or_negligently(P, infringed_relevant_provisions).

infringement_by_provider(P, failed_comply_request_document_information) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M),
    intentionally_or_negligently(P, failed_comply_request_document_information).

infringement_by_provider(P, failed_comply_measure_requested) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M),
    intentionally_or_negligently(P, failed_comply_measure_requested).

infringement_by_provider(P, failed_make_available_access_for_evaluation) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M),
    intentionally_or_negligently(P, failed_make_available_access_for_evaluation),
    (general_purpose_ai_model(M) ; systemic_risk(M)).

must_communicate_preliminary_findings(commission, P) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M),
    preliminary_findings(commission, P).

must_give_opportunity_to_be_heard(commission, P) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M),
    decision_pending(commission, fine(P)).

fine_effective(F) :-
    fine_imposed(F, art_101).

fine_proportionate(F) :-
    fine_imposed(F, art_101).

fine_dissuasive(F) :-
    fine_imposed(F, art_101).

must_communicate_fines_to_board(F) :-
    fine_imposed(F, art_101).

court_unlimited_jurisdiction(court_of_justice, Decision) :-
    decision_fixing_fine(Decision, commission),
    under_article(Decision, 101).

may_cancel_fine(court_of_justice, Fine) :-
    fine_imposed(Fine, art_101),
    decision_fixing_fine(Decision, commission),
    under_article(Decision, 101).

may_reduce_fine(court_of_justice, Fine) :-
    fine_imposed(Fine, art_101),
    decision_fixing_fine(Decision, commission),
    under_article(Decision, 101).

may_increase_fine(court_of_justice, Fine) :-
    fine_imposed(Fine, art_101),
    decision_fixing_fine(Decision, commission),
    under_article(Decision, 101).

must_adopt_implementing_acts(commission) :-
    proceedings_pending(fine, art_101).

implementing_acts_procedural_safeguards(Acts) :-
    implementing_acts(Acts, commission),
    proceedings_pending(fine, art_101),
    detailed_arrangements(Acts),
    procedural_safeguards(Acts).

% Helper predicates for compositional terms
provider_of(P, M) :-
    provider(P),
    general_purpose_ai_model(M).

intentionally_or_negligently(_P, _Act).

preliminary_findings(_Commission, _P).

decision_pending(_Commission, _Decision).

fine_imposed(_F, _Article).

under_article(_Decision, _Article).

decision_fixing_fine(_Decision, _Commission).

proceedings_pending(_Type, _Article).

implementing_acts(_Acts, _Commission).

detailed_arrangements(_Acts).

procedural_safeguards(_Acts).

% Provenance
provenance(may_impose_fine/2, 'celex:32024R1689/oj#art_101').
provenance(fine_amount/2, 'celex:32024R1689/oj#art_101').
provenance(infringement_by_provider/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_101').
provenance(fine_effective/1, 'celex:32024R1689/oj#art_101').
provenance(fine_proportionate/1, 'celex:32024R1689/oj#art_101').
provenance(fine_dissuasive/1, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_fines_to_board/1, 'celex:32024R1689/oj#art_101').
provenance(court_unlimited_jurisdiction/2, 'celex:32024R1689/oj#art_101').
provenance(may_cancel_fine/2, 'celex:32024R1689/oj#art_101').
provenance(may_reduce_fine/2, 'celex:32024R1689/oj#art_101').
provenance(may_increase_fine/2, 'celex:32024R1689/oj#art_101').
provenance(must_adopt_implementing_acts/1, 'celex:32024R1689/oj#art_101').
provenance(implementing_acts_procedural_safeguards/1, 'celex:32024R1689/oj#art_101').

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
