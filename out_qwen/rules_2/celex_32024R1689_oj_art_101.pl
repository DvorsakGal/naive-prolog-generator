% unit       : celex:32024R1689/oj#art_101
% context    : CHAPTER XII PENALTIES
% slice sha  : 863289a44e0acab966ec52ddef65337536e6a1882b1d01e8499a22a251ca916c
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : ac0513a740240c7a7713c0f9b8de4e7cd47cf00489708336da7cc0efd6cfcfcc
% cached     : False
% title      : Fines for providers of general-purpose AI models
:- pred may_impose_fine_on_general_purpose_ai_model_provider/2, gloss('Commission may impose fine on provider of general-purpose AI model'), source('celex:32024R1689/oj#art_101').
:- pred infringement_ground_for_fine/2, gloss('Ground for imposing fine under Article 101(1)'), source('celex:32024R1689/oj#art_101').
:- pred must_communicate_preliminary_findings/2, gloss('Commission must communicate preliminary findings before adopting decision'), source('celex:32024R1689/oj#art_101').
:- pred must_give_opportunity_to_be_heard/2, gloss('Commission must give provider opportunity to be heard'), source('celex:32024R1689/oj#art_101').
:- pred must_communicate_fine_information_to_board/2, gloss('Information on fines communicated to the Board'), source('celex:32024R1689/oj#art_101').
:- pred must_adopt_implementing_acts_for_proceedings/1, gloss('Commission must adopt implementing acts for proceedings under Article 101'), source('celex:32024R1689/oj#art_101').

may_impose_fine_on_general_purpose_ai_model_provider(commission, Provider) :-
    general_purpose_ai_model_provider(Provider),
    infringement_ground_for_fine(Provider, _Ground).

infringement_ground_for_fine(Provider, infringed_relevant_provisions) :-
    general_purpose_ai_model_provider(Provider),
    intentional_or_negligent_infringement(Provider).

infringement_ground_for_fine(Provider, failed_to_comply_with_information_request) :-
    general_purpose_ai_model_provider(Provider),
    failed_information_request_compliance(Provider).

infringement_ground_for_fine(Provider, supplied_incorrect_information) :-
    general_purpose_ai_model_provider(Provider),
    supplied_incorrect_incomplete_or_misleading_information(Provider).

infringement_ground_for_fine(Provider, failed_to_comply_with_measure) :-
    general_purpose_ai_model_provider(Provider),
    failed_measure_compliance(Provider).

infringement_ground_for_fine(Provider, failed_to_provide_model_access) :-
    general_purpose_ai_model_provider(Provider),
    failed_model_access_for_evaluation(Provider).

must_communicate_preliminary_findings(commission, Provider) :-
    general_purpose_ai_model_provider(Provider),
    may_impose_fine_on_general_purpose_ai_model_provider(commission, Provider).

must_give_opportunity_to_be_heard(commission, Provider) :-
    general_purpose_ai_model_provider(Provider),
    may_impose_fine_on_general_purpose_ai_model_provider(commission, Provider).

must_communicate_fine_information_to_board(commission, FineInfo) :-
    fine_imposed_under_art_101(FineInfo).

must_adopt_implementing_acts_for_proceedings(commission) :-
    true.

provenance(may_impose_fine_on_general_purpose_ai_model_provider/2, 'celex:32024R1689/oj#art_101').
provenance(infringement_ground_for_fine/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_fine_information_to_board/2, 'celex:32024R1689/oj#art_101').
provenance(must_adopt_implementing_acts_for_proceedings/1, 'celex:32024R1689/oj#art_101').

references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').
