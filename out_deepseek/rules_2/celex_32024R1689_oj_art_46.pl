% unit       : celex:32024R1689/oj#art_46
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 19976cfce940b775e3fad4e919e795ce392264c94f8a38dddbc96e311f4af7e7
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : deb217c40380e0b0b3f7e13bf18fc490d1acf84bf89b50ea2613809fcf41dd72
% cached     : False
% title      : Derogation from conformity assessment procedure
:- pred derogation_authorisation/1, gloss('authorisation to derogate from conformity assessment procedure'), source('celex:32024R1689/oj#art_46').
:- pred exceptional_reason/1, gloss('exceptional reason of public security, protection of life/health, environment, or key assets'), source('celex:32024R1689/oj#art_46').
:- pred urgency_situation/1, gloss('duly justified situation of urgency'), source('celex:32024R1689/oj#art_46').
:- pred imminent_threat/1, gloss('specific, substantial and imminent threat to life or physical safety'), source('celex:32024R1689/oj#art_46').
:- pred law_enforcement_or_civil_protection_authority/1, gloss('law-enforcement authority or civil protection authority'), source('celex:32024R1689/oj#art_46').
:- pred must_authorise_placing_on_market_or_putting_into_service/2, gloss('market surveillance authority may authorise placing on market or putting into service'), source('celex:32024R1689/oj#art_46').
:- pred must_put_into_service_without_authorisation/2, gloss('law-enforcement or civil protection authority may put into service without prior authorisation'), source('celex:32024R1689/oj#art_46').
:- pred must_request_authorisation/2, gloss('authority must request authorisation during or after use without undue delay'), source('celex:32024R1689/oj#art_46').
:- pred must_stop_use_and_discard_outputs/2, gloss('authority must stop use and discard results if authorisation refused'), source('celex:32024R1689/oj#art_46').
:- pred must_inform_commission_and_member_states_of_authorisation/2, gloss('market surveillance authority must inform Commission and Member States of authorisation'), source('celex:32024R1689/oj#art_46').
:- pred must_consult_and_decide/2, gloss('Commission must consult and decide on objections'), source('celex:32024R1689/oj#art_46').
:- pred must_withdraw_authorisation/2, gloss('market surveillance authority must withdraw authorisation if Commission deems it unjustified'), source('celex:32024R1689/oj#art_46').
:- pred product_harmonisation_legislation_applies/1, gloss('product covered by Union harmonisation legislation in Annex I Section A'), source('celex:32024R1689/oj#art_46').

% Paragraph 1
must_authorise_placing_on_market_or_putting_into_service(Authority, authorisation(System, Period)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    exceptional_reason(Reason),
    derogation_authorisation(authorisation(System, Period)),
    limited_period(Period),
    conformity_assessment_procedures_ongoing(System).

derogation_authorisation(authorisation(System, Period)) :-
    high_risk_ai_system(System),
    exceptional_reason(_),
    limited_period(Period).

exceptional_reason(public_security).
exceptional_reason(protection_of_life_and_health).
exceptional_reason(environmental_protection).
exceptional_reason(protection_of_key_industrial_and_infrastructural_assets).

limited_period(Period) :-
    nonvar(Period).

conformity_assessment_procedures_ongoing(System) :-
    high_risk_ai_system(System).

% Paragraph 2
must_put_into_service_without_authorisation(Authority, System) :-
    law_enforcement_or_civil_protection_authority(Authority),
    high_risk_ai_system(System),
    urgency_situation(urgency(public_security)),
    imminent_threat(threat_to_life_or_physical_safety).

must_put_into_service_without_authorisation(Authority, System) :-
    law_enforcement_or_civil_protection_authority(Authority),
    high_risk_ai_system(System),
    urgency_situation(urgency(public_security)),
    imminent_threat(threat_to_life_or_physical_safety),
    must_request_authorisation(Authority, System).

must_request_authorisation(Authority, System) :-
    law_enforcement_or_civil_protection_authority(Authority),
    high_risk_ai_system(System),
    \+ authorisation_refused(System).

must_stop_use_and_discard_outputs(Authority, System) :-
    law_enforcement_or_civil_protection_authority(Authority),
    high_risk_ai_system(System),
    authorisation_refused(System).

authorisation_refused(System) :-
    high_risk_ai_system(System),
    \+ derogation_authorisation(authorisation(System, _)).

law_enforcement_or_civil_protection_authority(Authority) :-
    law_enforcement_authority(Authority).
law_enforcement_or_civil_protection_authority(Authority) :-
    % civil protection authority is not in the frozen signature; declare it
    :- pred civil_protection_authority/1, gloss('civil protection authority'), source('celex:32024R1689/oj#art_46').
    civil_protection_authority(Authority).

urgency_situation(urgency(public_security)).
imminent_threat(threat_to_life_or_physical_safety).

% Paragraph 3
must_inform_commission_and_member_states_of_authorisation(Authority, authorisation(System, _)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    derogation_authorisation(authorisation(System, _)),
    system_complies_with_section_2(System).

system_complies_with_section_2(System) :-
    high_risk_ai_system(System).

% Paragraph 4
derogation_authorisation(authorisation(System, _)) :-
    high_risk_ai_system(System),
    market_surveillance_authority(Authority),
    must_inform_commission_and_member_states_of_authorisation(Authority, authorisation(System, _)),
    no_objection_within_15_days(authorisation(System, _)).

no_objection_within_15_days(authorisation(System, _)) :-
    high_risk_ai_system(System).

% Paragraph 5
must_consult_and_decide(Commission, authorisation(System, _)) :-
    ai_office(Commission),
    high_risk_ai_system(System),
    objection_raised(authorisation(System, _)).

objection_raised(authorisation(System, _)) :-
    high_risk_ai_system(System).

% Paragraph 6
must_withdraw_authorisation(Authority, authorisation(System, _)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    commission_deems_unjustified(authorisation(System, _)).

commission_deems_unjustified(authorisation(System, _)) :-
    high_risk_ai_system(System).

% Paragraph 7
product_harmonisation_legislation_applies(System) :-
    high_risk_ai_system(System),
    % product covered by Annex I Section A harmonisation legislation
    true.

% Provenance
provenance(derogation_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(exceptional_reason/1, 'celex:32024R1689/oj#art_46').
provenance(urgency_situation/1, 'celex:32024R1689/oj#art_46').
provenance(imminent_threat/1, 'celex:32024R1689/oj#art_46').
provenance(law_enforcement_or_civil_protection_authority/1, 'celex:32024R1689/oj#art_46').
provenance(must_authorise_placing_on_market_or_putting_into_service/2, 'celex:32024R1689/oj#art_46').
provenance(must_put_into_service_without_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use_and_discard_outputs/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform_commission_and_member_states_of_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_consult_and_decide/2, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(product_harmonisation_legislation_applies/1, 'celex:32024R1689/oj#art_46').

% References
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').
