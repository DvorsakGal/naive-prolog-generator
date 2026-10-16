% unit       : celex:32024R1689/oj#art_46
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 19976cfce940b775e3fad4e919e795ce392264c94f8a38dddbc96e311f4af7e7
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 2984a4dc18089c1a7b97433741b965fb43b796e959f2dff5335c9729fb81c9cc
% cached     : False
% title      : Derogation from conformity assessment procedure
:- pred authorisation_for_derogation/2, gloss('market surveillance authority authorises placing on market or putting into service of specific high-risk AI system for exceptional reasons'), source('celex:32024R1689/oj#art_46').
:- pred exceptional_reasons/1, gloss('exceptional reasons of public security, protection of life and health, environmental protection, or protection of key industrial and infrastructural assets'), source('celex:32024R1689/oj#art_46').
:- pred limited_period_authorisation/1, gloss('authorisation is for a limited period while conformity assessment procedures are being carried out'), source('celex:32024R1689/oj#art_46').
:- pred conformity_assessment_without_undue_delay/1, gloss('completion of conformity assessment procedures undertaken without undue delay'), source('celex:32024R1689/oj#art_46').
:- pred urgency_put_into_service_without_authorisation/2, gloss('law enforcement or civil protection authority puts high-risk AI system into service without prior authorisation in duly justified urgency'), source('celex:32024R1689/oj#art_46').
:- pred authorisation_requested_during_or_after_use/1, gloss('authorisation requested during or after the use without undue delay'), source('celex:32024R1689/oj#art_46').
:- pred stop_use_if_authorisation_refused/1, gloss('if authorisation refused, use stopped with immediate effect and results discarded'), source('celex:32024R1689/oj#art_46').
:- pred authorisation_only_if_compliant/2, gloss('authorisation issued only if market surveillance authority concludes system complies with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_46').
:- pred inform_commission_and_member_states/2, gloss('market surveillance authority informs Commission and other Member States of authorisation issued'), source('celex:32024R1689/oj#art_46').
:- pred authorisation_deemed_justified/1, gloss('authorisation deemed justified if no objection within 15 calendar days'), source('celex:32024R1689/oj#art_46').
:- pred commission_consultation_on_objection/1, gloss('Commission enters into consultations when objection raised or authorisation considered contrary to Union law'), source('celex:32024R1689/oj#art_46').
:- pred commission_decides_justification/1, gloss('Commission decides whether authorisation is justified after consultation'), source('celex:32024R1689/oj#art_46').
:- pred withdraw_unjustified_authorisation/1, gloss('market surveillance authority withdraws authorisation if Commission considers it unjustified'), source('celex:32024R1689/oj#art_46').
:- pred derogation_limited_for_harmonisation_products/1, gloss('for products covered by Union harmonisation legislation, only derogations from that legislation apply'), source('celex:32024R1689/oj#art_46').

authorisation_for_derogation(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    duly_justified_request,
    exceptional_reasons(Reason),
    member_state(MemberState),
    within_territory(S, MemberState).

exceptional_reasons(public_security).
exceptional_reasons(protection_of_life_and_health).
exceptional_reasons(environmental_protection).
exceptional_reasons(protection_of_key_industrial_and_infrastructural_assets).

limited_period_authorisation(S) :-
    authorisation_for_derogation(_, S),
    conformity_assessment_procedure(S).

conformity_assessment_without_undue_delay(S) :-
    authorisation_for_derogation(_, S),
    without_delay.

urgency_put_into_service_without_authorisation(Authority, S) :-
    (law_enforcement_authority(Authority) ; civil_protection_authority(Authority)),
    high_risk_ai_system(S),
    duly_justified_urgency,
    exceptional_reasons(public_security),
    specific_substantial_imminent_threat_to_life_or_physical_safety.

authorisation_requested_during_or_after_use(S) :-
    urgency_put_into_service_without_authorisation(_, S),
    without_delay.

stop_use_if_authorisation_refused(S) :-
    urgency_put_into_service_without_authorisation(_, S),
    \+ authorisation_for_derogation(_, S),
    immediate_effect,
    discard_all_results_and_outputs(S).

authorisation_only_if_compliant(Authority, S) :-
    authorisation_for_derogation(Authority, S),
    concludes_compliance_with_chapter_3_section_2(Authority, S).

inform_commission_and_member_states(Authority, S) :-
    authorisation_for_derogation(Authority, S),
    \+ sensitive_operational_data_exemption(S),
    inform_commission(MemberState, authorisation(S)),
    inform_other_member_states(MemberState, authorisation(S)).

authorisation_deemed_justified(S) :-
    authorisation_for_derogation(Authority, S),
    inform_commission_and_member_states(Authority, S),
    no_objection_within(days(15), S).

commission_consultation_on_objection(S) :-
    authorisation_for_derogation(Authority, S),
    inform_commission_and_member_states(Authority, S),
    (objection_raised_by_member_state(S) ; objection_raised_by_commission(S) ; commission_considers_contrary_to_union_law(S) ; conclusion_unfounded(S)),
    without_delay.

commission_decides_justification(S) :-
    commission_consultation_on_objection(S),
    consult_operators(S),
    operators_present_views(S),
    commission_decision(S, justified).

commission_decides_justification(S) :-
    commission_consultation_on_objection(S),
    consult_operators(S),
    operators_present_views(S),
    commission_decision(S, unjustified).

withdraw_unjustified_authorisation(S) :-
    authorisation_for_derogation(Authority, S),
    commission_decides_justification(S),
    commission_decision(S, unjustified),
    withdraw_authorisation(Authority, S).

derogation_limited_for_harmonisation_products(S) :-
    high_risk_ai_system(S),
    related_to_product_covered_by_union_harmonisation_legislation(S),
    other_union_harmonisation_legislation(S),
    only_derogations_from_that_legislation_apply(S).

provenance(authorisation_for_derogation/2, 'celex:32024R1689/oj#art_46').
provenance(exceptional_reasons/1, 'celex:32024R1689/oj#art_46').
provenance(limited_period_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(conformity_assessment_without_undue_delay/1, 'celex:32024R1689/oj#art_46').
provenance(urgency_put_into_service_without_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(authorisation_requested_during_or_after_use/1, 'celex:32024R1689/oj#art_46').
provenance(stop_use_if_authorisation_refused/1, 'celex:32024R1689/oj#art_46').
provenance(authorisation_only_if_compliant/2, 'celex:32024R1689/oj#art_46').
provenance(inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_46').
provenance(authorisation_deemed_justified/1, 'celex:32024R1689/oj#art_46').
provenance(commission_consultation_on_objection/1, 'celex:32024R1689/oj#art_46').
provenance(commission_decides_justification/1, 'celex:32024R1689/oj#art_46').
provenance(withdraw_unjustified_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(derogation_limited_for_harmonisation_products/1, 'celex:32024R1689/oj#art_46').

references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').
