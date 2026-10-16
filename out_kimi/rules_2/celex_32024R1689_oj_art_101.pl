% unit       : celex:32024R1689/oj#art_101
% context    : CHAPTER XII PENALTIES
% slice sha  : 863289a44e0acab966ec52ddef65337536e6a1882b1d01e8499a22a251ca916c
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : d3bfdcd56e1654d5cb41a143e76ff2637112aae9e2b3f2a905b3eba82b433fc4
% cached     : False
% title      : Fines for providers of general-purpose AI models
:- pred may_impose_fine/2, gloss('Commission may impose a fine on a provider'), source('celex:32024R1689/oj#art_101').
:- pred fine_amount/2, gloss('fine amount calculated'), source('celex:32024R1689/oj#art_101').
:- pred infringement_by_provider/2, gloss('provider infringed specified provision'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_with_document_request/1, gloss('provider failed to comply with document or information request'), source('celex:32024R1689/oj#art_101').
:- pred supplied_incorrect_information/1, gloss('provider supplied incorrect, incomplete or misleading information'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_with_measure/1, gloss('provider failed to comply with requested measure'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_make_available_for_evaluation/1, gloss('provider failed to make model available for evaluation'), source('celex:32024R1689/oj#art_101').
:- pred preliminary_findings_communicated/1, gloss('Commission communicated preliminary findings to provider'), source('celex:32024R1689/oj#art_101').
:- pred opportunity_to_be_heard/1, gloss('provider given opportunity to be heard'), source('celex:32024R1689/oj#art_101').
:- pred unlimited_jurisdiction_to_review/1, gloss('Court of Justice has unlimited jurisdiction to review fine decision'), source('celex:32024R1689/oj#art_101').
:- pred may_cancel_fine/1, gloss('Court may cancel fine'), source('celex:32024R1689/oj#art_101').
:- pred may_reduce_fine/1, gloss('Court may reduce fine'), source('celex:32024R1689/oj#art_101').
:- pred may_increase_fine/1, gloss('Court may increase fine'), source('celex:32024R1689/oj#art_101').
:- pred fine_effective_proportionate_dissuasive/1, gloss('fine shall be effective, proportionate and dissuasive'), source('celex:32024R1689/oj#art_101').
:- pred fine_communicated_to_board/1, gloss('information on fine communicated to the Board'), source('celex:32024R1689/oj#art_101').
:- pred must_adopt_implementing_acts/2, gloss('Commission shall adopt implementing acts specifying detailed arrangements'), source('celex:32024R1689/oj#art_101').

may_impose_fine(commission, P) :-
    general_purpose_ai_model_provider(P),
    infringement_by_provider(P, _Provision).

may_impose_fine(commission, P) :-
    general_purpose_ai_model_provider(P),
    failed_to_comply_with_document_request(P).

may_impose_fine(commission, P) :-
    general_purpose_ai_model_provider(P),
    supplied_incorrect_information(P).

may_impose_fine(commission, P) :-
    general_purpose_ai_model_provider(P),
    failed_to_comply_with_measure(P).

may_impose_fine(commission, P) :-
    general_purpose_ai_model_provider(P),
    failed_to_make_available_for_evaluation(P).

fine_amount(P, amount(percent(3), turnover(preceding_financial_year))) :-
    may_impose_fine(commission, P).

fine_amount(P, amount(eur(15000000))) :-
    may_impose_fine(commission, P).

preliminary_findings_communicated(P) :-
    general_purpose_ai_model_provider(P),
    may_impose_fine(commission, P).

opportunity_to_be_heard(P) :-
    general_purpose_ai_model_provider(P),
    may_impose_fine(commission, P).

fine_effective_proportionate_dissuasive(P) :-
    may_impose_fine(commission, P).

fine_communicated_to_board(P) :-
    may_impose_fine(commission, P).

unlimited_jurisdiction_to_review(P) :-
    may_impose_fine(commission, P).

may_cancel_fine(P) :-
    unlimited_jurisdiction_to_review(P).

may_reduce_fine(P) :-
    unlimited_jurisdiction_to_review(P).

may_increase_fine(P) :-
    unlimited_jurisdiction_to_review(P).

must_adopt_implementing_acts(commission, proceedings_arrangements(art_101_par_1)) :-
    true.

provenance(may_impose_fine/2, 'celex:32024R1689/oj#art_101').
provenance(fine_amount/2, 'celex:32024R1689/oj#art_101').
provenance(infringement_by_provider/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_with_document_request/1, 'celex:32024R1689/oj#art_101').
provenance(supplied_incorrect_information/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_with_measure/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_make_available_for_evaluation/1, 'celex:32024R1689/oj#art_101').
provenance(preliminary_findings_communicated/1, 'celex:32024R1689/oj#art_101').
provenance(opportunity_to_be_heard/1, 'celex:32024R1689/oj#art_101').
provenance(unlimited_jurisdiction_to_review/1, 'celex:32024R1689/oj#art_101').
provenance(may_cancel_fine/1, 'celex:32024R1689/oj#art_101').
provenance(may_reduce_fine/1, 'celex:32024R1689/oj#art_101').
provenance(may_increase_fine/1, 'celex:32024R1689/oj#art_101').
provenance(fine_effective_proportionate_dissuasive/1, 'celex:32024R1689/oj#art_101').
provenance(fine_communicated_to_board/1, 'celex:32024R1689/oj#art_101').
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_101').

references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').
