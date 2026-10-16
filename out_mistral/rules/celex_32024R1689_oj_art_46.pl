% unit       : celex:32024R1689/oj#art_46
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 19976cfce940b775e3fad4e919e795ce392264c94f8a38dddbc96e311f4af7e7
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1ba18a383ec2ba936180b03309de2708721a8dad4d49fec3f6ea23432cd33479
% cached     : False
% title      : Derogation from conformity assessment procedure
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_46').
:- pred derogation_authorisation/2, gloss('authorisation for derogation from conformity assessment for a specific high-risk AI system'), source('celex:32024R1689/oj#art_46').
:- pred exceptional_reason/1, gloss('exceptional reason justifying derogation: public security, protection of life and health, environmental protection, or protection of key industrial and infrastructural assets'), source('celex:32024R1689/oj#art_46').
:- pred limited_period_authorisation/2, gloss('authorisation limited to the period while conformity assessment procedures are being carried out'), source('celex:32024R1689/oj#art_46').
:- pred urgency_situation/1, gloss('duly justified situation of urgency for exceptional reasons of public security or specific substantial and imminent threat to life or physical safety'), source('celex:32024R1689/oj#art_46').
:- pred put_into_service_without_authorisation/2, gloss('putting a specific high-risk AI system into service without prior authorisation in urgency situation'), source('celex:32024R1689/oj#art_46').
:- pred authorisation_requested_without_undue_delay/2, gloss('authorisation requested during or after use without undue delay'), source('celex:32024R1689/oj#art_46').
:- pred authorisation_refused/1, gloss('authorisation under Article 46(1) has been refused'), source('celex:32024R1689/oj#art_46').
:- pred use_stopped_immediately/1, gloss('use of the high-risk AI system stopped with immediate effect'), source('celex:32024R1689/oj#art_46').
:- pred results_and_outputs_discarded/1, gloss('all results and outputs of such use immediately discarded'), source('celex:32024R1689/oj#art_46').
:- pred authorisation_issued_only_if_compliant/2, gloss('authorisation issued only if market surveillance authority concludes system complies with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_46').
:- pred must_inform_commission_and_member_states/2, gloss('market surveillance authority must inform Commission and other Member States of authorisation issued'), source('celex:32024R1689/oj#art_46').
:- pred sensitive_operational_data_exemption/1, gloss('obligation to inform does not cover sensitive operational data of law-enforcement activities'), source('celex:32024R1689/oj#art_46').
:- pred authorisation_deemed_justified/1, gloss('authorisation deemed justified if no objection within 15 calendar days'), source('celex:32024R1689/oj#art_46').
:- pred no_objection_within_period/2, gloss('no objection raised by Member State or Commission within 15 calendar days of receipt of information'), source('celex:32024R1689/oj#art_46').
:- pred objection_raised/2, gloss('objection raised by Member State or Commission considers authorisation contrary to Union law or compliance conclusion unfounded'), source('celex:32024R1689/oj#art_46').
:- pred commission_consultation/2, gloss('Commission enters into consultations with relevant Member State'), source('celex:32024R1689/oj#art_46').
:- pred operators_consulted/1, gloss('operators concerned are consulted and have possibility to present their views'), source('celex:32024R1689/oj#art_46').
:- pred commission_decides_justification/1, gloss('Commission decides whether authorisation is justified'), source('celex:32024R1689/oj#art_46').
:- pred authorisation_withdrawn/1, gloss('authorisation withdrawn by market surveillance authority when Commission considers it unjustified'), source('celex:32024R1689/oj#art_46').
:- pred union_harmonisation_legislation_derogation_only/1, gloss('for high-risk AI systems related to products covered by Union harmonisation legislation, only derogations from that legislation apply'), source('celex:32024R1689/oj#art_46').

% Article 46(1): Market surveillance authority may authorise placing on market or putting into service
derogation_authorisation(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    duly_justified_request(S),
    exceptional_reason(Reason),
    authorises_placing_or_putting(Authority, S, Reason).

duly_justified_request(S) :-
    high_risk_ai_system(S).

exceptional_reason(public_security).
exceptional_reason(protection_of_life_and_health).
exceptional_reason(environmental_protection).
exceptional_reason(protection_of_key_industrial_and_infrastructural_assets).

authorises_placing_or_putting(Authority, S, Reason) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    exceptional_reason(Reason),
    limited_period_authorisation(Authority, S),
    conformity_assessment_undertaken_without_undue_delay(S).

limited_period_authorisation(Authority, S) :-
    derogation_authorisation(Authority, S),
    period_while_conformity_assessment(S).

period_while_conformity_assessment(S) :-
    high_risk_ai_system(S),
    conformity_assessment(S).

conformity_assessment_undertaken_without_undue_delay(S) :-
    high_risk_ai_system(S).

% Article 46(2): Urgency - law enforcement or civil protection may put into service without authorisation
put_into_service_without_authorisation(Authority, S) :-
    law_enforcement_authority(Authority),
    high_risk_ai_system(S),
    urgency_situation(S).

put_into_service_without_authorisation(Authority, S) :-
    civil_protection_authority(Authority),
    high_risk_ai_system(S),
    urgency_situation(S).

:- pred civil_protection_authority/1, gloss('public authority for civil protection'), source('celex:32024R1689/oj#art_46').

urgency_situation(S) :-
    high_risk_ai_system(S),
    exceptional_reason(public_security),
    duly_justified_urgency(S).

urgency_situation(S) :-
    high_risk_ai_system(S),
    specific_substantial_imminent_threat_to_life_or_physical_safety(S).

specific_substantial_imminent_threat_to_life_or_physical_safety(S) :-
    high_risk_ai_system(S).

authorisation_requested_without_undue_delay(Authority, S) :-
    put_into_service_without_authorisation(Authority, S),
    request_authorisation_during_or_after_use(Authority, S).

request_authorisation_during_or_after_use(Authority, S) :-
    put_into_service_without_authorisation(Authority, S).

% If authorisation refused: stop use and discard results
use_stopped_immediately(S) :-
    put_into_service_without_authorisation(_Authority, S),
    authorisation_refused(S).

results_and_outputs_discarded(S) :-
    put_into_service_without_authorisation(_Authority, S),
    authorisation_refused(S).

authorisation_refused(S) :-
    high_risk_ai_system(S),
    \+ derogation_authorisation(_, S).

% Article 46(3): Authorisation only if compliant; must inform Commission and Member States
authorisation_issued_only_if_compliant(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    concludes_compliance_with_chapter_3_section_2(Authority, S),
    derogation_authorisation(Authority, S).

concludes_compliance_with_chapter_3_section_2(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S).

must_inform_commission_and_member_states(Authority, authorisation(S)) :-
    market_surveillance_authority(Authority),
    derogation_authorisation(Authority, S),
    \+ sensitive_operational_data_exemption(authorisation(S)).

sensitive_operational_data_exemption(authorisation(S)) :-
    high_risk_ai_system(S),
    sensitive_operational_data(S),
    law_enforcement_authority(_).

% Article 46(4): Deemed justified if no objection within 15 days
authorisation_deemed_justified(authorisation(S)) :-
    derogation_authorisation(Authority, S),
    must_inform_commission_and_member_states(Authority, authorisation(S)),
    no_objection_within_period(authorisation(S), days(15)).

no_objection_within_period(authorisation(S), Period) :-
    derogation_authorisation(_, S),
    period(Period).

period(days(15)).

% Article 46(5): Objections trigger Commission consultation and decision
objection_raised(authorisation(S), member_state) :-
    derogation_authorisation(Authority, S),
    market_surveillance_authority(Authority),
    objection_by_member_state(authorisation(S)).

objection_raised(authorisation(S), commission) :-
    derogation_authorisation(_, S),
    commission_considers_contrary_to_union_law(authorisation(S)).

objection_raised(authorisation(S), commission) :-
    derogation_authorisation(_, S),
    commission_considers_compliance_conclusion_unfounded(authorisation(S)).

objection_by_member_state(authorisation(S)) :-
    derogation_authorisation(_, S).

commission_considers_contrary_to_union_law(authorisation(S)) :-
    derogation_authorisation(_, S).

commission_considers_compliance_conclusion_unfounded(authorisation(S)) :-
    derogation_authorisation(_, S).

commission_consultation(authorisation(S), MemberState) :-
    objection_raised(authorisation(S), _),
    derogation_authorisation(Authority, S),
    market_surveillance_authority(Authority),
    member_state_of(Authority, MemberState).

member_state_of(Authority, MemberState) :-
    market_surveillance_authority(Authority),
    member_state(MemberState).

:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_46').

operators_consulted(authorisation(S)) :-
    objection_raised(authorisation(S), _),
    derogation_authorisation(_, S),
    operator(Operator),
    consulted(Operator, authorisation(S)).

consulted(Operator, authorisation(S)) :-
    operator(Operator),
    high_risk_ai_system(S).

commission_decides_justification(authorisation(S)) :-
    objection_raised(authorisation(S), _),
    derogation_authorisation(_, S).

% Article 46(6): Withdrawal if unjustified
authorisation_withdrawn(authorisation(S)) :-
    commission_decides_justification(authorisation(S)),
    commission_considers_unjustified(authorisation(S)),
    derogation_authorisation(Authority, S),
    market_surveillance_authority(Authority).

commission_considers_unjustified(authorisation(S)) :-
    commission_decides_justification(authorisation(S)),
    \+ authorisation_deemed_justified(authorisation(S)).

% Article 46(7): Union harmonisation legislation derogations only
union_harmonisation_legislation_derogation_only(S) :-
    high_risk_ai_system(S),
    related_to_product_covered_by_union_harmonisation_legislation(S).

related_to_product_covered_by_union_harmonisation_legislation(S) :-
    high_risk_ai_system(S).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_46').
provenance(derogation_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(exceptional_reason/1, 'celex:32024R1689/oj#art_46').
provenance(limited_period_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(urgency_situation/1, 'celex:32024R1689/oj#art_46').
provenance(put_into_service_without_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(civil_protection_authority/1, 'celex:32024R1689/oj#art_46').
provenance(authorisation_requested_without_undue_delay/2, 'celex:32024R1689/oj#art_46').
provenance(authorisation_refused/1, 'celex:32024R1689/oj#art_46').
provenance(use_stopped_immediately/1, 'celex:32024R1689/oj#art_46').
provenance(results_and_outputs_discarded/1, 'celex:32024R1689/oj#art_46').
provenance(authorisation_issued_only_if_compliant/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_46').
provenance(sensitive_operational_data_exemption/1, 'celex:32024R1689/oj#art_46').
provenance(authorisation_deemed_justified/1, 'celex:32024R1689/oj#art_46').
provenance(no_objection_within_period/2, 'celex:32024R1689/oj#art_46').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_46').
provenance(commission_consultation/2, 'celex:32024R1689/oj#art_46').
provenance(operators_consulted/1, 'celex:32024R1689/oj#art_46').
provenance(commission_decides_justification/1, 'celex:32024R1689/oj#art_46').
provenance(authorisation_withdrawn/1, 'celex:32024R1689/oj#art_46').
provenance(union_harmonisation_legislation_derogation_only/1, 'celex:32024R1689/oj#art_46').
provenance(member_state/1, 'celex:32024R1689/oj#art_46').

% References
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').
