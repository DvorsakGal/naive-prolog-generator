% unit       : celex:32024R1689/oj#art_81
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : aa42e2fde627ea83e0e422927d80fe4dce2b9ea0601237648d1894a350e8d9c0
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 7cc533a89a9a53d4a3234e98f9ea1f3bda57db9310b7cbaa95d3530fb368f0fd
% cached     : False
% title      : Union safeguard procedure
:- pred commission_decides/2, gloss('Commission decides whether authorisation is justified'), source('celex:32024R1689/oj#art_81').

commission_decides(Commission, justified(Measure)) :-
    commission(Commission),
    measure_taken(MemberState, Measure),
    market_surveillance_authority(Authority),
    established_in_union(MemberState),
    member_state_of(Authority, MemberState),
    notification_referred_to_in_art_79_5(Notification),
    within_three_months_of_receipt(Notification);
    within_thirty_days_of_receipt(Notification),
    non_compliance_art_5(Measure),
    objections_raised(Authority, Measure);
    commission_considers_measure_contrary_to_union_law(Commission, Measure),
    enter_into_consultation(Commission, Authority, Operator),
    evaluate_national_measure(Commission, Measure),
    within_six_months_of_notification(Notification);
    within_sixty_days_of_notification(Notification),
    non_compliance_art_5(Measure),
    notify_decision(Commission, Authority).

commission_decides(Commission, unjustified(Measure)) :-
    commission(Commission),
    measure_taken(MemberState, Measure),
    market_surveillance_authority(Authority),
    established_in_union(MemberState),
    member_state_of(Authority, MemberState),
    notification_referred_to_in_art_79_5(Notification),
    within_three_months_of_receipt(Notification);
    within_thirty_days_of_receipt(Notification),
    non_compliance_art_5(Measure),
    objections_raised(Authority, Measure);
    commission_considers_measure_contrary_to_union_law(Commission, Measure),
    enter_into_consultation(Commission, Authority, Operator),
    evaluate_national_measure(Commission, Measure),
    within_six_months_of_notification(Notification);
    within_sixty_days_of_notification(Notification),
    non_compliance_art_5(Measure),
    notify_decision(Commission, Authority).

must_take_restriction_measures(MemberState, System) :-
    established_in_union(MemberState),
    commission_decides(Commission, justified(Measure)),
    measure_concerns_ai_system(Measure, System),
    ai_system(System).

must_withdraw_ai_system(MemberState, System) :-
    established_in_union(MemberState),
    commission_decides(Commission, justified(Measure)),
    measure_concerns_ai_system(Measure, System),
    ai_system(System).

must_inform_commission_and_member_states(Authority, decision(Commission, justified(Measure))) :-
    market_surveillance_authority(Authority),
    commission_decides(Commission, justified(Measure)),
    measure_taken(MemberState, Measure),
    established_in_union(MemberState),
    member_state_of(Authority, MemberState).

must_withdraw_measure(MemberState, Measure) :-
    established_in_union(MemberState),
    measure_taken(MemberState, Measure),
    commission_decides(Commission, unjustified(Measure)).

must_inform_commission(Authority, withdrawal(Measure)) :-
    market_surveillance_authority(Authority),
    established_in_union(MemberState),
    member_state_of(Authority, MemberState),
    measure_taken(MemberState, Measure),
    commission_decides(Commission, unjustified(Measure)).

must_apply_procedure(Commission, art_11_of_regulation_1025_2012) :-
    commission(Commission),
    commission_decides(Commission, justified(Measure)),
    measure_concerns_ai_system(Measure, System),
    ai_system(System),
    non_compliance_harmonised_standards(System).

provenance(commission_decides/2, 'celex:32024R1689/oj#art_81').
provenance(must_take_restriction_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_ai_system/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').

references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').
