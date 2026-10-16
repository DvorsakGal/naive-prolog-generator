% unit       : celex:32024R1689/oj#art_101
% context    : CHAPTER XII PENALTIES
% slice sha  : 863289a44e0acab966ec52ddef65337536e6a1882b1d01e8499a22a251ca916c
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : e0835b867a8f871f988c78925221df9731f64fb4b36f8b35fa0cc2da2e75cbf3
% cached     : False
% title      : Fines for providers of general-purpose AI models
:- pred must_communicate_preliminary_findings/2, gloss('Commission must communicate preliminary findings to provider and give opportunity to be heard'), source('celex:32024R1689/oj#art_101').
:- pred must_communicate_fine_information_to_board/1, gloss('information on fines imposed must be communicated to the Board'), source('celex:32024R1689/oj#art_101').
:- pred court_has_unlimited_jurisdiction_over_fine/1, gloss('Court of Justice has unlimited jurisdiction to review Commission decisions fixing a fine'), source('celex:32024R1689/oj#art_101').
:- pred must_adopt_implementing_acts_for_proceedings/1, gloss('Commission must adopt implementing acts for proceedings under Article 101(1)'), source('celex:32024R1689/oj#art_101').

% Paragraph 1 – grounds for imposing a fine
fine_cap(provider_of_general_purpose_ai_model, max(percent(3, annual_total_worldwide_turnover), eur(15000000))).

must_pay_fine(Provider, fine(Ground, Cap)) :-
    general_purpose_ai_model(Model),
    provider(Provider),
    provides_model(Provider, Model),
    commission_finds_intentional_or_negligent(Provider, Ground),
    fine_cap(provider_of_general_purpose_ai_model, Cap).

commission_finds_intentional_or_negligent(Provider, infringed_relevant_provisions) :-
    infringed_relevant_provisions(Provider).

commission_finds_intentional_or_negligent(Provider, failed_to_comply_with_document_request) :-
    failed_to_comply_with_request_under_art_91(Provider).

commission_finds_intentional_or_negligent(Provider, supplied_incorrect_incomplete_misleading_information) :-
    supplied_incorrect_incomplete_or_misleading_information(Provider).

commission_finds_intentional_or_negligent(Provider, failed_to_comply_with_measure_under_art_93) :-
    failed_to_comply_with_measure_requested_under_art_93(Provider).

commission_finds_intentional_or_negligent(Provider, failed_to_make_model_accessible_for_evaluation) :-
    failed_to_make_accessible_for_evaluation_under_art_92(Provider).

% Factors in fixing the fine amount
must_consider_in_fixing_fine(nature_gravity_duration_of_infringement).
must_consider_in_fixing_fine(principles_of_proportionality_and_appropriateness).
must_consider_in_fixing_fine(commitments_under_art_93_par_3).
must_consider_in_fixing_fine(commitments_in_relevant_codes_of_practice_under_art_56).

% Paragraph 2 – procedural safeguard before decision
must_communicate_preliminary_findings(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides_model(Provider, Model),
    commission_intends_to_adopt_decision_under_art_101_par_1(Commission, Provider).

must_give_opportunity_to_be_heard(Commission, Provider) :-
    must_communicate_preliminary_findings(Commission, Provider).

% Paragraph 3 – fines must be effective, proportionate and dissuasive
fines_imposed_under_art_101_must_be(effective).
fines_imposed_under_art_101_must_be(proportionate).
fines_imposed_under_art_101_must_be(dissuasive).

% Paragraph 4 – communication to the Board
must_communicate_fine_information_to_board(information_on_fines_imposed_under_art_101).

% Paragraph 5 – Court of Justice jurisdiction
court_has_unlimited_jurisdiction_over_fine(decision_fixing_fine_under_art_101).
court_may_cancel_reduce_or_increase(fine_imposed_under_art_101).

% Paragraph 6 – implementing acts
must_adopt_implementing_acts_for_proceedings(arrangements_and_safeguards_for_art_101_par_1_proceedings).
implementing_acts_adopted_under(examination_procedure_referred_to_in_art_98_par_2).

% Provenance
provenance(fine_cap/2, 'celex:32024R1689/oj#art_101').
provenance(must_pay_fine/2, 'celex:32024R1689/oj#art_101').
provenance(commission_finds_intentional_or_negligent/2, 'celex:32024R1689/oj#art_101').
provenance(must_consider_in_fixing_fine/1, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_101').
provenance(fines_imposed_under_art_101_must_be/1, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_fine_information_to_board/1, 'celex:32024R1689/oj#art_101').
provenance(court_has_unlimited_jurisdiction_over_fine/1, 'celex:32024R1689/oj#art_101').
provenance(court_may_cancel_reduce_or_increase/1, 'celex:32024R1689/oj#art_101').
provenance(must_adopt_implementing_acts_for_proceedings/1, 'celex:32024R1689/oj#art_101').
provenance(implementing_acts_adopted_under/1, 'celex:32024R1689/oj#art_101').

% References
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').
