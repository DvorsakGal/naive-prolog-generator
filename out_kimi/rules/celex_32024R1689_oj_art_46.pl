% unit       : celex:32024R1689/oj#art_46
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 19976cfce940b775e3fad4e919e795ce392264c94f8a38dddbc96e311f4af7e7
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8c1aab828f47fcc326030e63dc897051bf5411d6c5254f3086be997ecc843845
% cached     : False
% title      : Derogation from conformity assessment procedure
:- pred permitted_placing_on_market/1, gloss('exceptional authorisation to place high-risk AI system on market'), source('celex:32024R1689/oj#art_46/par_1').
:- pred permitted_putting_into_service/1, gloss('exceptional authorisation to put high-risk AI system into service'), source('celex:32024R1689/oj#art_46/par_1').
:- pred exceptional_reason/1, gloss('public security, life/health, environmental protection, or key assets'), source('celex:32024R1689/oj#art_46/par_1').
:- pred urgency_situation/1, gloss('duly justified urgency for public security or imminent threat'), source('celex:32024R1689/oj#art_46/par_2').
:- pred permitted_putting_into_service_without_authorisation/1, gloss('urgency putting into service without prior authorisation'), source('celex:32024R1689/oj#art_46/par_2').
:- pred must_request_authorisation/2, gloss('authority must request authorisation during or after use'), source('celex:32024R1689/oj#art_46/par_2').
:- pred must_stop_use/2, gloss('operator must stop use if authorisation refused'), source('celex:32024R1689/oj#art_46/par_2').
:- pred must_discard_results/2, gloss('operator must discard results and outputs'), source('celex:32024R1689/oj#art_46/par_2').
:- pred complies_with_chapter_3_section_2/1, gloss('high-risk AI system complies with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_46/par_3').
:- pred must_inform/2, gloss('authority must inform Commission and other Member States'), source('celex:32024R1689/oj#art_46/par_3').
:- pred objection_period_expired/1, gloss('15 calendar days passed with no objection'), source('celex:32024R1689/oj#art_46/par_4').
:- pred deemed_justified/1, gloss('authorisation deemed justified after no objection period'), source('celex:32024R1689/oj#art_46/par_4').
:- pred objection_raised/1, gloss('Member State or Commission raised objection'), source('celex:32024R1689/oj#art_46/par_5').
:- pred commission_consultation_required/1, gloss('Commission must enter consultations'), source('celex:32024R1689/oj#art_46/par_5').
:- pred commission_decides_justified/1, gloss('Commission decides authorisation is justified'), source('celex:32024R1689/oj#art_46/par_5').
:- pred commission_decides_unjustified/1, gloss('Commission decides authorisation is unjustified'), source('celex:32024R1689/oj#art_46/par_6').
:- pred must_withdraw_authorisation/2, gloss('authority must withdraw unjustified authorisation'), source('celex:32024R1689/oj#art_46/par_6').
:- pred union_harmonisation_derogation_applies/1, gloss('only Union harmonisation derogations apply for listed products'), source('celex:32024R1689/oj#art_46/par_7').

permitted_placing_on_market(S) :-
    high_risk_ai_system(S),
    exceptional_reason(R),
    market_surveillance_authority(A),
    duly_justified_request(A, S, R).

permitted_putting_into_service(S) :-
    high_risk_ai_system(S),
    exceptional_reason(R),
    market_surveillance_authority(A),
    duly_justified_request(A, S, R).

exceptional_reason(public_security).
exceptional_reason(protection_of_life_and_health_of_persons).
exceptional_reason(environmental_protection).
exceptional_reason(protection_of_key_industrial_and_infrastructural_assets).

permitted_putting_into_service_without_authorisation(S) :-
    high_risk_ai_system(S),
    urgency_situation(U),
    (law_enforcement_authority(A); civil_protection_authority(A)),
    puts_into_service(A, S, U).

urgency_situation(public_security_urgency).
urgency_situation(substantial_imminent_threat_to_life_or_physical_safety).

must_request_authorisation(A, S) :-
    permitted_putting_into_service_without_authorisation(S),
    (law_enforcement_authority(A); civil_protection_authority(A)),
    puts_into_service(A, S, _),
    \+ authorisation_requested(A, S).

must_stop_use(A, S) :-
    permitted_putting_into_service_without_authorisation(S),
    (law_enforcement_authority(A); civil_protection_authority(A)),
    puts_into_service(A, S, _),
    authorisation_refused(A, S).

must_discard_results(A, S) :-
    permitted_putting_into_service_without_authorisation(S),
    (law_enforcement_authority(A); civil_protection_authority(A)),
    puts_into_service(A, S, _),
    authorisation_refused(A, S).

complies_with_chapter_3_section_2(S) :-
    high_risk_ai_system(S),
    market_surveillance_authority(A),
    concludes_compliance(A, S, chapter_3_section_2).

must_inform(A, commission_and_other_member_states) :-
    market_surveillance_authority(A),
    issues_authorisation(A, S),
    complies_with_chapter_3_section_2(S),
    \+ sensitive_operational_data_law_enforcement(S).

deemed_justified(S) :-
    high_risk_ai_system(S),
    market_surveillance_authority(A),
    issues_authorisation(A, S),
    informs_commission_and_member_states(A, S),
    days_since_receipt(15),
    \+ objection_raised(S).

objection_raised(S) :-
    member_state_objection(S).
objection_raised(S) :-
    commission_objection(S).

commission_consultation_required(S) :-
    high_risk_ai_system(S),
    market_surveillance_authority(A),
    issues_authorisation(A, S),
    informs_commission_and_member_states(A, S),
    days_since_receipt(15),
    (member_state_objection(S); commission_unfounded_conclusion(S); commission_contrary_to_union_law(S)).

commission_decides_justified(S) :-
    commission_consultation_required(S),
    commission_consults(S),
    operators_consulted(S),
    operators_presented_views(S),
    commission_determines(S, justified).

commission_decides_unjustified(S) :-
    commission_consultation_required(S),
    commission_consults(S),
    operators_consulted(S),
    operators_presented_views(S),
    commission_determines(S, unjustified).

must_withdraw_authorisation(A, S) :-
    commission_decides_unjustified(S),
    market_surveillance_authority(A),
    issues_authorisation(A, S).

union_harmonisation_derogation_applies(S) :-
    high_risk_ai_system(S),
    product_covered_by_union_harmonisation_legislation(S, annex_1_section_1).

provenance(permitted_placing_on_market/1, 'celex:32024R1689/oj#art_46/par_1').
provenance(permitted_putting_into_service/1, 'celex:32024R1689/oj#art_46/par_1').
provenance(exceptional_reason/1, 'celex:32024R1689/oj#art_46/par_1').
provenance(permitted_putting_into_service_without_authorisation/1, 'celex:32024R1689/oj#art_46/par_2').
provenance(urgency_situation/1, 'celex:32024R1689/oj#art_46/par_2').
provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_46/par_2').
provenance(must_stop_use/2, 'celex:32024R1689/oj#art_46/par_2').
provenance(must_discard_results/2, 'celex:32024R1689/oj#art_46/par_2').
provenance(complies_with_chapter_3_section_2/1, 'celex:32024R1689/oj#art_46/par_3').
provenance(must_inform/2, 'celex:32024R1689/oj#art_46/par_3').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_46/par_4').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_46/par_5').
provenance(commission_consultation_required/1, 'celex:32024R1689/oj#art_46/par_5').
provenance(commission_decides_justified/1, 'celex:32024R1689/oj#art_46/par_5').
provenance(commission_decides_unjustified/1, 'celex:32024R1689/oj#art_46/par_6').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46/par_6').
provenance(union_harmonisation_derogation_applies/1, 'celex:32024R1689/oj#art_46/par_7').

references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').
