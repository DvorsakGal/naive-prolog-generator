% unit       : celex:32024R1689/oj#art_101
% context    : CHAPTER XII PENALTIES
% slice sha  : 863289a44e0acab966ec52ddef65337536e6a1882b1d01e8499a22a251ca916c
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : faf519173ff2442a852f28613a70f17e6f5615a65979b7003888d947fc85b68e
% cached     : False
% title      : Fines for providers of general-purpose AI models
:- pred fine_for_general_purpose_ai_model_provider/2, gloss('Commission may impose fine on provider of general-purpose AI model, amount'), source('celex:32024R1689/oj#art_101').
:- pred fine_amount_not_exceeding/2, gloss('fine amount does not exceed the higher of 3 percent of annual total worldwide turnover or EUR 15000000'), source('celex:32024R1689/oj#art_101').
:- pred commission_finds_intentional_or_negligent_infringement/2, gloss('Commission finds provider intentionally or negligently infringed, circumstance'), source('celex:32024R1689/oj#art_101').
:- pred infringed_relevant_provisions/1, gloss('provider infringed relevant provisions of the regulation'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_with_request/2, gloss('provider failed to comply with request, request type'), source('celex:32024R1689/oj#art_101').
:- pred supplied_incorrect_incomplete_or_misleading_information/1, gloss('provider supplied incorrect, incomplete or misleading information'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_with_measure/2, gloss('provider failed to comply with measure requested under Article 93'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_make_available_access/2, gloss('provider failed to make available access to model for evaluation under Article 92'), source('celex:32024R1689/oj#art_101').
:- pred regard_had_to_nature_gravity_duration/1, gloss('regard had to nature, gravity and duration of infringement'), source('celex:32024R1689/oj#art_101').
:- pred take_due_account_of_proportionality_and_appropriateness/1, gloss('take due account of principles of proportionality and appropriateness'), source('celex:32024R1689/oj#art_101').
:- pred take_into_account_commitments/2, gloss('take into account commitments made, source of commitments'), source('celex:32024R1689/oj#art_101').
:- pred commitments_made_under_article_93_par_3/1, gloss('commitments made in accordance with Article 93(3)'), source('celex:32024R1689/oj#art_101').
:- pred commitments_made_in_codes_of_practice/1, gloss('commitments made in relevant codes of practice in accordance with Article 56'), source('celex:32024R1689/oj#art_101').
:- pred commission_communicates_preliminary_findings/2, gloss('Commission communicates preliminary findings to provider before adopting decision'), source('celex:32024R1689/oj#art_101').
:- pred opportunity_to_be_heard/1, gloss('provider given opportunity to be heard'), source('celex:32024R1689/oj#art_101').
:- pred fines_effective_proportionate_dissuasive/1, gloss('fines imposed are effective, proportionate and dissuasive'), source('celex:32024R1689/oj#art_101').
:- pred information_on_fines_communicated_to_board/1, gloss('information on fines communicated to the Board as appropriate'), source('celex:32024R1689/oj#art_101').
:- pred court_of_justice_unlimited_jurisdiction/1, gloss('Court of Justice has unlimited jurisdiction to review Commission decisions fixing fines'), source('celex:32024R1689/oj#art_101').
:- pred court_may_cancel_reduce_or_increase_fine/1, gloss('Court may cancel, reduce or increase the fine imposed'), source('celex:32024R1689/oj#art_101').
:- pred commission_adopts_implementing_acts/1, gloss('Commission adopts implementing acts with detailed arrangements and procedural safeguards'), source('celex:32024R1689/oj#art_101').
:- pred implementing_acts_adopted_under_examination_procedure/1, gloss('implementing acts adopted in accordance with examination procedure under Article 98(2)'), source('celex:32024R1689/oj#art_101').

fine_for_general_purpose_ai_model_provider(P, Amount) :-
    general_purpose_ai_model_provider(P),
    commission_finds_intentional_or_negligent_infringement(P, _Circumstance),
    fine_amount_not_exceeding(P, Amount).

fine_amount_not_exceeding(P, Amount) :-
    general_purpose_ai_model_provider(P),
    annual_total_worldwide_turnover(P, Turnover),
    MaxByPercentage is Turnover * 0.03,
    MaxByFixed is 15000000,
    Amount = max(MaxByPercentage, MaxByFixed).

commission_finds_intentional_or_negligent_infringement(P, infringed_relevant_provisions) :-
    general_purpose_ai_model_provider(P),
    infringed_relevant_provisions(P).

commission_finds_intentional_or_negligent_infringement(P, failed_to_comply_with_request(document_or_information)) :-
    general_purpose_ai_model_provider(P),
    failed_to_comply_with_request(P, document_or_information).

commission_finds_intentional_or_negligent_infringement(P, failed_to_comply_with_request(document_or_information)) :-
    general_purpose_ai_model_provider(P),
    failed_to_comply_with_request(P, document_or_information),
    supplied_incorrect_incomplete_or_misleading_information(P).

commission_finds_intentional_or_negligent_infringement(P, failed_to_comply_with_measure) :-
    general_purpose_ai_model_provider(P),
    failed_to_comply_with_measure(P, _Measure).

commission_finds_intentional_or_negligent_infringement(P, failed_to_make_available_access) :-
    general_purpose_ai_model_provider(P),
    failed_to_make_available_access(P, _Model).

infringed_relevant_provisions(P) :-
    general_purpose_ai_model_provider(P),
    acting_contrary_to_obligations(P).

failed_to_comply_with_request(P, document_or_information) :-
    general_purpose_ai_model_provider(P),
    must_provide(P, _Information),
    \+ must_provide(P, _Information).

failed_to_comply_with_measure(P, measure_requested_under_article_93) :-
    general_purpose_ai_model_provider(P),
    must_take_necessary_steps(P, _Steps),
    \+ must_take_necessary_steps(P, _Steps).

failed_to_make_available_access(P, general_purpose_ai_model) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    \+ access_made_available(P, M).

failed_to_make_available_access(P, general_purpose_ai_model_with_systemic_risk) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    \+ access_made_available(P, M).

regard_had_to_nature_gravity_duration(Fine) :-
    fine_for_general_purpose_ai_model_provider(_P, Fine),
    nature_gravity_duration(_Infringement).

take_due_account_of_proportionality_and_appropriateness(Fine) :-
    fine_for_general_purpose_ai_model_provider(_P, Fine),
    effective_proportionate_dissuasive(Fine).

take_into_account_commitments(P, commitments_under_article_93_par_3) :-
    general_purpose_ai_model_provider(P),
    commitments_made_under_article_93_par_3(P).

take_into_account_commitments(P, commitments_in_codes_of_practice) :-
    general_purpose_ai_model_provider(P),
    commitments_made_in_codes_of_practice(P).

commission_communicates_preliminary_findings(P, preliminary_findings) :-
    general_purpose_ai_model_provider(P),
    opportunity_to_be_heard(P).

fines_effective_proportionate_dissuasive(Fine) :-
    fine_for_general_purpose_ai_model_provider(_P, Fine),
    effective_proportionate_dissuasive(Fine).

information_on_fines_communicated_to_board(Fine) :-
    fine_for_general_purpose_ai_model_provider(_P, Fine).

court_of_justice_unlimited_jurisdiction(decision) :-
    fine_for_general_purpose_ai_model_provider(_P, _Amount).

court_may_cancel_reduce_or_increase_fine(Fine) :-
    fine_for_general_purpose_ai_model_provider(_P, Fine).

commission_adopts_implementing_acts(implementing_acts_for_proceedings) :-
    true.

implementing_acts_adopted_under_examination_procedure(act) :-
    commission_adopts_implementing_acts(act).

provenance(fine_for_general_purpose_ai_model_provider/2, 'celex:32024R1689/oj#art_101').
provenance(fine_amount_not_exceeding/2, 'celex:32024R1689/oj#art_101').
provenance(commission_finds_intentional_or_negligent_infringement/2, 'celex:32024R1689/oj#art_101').
provenance(infringed_relevant_provisions/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_with_request/2, 'celex:32024R1689/oj#art_101').
provenance(supplied_incorrect_incomplete_or_misleading_information/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_with_measure/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_make_available_access/2, 'celex:32024R1689/oj#art_101').
provenance(regard_had_to_nature_gravity_duration/1, 'celex:32024R1689/oj#art_101').
provenance(take_due_account_of_proportionality_and_appropriateness/1, 'celex:32024R1689/oj#art_101').
provenance(take_into_account_commitments/2, 'celex:32024R1689/oj#art_101').
provenance(commitments_made_under_article_93_par_3/1, 'celex:32024R1689/oj#art_101').
provenance(commitments_made_in_codes_of_practice/1, 'celex:32024R1689/oj#art_101').
provenance(commission_communicates_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(opportunity_to_be_heard/1, 'celex:32024R1689/oj#art_101').
provenance(fines_effective_proportionate_dissuasive/1, 'celex:32024R1689/oj#art_101').
provenance(information_on_fines_communicated_to_board/1, 'celex:32024R1689/oj#art_101').
provenance(court_of_justice_unlimited_jurisdiction/1, 'celex:32024R1689/oj#art_101').
provenance(court_may_cancel_reduce_or_increase_fine/1, 'celex:32024R1689/oj#art_101').
provenance(commission_adopts_implementing_acts/1, 'celex:32024R1689/oj#art_101').
provenance(implementing_acts_adopted_under_examination_procedure/1, 'celex:32024R1689/oj#art_101').

references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').
