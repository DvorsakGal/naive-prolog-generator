% unit       : celex:32024R1689/oj#art_101
% context    : CHAPTER XII PENALTIES
% slice sha  : 863289a44e0acab966ec52ddef65337536e6a1882b1d01e8499a22a251ca916c
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3dd1000a012c6dfb12e0dd6ef4266cc523eab199d251c183712704147ba24a82
% cached     : False
% title      : Fines for providers of general-purpose AI models
:- pred fineable_infringement_by_gpai_provider/2, gloss('infringement by provider of general-purpose AI model justifying a fine'), source('celex:32024R1689/oj#art_101').
:- pred must_communicate_preliminary_findings/2, gloss('obligation to communicate preliminary findings before adopting decision'), source('celex:32024R1689/oj#art_101').
:- pred must_communicate_fine_information/2, gloss('obligation to communicate information on fines imposed'), source('celex:32024R1689/oj#art_101').
:- pred must_adopt_implementing_acts_for_proceedings/1, gloss('obligation to adopt implementing acts for proceedings regarding fines'), source('celex:32024R1689/oj#art_101').

fineable_infringement_by_gpai_provider(P, infringement_of_relevant_provisions) :-
    provider(P),
    general_purpose_ai_model(_M),
    intentionally_or_negligently_infringed(P).

fineable_infringement_by_gpai_provider(P, failure_to_comply_with_information_request) :-
    provider(P),
    general_purpose_ai_model(_M),
    failed_to_comply_with_request(P, document_or_information).

fineable_infringement_by_gpai_provider(P, supply_of_incorrect_information) :-
    provider(P),
    general_purpose_ai_model(_M),
    supplied_incorrect_or_misleading_information(P).

fineable_infringement_by_gpai_provider(P, failure_to_comply_with_measure) :-
    provider(P),
    general_purpose_ai_model(_M),
    failed_to_comply_with_requested_measure(P).

fineable_infringement_by_gpai_provider(P, failure_to_provide_access_for_evaluation) :-
    provider(P),
    general_purpose_ai_model(M),
    failed_to_make_available_access(P, M, evaluation).

must_communicate_preliminary_findings(commission, P) :-
    provider(P),
    general_purpose_ai_model(_M),
    fineable_infringement_by_gpai_provider(P, _Infringement).

must_communicate_fine_information(commission, board) :-
    fineable_infringement_by_gpai_provider(_P, _Infringement).

must_adopt_implementing_acts_for_proceedings(commission).

provenance(fineable_infringement_by_gpai_provider/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_fine_information/2, 'celex:32024R1689/oj#art_101').
provenance(must_adopt_implementing_acts_for_proceedings/1, 'celex:32024R1689/oj#art_101').

references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').
