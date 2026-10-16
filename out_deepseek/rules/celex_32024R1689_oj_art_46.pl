% unit       : celex:32024R1689/oj#art_46
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 19976cfce940b775e3fad4e919e795ce392264c94f8a38dddbc96e311f4af7e7
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 22c8e6b367a431502af7e4a58bfec75852e771877995527ebd049f215ba11d1e
% cached     : False
% title      : Derogation from conformity assessment procedure
:- pred derogation_authorisation/1, gloss('authorisation for derogation from conformity assessment'), source('celex:32024R1689/oj#art_46').
:- pred exceptional_reason/1, gloss('exceptional reason of public security, protection of life/health, environment, or key assets'), source('celex:32024R1689/oj#art_46').
:- pred urgency_situation/1, gloss('duly justified situation of urgency'), source('celex:32024R1689/oj#art_46').
:- pred objection_raised/1, gloss('objection raised by Member State or Commission'), source('celex:32024R1689/oj#art_46').

% Paragraph 1: market surveillance authority may authorise placing on market / putting into service
may_authorise_derogation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    exceptional_reason(public_security).
may_authorise_derogation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    exceptional_reason(protection_of_life_and_health).
may_authorise_derogation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    exceptional_reason(environmental_protection).
may_authorise_derogation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    exceptional_reason(protection_of_key_industrial_and_infrastructural_assets).

derogation_authorisation(A) :-
    may_authorise_derogation(_, _),
    authorisation(A).

authorisation_limited_period(A) :-
    derogation_authorisation(A).

must_complete_conformity_assessment_without_undue_delay(System) :-
    derogation_authorisation(_),
    high_risk_ai_system(System).

% Paragraph 2: urgency derogation for law-enforcement / civil protection
may_put_into_service_without_authorisation(Authority, System) :-
    law_enforcement_authority(Authority),
    high_risk_ai_system(System),
    urgency_situation(public_security).
may_put_into_service_without_authorisation(Authority, System) :-
    law_enforcement_authority(Authority),
    high_risk_ai_system(System),
    urgency_situation(threat_to_life_or_physical_safety).
may_put_into_service_without_authorisation(Authority, System) :-
    civil_protection_authority(Authority),
    high_risk_ai_system(System),
    urgency_situation(public_security).
may_put_into_service_without_authorisation(Authority, System) :-
    civil_protection_authority(Authority),
    high_risk_ai_system(System),
    urgency_situation(threat_to_life_or_physical_safety).

must_request_authorisation_without_undue_delay(Authority, System) :-
    may_put_into_service_without_authorisation(Authority, System).

must_stop_use_immediately(System) :-
    may_put_into_service_without_authorisation(_, System),
    \+ derogation_authorisation(_).

must_discard_results_immediately(System) :-
    must_stop_use_immediately(System).

% Paragraph 3: conditions for issuing authorisation
must_comply_with_section_2(System) :-
    derogation_authorisation(_),
    high_risk_ai_system(System).

must_inform_commission_and_member_states(Authority, authorisation(A)) :-
    market_surveillance_authority(Authority),
    derogation_authorisation(A).

must_not_cover_sensitive_operational_data(Authority, authorisation(A)) :-
    must_inform_commission_and_member_states(Authority, authorisation(A)),
    law_enforcement_authority(_).

% Paragraph 4: deemed justified if no objection within 15 days
deemed_justified_authorisation(A) :-
    derogation_authorisation(A),
    \+ objection_raised(A).

% Paragraph 5: objections and Commission consultation
must_enter_into_consultations(commission, MemberState) :-
    objection_raised(A),
    derogation_authorisation(A),
    issued_by(A, MemberState).

must_consult_operators(commission, Operators) :-
    must_enter_into_consultations(commission, _),
    operator(Operators).

must_decide_justification(commission, A) :-
    must_enter_into_consultations(commission, _),
    derogation_authorisation(A).

must_address_decision(commission, MemberState) :-
    must_decide_justification(commission, _),
    issued_by(_, MemberState).

must_address_decision_to_operators(commission, Operators) :-
    must_decide_justification(commission, _),
    operator(Operators).

% Paragraph 6: withdrawal if unjustified
must_withdraw_authorisation(Authority, A) :-
    market_surveillance_authority(Authority),
    derogation_authorisation(A),
    unjustified_authorisation(A).

unjustified_authorisation(A) :-
    derogation_authorisation(A),
    \+ deemed_justified_authorisation(A).

% Paragraph 7: products covered by Annex I Section A
derogation_only_under_harmonisation_legislation(System) :-
    high_risk_ai_system(System),
    product_covered_by_annex_i_section_a(System).

% Provenance
provenance(derogation_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(exceptional_reason/1, 'celex:32024R1689/oj#art_46').
provenance(urgency_situation/1, 'celex:32024R1689/oj#art_46').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_46').
provenance(may_authorise_derogation/2, 'celex:32024R1689/oj#art_46').
provenance(authorisation_limited_period/1, 'celex:32024R1689/oj#art_46').
provenance(must_complete_conformity_assessment_without_undue_delay/1, 'celex:32024R1689/oj#art_46').
provenance(may_put_into_service_without_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_request_authorisation_without_undue_delay/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use_immediately/1, 'celex:32024R1689/oj#art_46').
provenance(must_discard_results_immediately/1, 'celex:32024R1689/oj#art_46').
provenance(must_comply_with_section_2/1, 'celex:32024R1689/oj#art_46').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_46').
provenance(must_not_cover_sensitive_operational_data/2, 'celex:32024R1689/oj#art_46').
provenance(deemed_justified_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(must_enter_into_consultations/2, 'celex:32024R1689/oj#art_46').
provenance(must_consult_operators/2, 'celex:32024R1689/oj#art_46').
provenance(must_decide_justification/2, 'celex:32024R1689/oj#art_46').
provenance(must_address_decision/2, 'celex:32024R1689/oj#art_46').
provenance(must_address_decision_to_operators/2, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(unjustified_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(derogation_only_under_harmonisation_legislation/1, 'celex:32024R1689/oj#art_46').

% References
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').
