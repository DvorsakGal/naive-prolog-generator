% unit       : celex:32024R1689/oj#art_26
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ca132bbf6aa55c392914769ec717d7c645c4f263061dfb341f45b5292b66b8e2
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8cfe0ec4d1bd883eed8bc558aa9cb0a77bd43abb4eb7ae8ee8b7e7818942e499
% cached     : False
% title      : Obligations of deployers of high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_26').
:- pred use_in_accordance_with_instructions/2, gloss('deployer uses system per instructions for use'), source('celex:32024R1689/oj#art_26').
:- pred human_oversight_assigned/2, gloss('deployer assigns human oversight to qualified natural persons'), source('celex:32024R1689/oj#art_26').
:- pred competent_natural_person/1, gloss('natural person with necessary competence, training and authority'), source('celex:32024R1689/oj#art_26').
:- pred deployer_exercises_control_over_input_data/2, gloss('deployer controls the input data of the system'), source('celex:32024R1689/oj#art_26').
:- pred input_data_relevant_and_representative/2, gloss('input data is relevant and sufficiently representative for intended purpose'), source('celex:32024R1689/oj#art_26').
:- pred monitor_operation/2, gloss('deployer monitors operation of high-risk AI system'), source('celex:32024R1689/oj#art_26').
:- pred use_may_present_risk/2, gloss('use in accordance with instructions may result in risk'), source('celex:32024R1689/oj#art_26').
:- pred serious_incident_identified/2, gloss('deployer has identified a serious incident'), source('celex:32024R1689/oj#art_26').
:- pred keep_logs/3, gloss('deployer keeps automatically generated logs for specified period'), source('celex:32024R1689/oj#art_26').
:- pred logs_under_deployer_control/2, gloss('logs are under the control of the deployer'), source('celex:32024R1689/oj#art_26').
:- pred employer_deployer/1, gloss('deployer who is an employer'), source('celex:32024R1689/oj#art_26').
:- pred workplace_use/2, gloss('high-risk AI system used at the workplace'), source('celex:32024R1689/oj#art_26').
:- pred public_authority_deployer/1, gloss('deployer that is a public authority'), source('celex:32024R1689/oj#art_26').
:- pred union_institution_deployer/1, gloss('deployer that is a Union institution, body, office or agency'), source('celex:32024R1689/oj#art_26').
:- pred system_registered_in_eu_database/1, gloss('high-risk AI system is registered in the EU database'), source('celex:32024R1689/oj#art_26').
:- pred data_protection_impact_assessment_required/1, gloss('obligation to carry out data protection impact assessment applies'), source('celex:32024R1689/oj#art_26').
:- pred post_remote_biometric_identification_use/2, gloss('deployer uses post-remote biometric identification system for targeted search'), source('celex:32024R1689/oj#art_26').
:- pred authorisation_obtained/2, gloss('authorisation for post-remote biometric identification use obtained'), source('celex:32024R1689/oj#art_26').
:- pred authorisation_rejected/2, gloss('authorisation for post-remote biometric identification use rejected'), source('celex:32024R1689/oj#art_26').
:- pred initial_identification_of_suspect/2, gloss('use for initial identification of potential suspect based on objective facts'), source('celex:32024R1689/oj#art_26').
:- pred use_limited_to_strictly_necessary/2, gloss('use limited to what is strictly necessary for specific criminal offence investigation'), source('celex:32024R1689/oj#art_26').
:- pred untargeted_law_enforcement_use/1, gloss('untargeted use for law enforcement without link to criminal offence'), source('celex:32024R1689/oj#art_26').
:- pred adverse_legal_effect_decision/2, gloss('decision producing adverse legal effect on person based solely on output'), source('celex:32024R1689/oj#art_26').
:- pred use_documented_in_police_file/2, gloss('each use documented in relevant police file'), source('celex:32024R1689/oj#art_26').
:- pred annual_report_submitted/2, gloss('deployer submits annual report on post-remote biometric identification use'), source('celex:32024R1689/oj#art_26').
:- pred decision_related_to_natural_person/2, gloss('high-risk AI system makes or assists decision related to natural person'), source('celex:32024R1689/oj#art_26').
:- pred financial_institution_deployer/1, gloss('deployer that is a financial institution subject to Union financial services law'), source('celex:32024R1689/oj#art_26').
:- pred law_enforcement_deployer/1, gloss('deployer that is a law enforcement authority'), source('celex:32024R1689/oj#art_26').

% Paragraph 1: Use in accordance with instructions for use
must_use_in_accordance_with_instructions(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

use_in_accordance_with_instructions(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S).

provenance(must_use_in_accordance_with_instructions/2, 'celex:32024R1689/oj#art_26').
provenance(use_in_accordance_with_instructions/2, 'celex:32024R1689/oj#art_26').

% Paragraph 2: Assign human oversight
must_assign_human_oversight(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

human_oversight_assigned(D, P) :-
    deployer(D),
    competent_natural_person(P).

competent_natural_person(P) :-
    natural_person(P),
    has_competence(P),
    has_training(P),
    has_authority(P),
    has_support(P).

provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26').
provenance(human_oversight_assigned/2, 'celex:32024R1689/oj#art_26').
provenance(competent_natural_person/1, 'celex:32024R1689/oj#art_26').

% Paragraph 4: Input data relevance and representativeness
must_ensure_input_data_relevant(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    deployer_exercises_control_over_input_data(D, S).

input_data_relevant_and_representative(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    intended_purpose(S),
    input_data(S, D).

provenance(must_ensure_input_data_relevant/2, 'celex:32024R1689/oj#art_26').
provenance(input_data_relevant_and_representative/2, 'celex:32024R1689/oj#art_26').

% Paragraph 5: Monitor operation and inform providers
must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S).

must_inform_provider_of_risk(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    use_may_present_risk(D, S).

must_suspend_use(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    use_may_present_risk(D, S).

must_inform_authorities_of_risk(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    use_may_present_risk(D, S),
    market_surveillance_authority(A).

must_inform_of_serious_incident(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident_identified(D, S).

must_inform_provider_first(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident_identified(D, S).

must_inform_importer_or_distributor(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident_identified(D, S).

must_inform_market_surveillance_of_incident(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident_identified(D, S),
    market_surveillance_authority(A).

% Exception for law enforcement deployers: sensitive operational data
exempt_from_informing_sensitive_operational_data(D, S) :-
    law_enforcement_deployer(D),
    high_risk_ai_system(S),
    sensitive_operational_data(D).

% Financial institutions: monitoring deemed fulfilled by financial services law compliance
monitoring_deemed_fulfilled(D, S) :-
    financial_institution_deployer(D),
    high_risk_ai_system(S).

provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26').
provenance(monitor_operation/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_provider_of_risk/2, 'celex:32024R1689/oj#art_26').
provenance(must_suspend_use/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_authorities_of_risk/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_of_serious_incident/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_provider_first/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_importer_or_distributor/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_market_surveillance_of_incident/2, 'celex:32024R1689/oj#art_26').
provenance(exempt_from_informing_sensitive_operational_data/2, 'celex:32024R1689/oj#art_26').
provenance(monitoring_deemed_fulfilled/2, 'celex:32024R1689/oj#art_26').

% Paragraph 6: Keep logs
must_keep_logs(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    logs_under_deployer_control(S, D).

keep_logs(D, S, period(months(6))) :-
    deployer(D),
    high_risk_ai_system(S),
    logs_under_deployer_control(S, D),
    intended_purpose(S).

keep_logs(D, S, Period) :-
    deployer(D),
    high_risk_ai_system(S),
    logs_under_deployer_control(S, D),
    applicable_law_provides_other_period(Period).

% Financial institutions: maintain logs as part of financial services documentation
must_maintain_logs_as_financial_documentation(D, S) :-
    financial_institution_deployer(D),
    high_risk_ai_system(S).

provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26').
provenance(keep_logs/3, 'celex:32024R1689/oj#art_26').
provenance(must_maintain_logs_as_financial_documentation/2, 'celex:32024R1689/oj#art_26').

% Paragraph 7: Inform workers' representatives and affected workers
must_inform_workers(D, S) :-
    employer_deployer(D),
    high_risk_ai_system(S),
    workplace_use(S, D).

provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26').

% Paragraph 8: Registration obligations for public authorities and Union institutions
must_comply_with_registration(D, S) :-
    public_authority_deployer(D),
    high_risk_ai_system(S).

must_comply_with_registration(D, S) :-
    union_institution_deployer(D),
    high_risk_ai_system(S).

prohibited_use_unregistered_system(D, S) :-
    public_authority_deployer(D),
    high_risk_ai_system(S),
    \+ system_registered_in_eu_database(S).

prohibited_use_unregistered_system(D, S) :-
    union_institution_deployer(D),
    high_risk_ai_system(S),
    \+ system_registered_in_eu_database(S).

must_inform_provider_or_distributor_of_unregistered(D, S) :-
    public_authority_deployer(D),
    high_risk_ai_system(S),
    \+ system_registered_in_eu_database(S).

must_inform_provider_or_distributor_of_unregistered(D, S) :-
    union_institution_deployer(D),
    high_risk_ai_system(S),
    \+ system_registered_in_eu_database(S).

provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_26').
provenance(prohibited_use_unregistered_system/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_provider_or_distributor_of_unregistered/2, 'celex:32024R1689/oj#art_26').

% Paragraph 9: Use information for data protection impact assessment
must_use_information_for_dpia(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    data_protection_impact_assessment_required(S).

provenance(must_use_information_for_dpia/2, 'celex:32024R1689/oj#art_26').

% Paragraph 10: Post-remote biometric identification for law enforcement
must_request_authorisation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    law_enforcement_deployer(D),
    targeted_search_for_person(D, S).

authorisation_obtained(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    judicial_authority(A),
    authorisation_granted_ex_ante(A, D, S).

authorisation_obtained(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    administrative_authority(A),
    authorisation_granted_without_undue_delay(A, D, S),
    within(hours(48)).

% Exception: initial identification of potential suspect
exempt_from_authorisation_requirement(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    initial_identification_of_suspect(D, S),
    objective_and_verifiable_facts(D, S),
    directly_linked_to_offence(D, S).

must_limit_use_to_strictly_necessary(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    specific_criminal_offence_investigation(D, S).

must_stop_use_immediately(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(D, S).

must_delete_personal_data(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(D, S),
    personal_data_linked_to_use(D, S).

prohibited_untargeted_law_enforcement_use(S) :-
    post_remote_biometric_identification_system(S),
    untargeted_law_enforcement_use(S).

prohibited_adverse_legal_effect_decision(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    law_enforcement_authority(A),
    adverse_legal_effect_decision(D, S, A),
    based_solely_on_output(S).

must_document_use_in_police_file(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S).

must_submit_annual_report(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    market_surveillance_authority(A),
    national_data_protection_authority(N).

exempt_from_reporting_sensitive_operational_data(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    law_enforcement_deployer(D),
    sensitive_operational_data(D).

provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_26').
provenance(authorisation_obtained/2, 'celex:32024R1689/oj#art_26').
provenance(exempt_from_authorisation_requirement/2, 'celex:32024R1689/oj#art_26').
provenance(must_limit_use_to_strictly_necessary/2, 'celex:32024R1689/oj#art_26').
provenance(must_stop_use_immediately/2, 'celex:32024R1689/oj#art_26').
provenance(must_delete_personal_data/2, 'celex:32024R1689/oj#art_26').
provenance(prohibited_untargeted_law_enforcement_use/1, 'celex:32024R1689/oj#art_26').
provenance(prohibited_adverse_legal_effect_decision/2, 'celex:32024R1689/oj#art_26').
provenance(must_document_use_in_police_file/2, 'celex:32024R1689/oj#art_26').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_26').
provenance(exempt_from_reporting_sensitive_operational_data/2, 'celex:32024R1689/oj#art_26').

% Paragraph 11: Inform natural persons subject to high-risk AI system
must_inform_natural_persons(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    decision_related_to_natural_person(S, D).

provenance(must_inform_natural_persons/2, 'celex:32024R1689/oj#art_26').

% Paragraph 12: Cooperate with competent authorities
must_cooperate_with_authorities(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    national_competent_authority(A).

provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_26').

% References
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_3').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_6').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_2').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_5/unp_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_5').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj').
