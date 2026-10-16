% unit       : celex:32024R1689/oj#art_81
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : aa42e2fde627ea83e0e422927d80fe4dce2b9ea0601237648d1894a350e8d9c0
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : fa641b51d7be354ebb067ee73463bcf15268c0e66f41cb25e8a5fc0fb7edc96d
% cached     : False
% title      : Union safeguard procedure
:- pred union_safeguard_procedure_applies/1, gloss('Union safeguard procedure applies to a measure'), source('celex:32024R1689/oj#art_81').
:- pred justified_national_measure/1, gloss('national measure is justified under Union safeguard procedure'), source('celex:32024R1689/oj#art_81').
:- pred unjustified_national_measure/1, gloss('national measure is unjustified under Union safeguard procedure'), source('celex:32024R1689/oj#art_81').
:- pred attributed_to_shortcomings_in_standards/1, gloss('non-compliance attributed to shortcomings in harmonised standards or common specifications'), source('celex:32024R1689/oj#art_81').
:- pred must_take_restrictive_measures/2, gloss('Member States must take restrictive measures regarding AI system'), source('celex:32024R1689/oj#art_81').
:- pred must_withdraw_ai_system/2, gloss('Member State must require withdrawal of AI system from market'), source('celex:32024R1689/oj#art_81').
:- pred must_withdraw_national_measure/2, gloss('Member State must withdraw national measure'), source('celex:32024R1689/oj#art_81').
:- pred must_inform_commission/2, gloss('party must inform Commission of action taken'), source('celex:32024R1689/oj#art_81').
:- pred must_apply_procedure/2, gloss('Commission must apply specified procedure'), source('celex:32024R1689/oj#art_81').
:- pred objections_raised/1, gloss('objections raised to national measure by another market surveillance authority'), source('celex:32024R1689/oj#art_81').
:- pred commission_considers_measure_contrary_to_union_law/1, gloss('Commission considers measure contrary to Union law'), source('celex:32024R1689/oj#art_81').
:- pred commission_considers_measure_justified/1, gloss('Commission considers national measure justified'), source('celex:32024R1689/oj#art_81').
:- pred commission_considers_measure_unjustified/1, gloss('Commission considers national measure unjustified'), source('celex:32024R1689/oj#art_81').
:- pred non_compliance_with_prohibited_ai_practices/1, gloss('non-compliance with prohibition of AI practices in Article 5'), source('celex:32024R1689/oj#art_81').

% Paragraph 1 - trigger conditions for Union safeguard procedure
union_safeguard_procedure_applies(Measure) :-
    measure_taken_by_market_surveillance_authority(Measure),
    objections_raised(Measure),
    within_period_after_notification(Measure, months(3)).

union_safeguard_procedure_applies(Measure) :-
    measure_taken_by_market_surveillance_authority(Measure),
    non_compliance_with_prohibited_ai_practices(Measure),
    within_period_after_notification(Measure, days(30)).

union_safeguard_procedure_applies(Measure) :-
    measure_taken_by_market_surveillance_authority(Measure),
    commission_considers_measure_contrary_to_union_law(Measure).

% Paragraph 2 - justified measure: all Member States must take restrictive measures
must_take_restrictive_measures(member_state, S) :-
    justified_national_measure(Measure),
    measure_concerns_ai_system(Measure, S).

must_withdraw_ai_system(member_state, S) :-
    justified_national_measure(Measure),
    measure_concerns_ai_system(Measure, S).

must_inform_commission(member_state, restrictive_measures_taken(S)) :-
    justified_national_measure(Measure),
    measure_concerns_ai_system(Measure, S).

% Paragraph 2 - unjustified measure: Member State concerned must withdraw measure
must_withdraw_national_measure(member_state_concerned, Measure) :-
    unjustified_national_measure(Measure).

must_inform_commission(member_state_concerned, withdrawal_of(Measure)) :-
    unjustified_national_measure(Measure).

% Paragraph 3 - shortcomings in standards: apply Regulation 1025/2012 Article 11 procedure
must_apply_procedure(commission, procedure_of('celex:32012R1025/oj#art_11')) :-
    justified_national_measure(Measure),
    measure_concerns_ai_system(Measure, S),
    attributed_to_shortcomings_in_standards(S).

% Supporting predicates for measure relationships
measure_taken_by_market_surveillance_authority(Measure) :-
    market_surveillance_authority(Authority),
    took_measure(Authority, Measure).

measure_concerns_ai_system(Measure, S) :-
    ai_system(S),
    concerns(Measure, S).

within_period_after_notification(Measure, Period) :-
    notification_referred_to_in_article_79_5(Notification),
    received(Notification),
    period_since(Notification, Period).

% Provenance
provenance(union_safeguard_procedure_applies/1, 'celex:32024R1689/oj#art_81').
provenance(justified_national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(unjustified_national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(attributed_to_shortcomings_in_standards/1, 'celex:32024R1689/oj#art_81').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_ai_system/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_national_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').
provenance(objections_raised/1, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_measure_contrary_to_union_law/1, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_measure_justified/1, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_measure_unjustified/1, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_with_prohibited_ai_practices/1, 'celex:32024R1689/oj#art_81').

% References
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').
