% unit       : celex:32024R1689/oj#art_46
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 19976cfce940b775e3fad4e919e795ce392264c94f8a38dddbc96e311f4af7e7
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : d2635e27f26a2c49d7dbc48a660edf3da19b50ca63e4057d4565dfbad8cae7e2
% cached     : False
% title      : Derogation from conformity assessment procedure
:- pred may_authorise_derogation/2, gloss('market surveillance authority may authorise placing on market or putting into service of specific high-risk AI system'), source('celex:32024R1689/oj#art_46/par_1').
:- pred urgency_situation/1, gloss('duly justified situation of urgency for exceptional reasons'), source('celex:32024R1689/oj#art_46/par_2').
:- pred puts_into_service_without_authorisation/2, gloss('authority puts high-risk AI system into service without prior authorisation'), source('celex:32024R1689/oj#art_46/par_2').
:- pred must_stop_use_and_discard/2, gloss('use must be stopped and results discarded'), source('celex:32024R1689/oj#art_46/par_2').
:- pred authorisation_refused/1, gloss('authorisation referred to in paragraph 1 is refused'), source('celex:32024R1689/oj#art_46/par_2').
:- pred authorisation_issued/1, gloss('authorisation is issued'), source('celex:32024R1689/oj#art_46/par_3').
:- pred must_inform_commission_and_member_states_of_authorisation/2, gloss('market surveillance authority shall inform Commission and other Member States of authorisation'), source('celex:32024R1689/oj#art_46/par_3').
:- pred deemed_justified/1, gloss('authorisation deemed justified after no objection period'), source('celex:32024R1689/oj#art_46/par_4').
:- pred objection_raised/1, gloss('objection raised by Member State or Commission'), source('celex:32024R1689/oj#art_46/par_5').
:- pred commission_decides/2, gloss('Commission decides whether authorisation is justified'), source('celex:32024R1689/oj#art_46/par_5').
:- pred must_withdraw_authorisation/2, gloss('market surveillance authority shall withdraw authorisation'), source('celex:32024R1689/oj#art_46/par_6').
:- pred union_harmonisation_legislation_derogation_applies/1, gloss('only derogations from Union harmonisation legislation apply'), source('celex:32024R1689/oj#art_46/par_7').

exceptional_reason(A) :-
    public_security_reason(A).
exceptional_reason(A) :-
    protection_of_life_and_health(A).
exceptional_reason(A) :-
    environmental_protection(A).
exceptional_reason(A) :-
    protection_of_key_industrial_and_infrastructural_assets(A).

public_security_reason(public_security).
protection_of_life_and_health(protection_of_life_and_health).
environmental_protection(environmental_protection).
protection_of_key_industrial_and_infrastructural_assets(protection_of_key_industrial_and_infrastructural_assets).

urgency_situation(S) :-
    high_risk_ai_system(S),
    exceptional_reason(public_security),
    duly_justified(S).

urgency_situation(S) :-
    high_risk_ai_system(S),
    specific_substantial_imminent_threat_to_life_or_physical_safety(S).

specific_substantial_imminent_threat_to_life_or_physical_safety(S) :-
    high_risk_ai_system(S),
    threat_to_life_or_physical_safety(S),
    specific_threat(S),
    substantial_threat(S),
    imminent_threat(S).

may_authorise_derogation(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    duly_justified_request(S),
    exceptional_reason(_R),
    placing_on_market_or_putting_into_service(S).

puts_into_service_without_authorisation(Authority, S) :-
    law_enforcement_authority(Authority),
    urgency_situation(S),
    high_risk_ai_system(S),
    puts_into_service(Authority, S).

puts_into_service_without_authorisation(Authority, S) :-
    civil_protection_authority(Authority),
    urgency_situation(S),
    high_risk_ai_system(S),
    puts_into_service(Authority, S).

must_request_authorisation_without_undue_delay(Authority, S) :-
    puts_into_service_without_authorisation(Authority, S).

must_stop_use_and_discard(Authority, S) :-
    puts_into_service_without_authorisation(Authority, S),
    authorisation_refused(S).

authorisation_issued(S) :-
    high_risk_ai_system(S),
    market_surveillance_authority(Authority),
    concludes_compliance_with_chapter_3_section_2(Authority, S),
    may_authorise_derogation(Authority, S).

concludes_compliance_with_chapter_3_section_2(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S).

must_inform_commission_and_member_states_of_authorisation(Authority, S) :-
    market_surveillance_authority(Authority),
    authorisation_issued(S),
    \+ covers_sensitive_operational_data_law_enforcement(S).

must_inform_commission_and_member_states_of_authorisation(Authority, S) :-
    market_surveillance_authority(Authority),
    puts_into_service_without_authorisation(Authority, S),
    \+ covers_sensitive_operational_data_law_enforcement(S).

deemed_justified(S) :-
    authorisation_issued(S),
    \+ objection_raised(S),
    within_15_calendar_days_of_receipt(_Info).

objection_raised(S) :-
    member_state_objection(S).
objection_raised(S) :-
    commission_objection(S).

commission_decides(justified, S) :-
    objection_raised(S),
    commission_consults_relevant_member_state(S),
    operators_consulted_and_presented_views(S),
    commission_considers_authorisation_justified(S).

commission_decides(unjustified, S) :-
    objection_raised(S),
    commission_consults_relevant_member_state(S),
    operators_consulted_and_presented_views(S),
    commission_considers_authorisation_unjustified(S).

must_withdraw_authorisation(Authority, S) :-
    market_surveillance_authority(Authority),
    commission_decides(unjustified, S),
    authorisation_issued(S).

union_harmonisation_legislation_derogation_applies(S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S).

provenance(may_authorise_derogation/2, 'celex:32024R1689/oj#art_46').
provenance(urgency_situation/1, 'celex:32024R1689/oj#art_46').
provenance(puts_into_service_without_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use_and_discard/2, 'celex:32024R1689/oj#art_46').
provenance(authorisation_refused/1, 'celex:32024R1689/oj#art_46').
provenance(authorisation_issued/1, 'celex:32024R1689/oj#art_46').
provenance(must_inform_commission_and_member_states_of_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_46').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_46').
provenance(commission_decides/2, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(union_harmonisation_legislation_derogation_applies/1, 'celex:32024R1689/oj#art_46').
provenance(exceptional_reason/1, 'celex:32024R1689/oj#art_46').
provenance(public_security_reason/1, 'celex:32024R1689/oj#art_46').
provenance(protection_of_life_and_health/1, 'celex:32024R1689/oj#art_46').
provenance(environmental_protection/1, 'celex:32024R1689/oj#art_46').
provenance(protection_of_key_industrial_and_infrastructural_assets/1, 'celex:32024R1689/oj#art_46').
provenance(specific_substantial_imminent_threat_to_life_or_physical_safety/1, 'celex:32024R1689/oj#art_46').
provenance(concludes_compliance_with_chapter_3_section_2/2, 'celex:32024R1689/oj#art_46').
provenance(member_state_objection/1, 'celex:32024R1689/oj#art_46').
provenance(commission_considers_authorisation_justified/1, 'celex:32024R1689/oj#art_46').
provenance(commission_considers_authorisation_unjustified/1, 'celex:32024R1689/oj#art_46').
provenance(commission_consults_relevant_member_state/1, 'celex:32024R1689/oj#art_46').
provenance(operators_consulted_and_presented_views/1, 'celex:32024R1689/oj#art_46').
provenance(must_request_authorisation_without_undue_delay/2, 'celex:32024R1689/oj#art_46').
provenance(placing_on_market_or_putting_into_service/1, 'celex:32024R1689/oj#art_46').
provenance(duly_justified_request/1, 'celex:32024R1689/oj#art_46').
provenance(threat_to_life_or_physical_safety/1, 'celex:32024R1689/oj#art_46').
provenance(specific_threat/1, 'celex:32024R1689/oj#art_46').
provenance(substantial_threat/1, 'celex:32024R1689/oj#art_46').
provenance(imminent_threat/1, 'celex:32024R1689/oj#art_46').
provenance(covers_sensitive_operational_data_law_enforcement/1, 'celex:32024R1689/oj#art_46').
provenance(civil_protection_authority/1, 'celex:32024R1689/oj#art_46').
provenance(puts_into_service/2, 'celex:32024R1689/oj#art_46').
provenance(within_15_calendar_days_of_receipt/1, 'celex:32024R1689/oj#art_46').

references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').
