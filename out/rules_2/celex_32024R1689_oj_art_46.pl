% unit       : celex:32024R1689/oj#art_46
% title      : Derogation from conformity assessment procedure
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 19976cfce940b775e3fad4e919e795ce392264c94f8a38dddbc96e311f4af7e7
% model      : gpt-oss:120b-cloud
% prompt sha : 0ddd71b6eae3c5636927717b22597536cc260241ae385cdb094074f292407e4f
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred permitted_authorisation/3, gloss('permission for market surveillance authority to authorise placing on market or putting into service'), source('celex:32024R1689/oj#art_46').
:- pred required_authorisation_conditions/2, gloss('obligation that authorisation be for limited period and conformity assessment without undue delay'), source('celex:32024R1689/oj#art_46').
:- pred permitted_put_into_service_without_authorisation/2, gloss('permission for law‑enforcement or civil protection authorities to put a high‑risk AI system into service without prior authorisation'), source('celex:32024R1689/oj#art_46').
:- pred must_stop_use_and_discard_results/2, gloss('obligation to stop use and discard results if authorisation is refused'), source('celex:32024R1689/oj#art_46').
:- pred permitted_authorisation_deemed_justified/2, gloss('permission that an authorisation is deemed justified when no objection is raised within 15 days'), source('celex:32024R1689/oj#art_46').
:- pred required_consultation_and_decision/3, gloss('obligation for the Commission to consult and decide on the justification of an authorisation'), source('celex:32024R1689/oj#art_46').
:- pred must_withdraw_authorisation/2, gloss('obligation to withdraw an authorisation when the Commission considers it unjustified'), source('celex:32024R1689/oj#art_46').
:- pred required_authorisation_only_under_legislation/1, gloss('obligation that derogations apply only where specific Union harmonisation legislation provides for them'), source('celex:32024R1689/oj#art_46').

% auxiliary predicates introduced for the provision
:- pred specific_high_risk_ai_system/1, gloss('high‑risk AI system that is the object of the derogation'), source('celex:32024R1689/oj#art_46').
:- pred exceptional_reason/1, gloss('exceptional reason justifying derogation'), source('celex:32024R1689/oj#art_46').
:- pred exceptional_reason_applies/2, gloss('exceptional reason applies to a given system'), source('celex:32024R1689/oj#art_46').
:- pred limited_period_authorisation/2, gloss('authorisation is for a limited period'), source('celex:32024R1689/oj#art_46').
:- pred conformity_assessment_without_undue_delay/1, gloss('conformity assessment is carried out without undue delay'), source('celex:32024R1689/oj#art_46').
:- pred civil_protection_authority/1, gloss('civil protection authority'), source('celex:32024R1689/oj#art_46').
:- pred urgency_situation/2, gloss('urgency situation justifying immediate use'), source('celex:32024R1689/oj#art_46').
:- pred authorisation_requested_during_or_after_use_without_undue_delay/1, gloss('authorisation is requested during or after use without undue delay'), source('celex:32024R1689/oj#art_46').
:- pred authorisation_refused/2, gloss('authorisation has been refused'), source('celex:32024R1689/oj#art_46').
:- pred receipt_of_information/2, gloss('market surveillance authority has received information about an authorisation'), source('celex:32024R1689/oj#art_46').
:- pred no_objection_within_15_days/2, gloss('no objection raised within 15 calendar days'), source('celex:32024R1689/oj#art_46').
:- pred objection_raised/2, gloss('objection raised by a Member State or the Commission'), source('celex:32024R1689/oj#art_46').
:- pred receipt_of_notification/2, gloss('Commission has received notification of an authorisation'), source('celex:32024R1689/oj#art_46').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_46').
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_46').
:- pred operators_consulted/2, gloss('operators have been consulted'), source('celex:32024R1689/oj#art_46').
:- pred commission_considers_unjustified/2, gloss('Commission considers the authorisation unjustified'), source('celex:32024R1689/oj#art_46').
:- pred related_to_product_covered_by_legislation/1, gloss('system is related to a product covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_46').

% -----------------------------------------------------------------
% 1. Permission for market surveillance authority to authorise
permitted_authorisation(Authority, placing_on_market, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    specific_high_risk_ai_system(System),
    exceptional_reason(Reason),
    exceptional_reason_applies(Reason, System).

permitted_authorisation(Authority, putting_into_service, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    specific_high_risk_ai_system(System),
    exceptional_reason(Reason),
    exceptional_reason_applies(Reason, System).

% 2. Conditions attached to the authorisation
required_authorisation_conditions(Authority, System) :-
    limited_period_authorisation(Authority, System),
    conformity_assessment_without_undue_delay(System).

% 3. Permission for law‑enforcement or civil protection authorities to act without prior authorisation
permitted_put_into_service_without_authorisation(Authority, System) :-
    (law_enforcement_authority(Authority) ; civil_protection_authority(Authority)),
    high_risk_ai_system(System),
    specific_high_risk_ai_system(System),
    urgency_situation(Authority, System),
    exceptional_reason(public_security),
    authorisation_requested_during_or_after_use_without_undue_delay(System).

% 4. Obligation to stop use and discard results if authorisation is refused
must_stop_use_and_discard_results(Authority, System) :-
    authorisation_refused(Authority, System),
    high_risk_ai_system(System).

% 5. Authorisation is deemed justified when no objection is raised within 15 days
permitted_authorisation_deemed_justified(Authority, System) :-
    receipt_of_information(Authority, System),
    no_objection_within_15_days(Authority, System).

% 6. Commission’s consultation and decision procedure
required_consultation_and_decision(Commission, Authority, System) :-
    objection_raised(Authority, System),
    receipt_of_notification(Authority, System),
    commission(Commission),
    market_surveillance_authority(Authority),
    operators_consulted(Authority, System).

% 7. Withdrawal of authorisation when the Commission finds it unjustified
must_withdraw_authorisation(Authority, System) :-
    commission_considers_unjustified(Commission, System),
    market_surveillance_authority(Authority).

% 8. Derogations apply only where specific Union legislation provides for them
required_authorisation_only_under_legislation(System) :-
    high_risk_ai_system(System),
    related_to_product_covered_by_legislation(System).

% -----------------------------------------------------------------
% Provenance
provenance(permitted_authorisation/3, 'celex:32024R1689/oj#art_46').
provenance(required_authorisation_conditions/2, 'celex:32024R1689/oj#art_46').
provenance(permitted_put_into_service_without_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use_and_discard_results/2, 'celex:32024R1689/oj#art_46').
provenance(permitted_authorisation_deemed_justified/2, 'celex:32024R1689/oj#art_46').
provenance(required_consultation_and_decision/3, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(required_authorisation_only_under_legislation/1, 'celex:32024R1689/oj#art_46').

% -----------------------------------------------------------------
% References (deduplicated)
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').
