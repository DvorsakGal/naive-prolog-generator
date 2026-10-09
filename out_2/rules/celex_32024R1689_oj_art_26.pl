% unit       : celex:32024R1689/oj#art_26
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ca132bbf6aa55c392914769ec717d7c645c4f263061dfb341f45b5292b66b8e2
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f031f36d5e5d1132d6cd9724521b77c1024cdf1cbd472ef7828234baad1f9801
% cached     : False
% title      : Obligations of deployers of high-risk AI systems
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('art_26').
:- pred controls_input_data/2, gloss('deployer controls input data of system'), source('art_26').
:- pred human_oversight_assigned/2, gloss('human oversight assigned to person'), source('art_26').
:- pred financial_institution/1, gloss('financial institution'), source('art_26').
:- pred employer/1, gloss('employer'), source('art_26').
:- pred public_authority/1, gloss('public authority, Union institution, body, office or agency'), source('art_26').

must_take_measures(Deployer, use_in_accordance(instructions_for_use, System)) :-
    deployer(Deployer),
    high_risk_ai_system(System).

provenance(must_take_measures/2, 'celex:32024R1689/oj#art_26').

must_assign_human_oversight(Deployer, Person) :-
    deployer(Deployer),
    human(Person),
    competence(Person),
    training(Person),
    authority(Person),
    support(Person).

provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26').

must_ensure(Deployer, input_data_relevant_and_representative(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    controls_input_data(Deployer, System).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_26').

must_monitor_operation(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    instructions_for_use(System).

provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26').

must_inform(Deployer, provider, risk_of_non_compliance) :-
    deployer(Deployer),
    high_risk_ai_system(_),
    reason_to_consider_risk(Deployer).

provenance(must_inform/3, 'celex:32024R1689/oj#art_26').

must_inform(Deployer, distributor, risk_of_non_compliance) :-
    deployer(Deployer),
    high_risk_ai_system(_),
    reason_to_consider_risk(Deployer).

provenance(must_inform/3, 'celex:32024R1689/oj#art_26').

must_inform(Deployer, market_surveillance_authority, risk_of_non_compliance) :-
    deployer(Deployer),
    high_risk_ai_system(_),
    reason_to_consider_risk(Deployer).

provenance(must_inform/3, 'celex:32024R1689/oj#art_26').

must_suspend_use(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    reason_to_consider_risk(Deployer).

provenance(must_suspend_use/2, 'celex:32024R1689/oj#art_26').

must_inform(Deployer, provider, serious_incident) :-
    deployer(Deployer),
    serious_incident(_).

provenance(must_inform/3, 'celex:32024R1689/oj#art_26').

must_inform(Deployer, importer_or_distributor, serious_incident) :-
    deployer(Deployer),
    serious_incident(_).

provenance(must_inform/3, 'celex:32024R1689/oj#art_26').

must_inform(Deployer, market_surveillance_authority, serious_incident) :-
    deployer(Deployer),
    serious_incident(_).

provenance(must_inform/3, 'celex:32024R1689/oj#art_26').

exempt_sensitive_operational_data(Deployer) :-
    deployer(Deployer),
    law_enforcement_authority(Deployer).

provenance(exempt_sensitive_operational_data/1, 'celex:32024R1689/oj#art_26').

exempt_monitoring_obligation(Deployer) :-
    deployer(Deployer),
    financial_institution(Deployer).

provenance(exempt_monitoring_obligation/1, 'celex:32024R1689/oj#art_26').

must_keep_logs(Deployer, System, period(months(6))) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    logs_automatically_generated(System).

provenance(must_keep_logs/3, 'celex:32024R1689/oj#art_26').

must_inform(Deployer, workers_representatives_and_workers, upcoming_use) :-
    employer(Deployer),
    before_putting_into_service(Deployer).

provenance(must_inform/3, 'celex:32024R1689/oj#art_26').

must_comply(Deployer, registration_obligations) :-
    public_authority(Deployer).

provenance(must_comply/2, 'celex:32024R1689/oj#art_26').

must_not_use(Deployer, System) :-
    public_authority(Deployer),
    high_risk_ai_system(System),
    \+ registered_in_eu_database(System).

provenance(must_not_use/2, 'celex:32024R1689/oj#art_26').

must_inform(Deployer, provider_or_distributor, not_registered) :-
    public_authority(Deployer),
    high_risk_ai_system(System),
    \+ registered_in_eu_database(System).

provenance(must_inform/3, 'celex:32024R1689/oj#art_26').

must_use_information(Deployer, data_protection_impact_assessment) :-
    deployer(Deployer),
    information_provided_under_art_13(_).

provenance(must_use_information/2, 'celex:32024R1689/oj#art_26').

must_request_authorisation(Deployer, System, period(hours(48))) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System),
    investigation_targeted(Deployer, System).

provenance(must_request_authorisation/3, 'celex:32024R1689/oj#art_26').

must_stop_use(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System),
    authorisation_rejected(Deployer, System).

provenance(must_stop_use/2, 'celex:32024R1689/oj#art_26').

must_delete_personal_data(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System),
    authorisation_rejected(Deployer, System).

provenance(must_delete_personal_data/2, 'celex:32024R1689/oj#art_26').

prohibited_untargeted_law_enforcement_use(System) :-
    post_remote_biometric_identification_system(System).

provenance(prohibited_untargeted_law_enforcement_use/1, 'celex:32024R1689/oj#art_26').

must_document_use(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).

provenance(must_document_use/2, 'celex:32024R1689/oj#art_26').

must_make_available(Deployer, System, authorities) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System),
    authorities = [market_surveillance_authority, national_data_protection_authority],
    \+ sensitive_operational_data_related_to_law_enforcement(System).

provenance(must_make_available/3, 'celex:32024R1689/oj#art_26').

must_submit_annual_report(Deployer, post_remote_biometric_identification_system) :-
    deployer(Deployer).

provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_26').

must_inform(Deployer, natural_person, subject_to_use) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    makes_decisions_related_to_natural_persons(System).

provenance(must_inform/3, 'celex:32024R1689/oj#art_26').

must_cooperate(Deployer, competent_authorities) :-
    deployer(Deployer).

provenance(must_cooperate/2, 'celex:32024R1689/oj#art_26').

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
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_5').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj').
