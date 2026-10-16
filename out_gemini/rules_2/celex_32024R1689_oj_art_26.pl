% unit       : celex:32024R1689/oj#art_26
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ca132bbf6aa55c392914769ec717d7c645c4f263061dfb341f45b5292b66b8e2
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 88f759bb49ee0d2286f48bc15592959215fd69dd50d0cc64c33f204d22c4a68f
% cached     : False
% title      : Obligations of deployers of high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_26').
:- pred public_authority/1, gloss('entity is a public authority'), source('celex:32024R1689/oj#art_26').
:- pred employer/1, gloss('entity is an employer'), source('celex:32024R1689/oj#art_26').
:- pred workplace_use/2, gloss('AI system is used or put into service at the workplace by an employer'), source('celex:32024R1689/oj#art_26').
:- pred registered_in_eu_database/1, gloss('AI system is registered in the EU database'), source('celex:32024R1689/oj#art_26').
:- pred judicial_or_administrative_authority/1, gloss('judicial authority or administrative authority whose decision is binding and subject to judicial review'), source('celex:32024R1689/oj#art_26').
:- pred national_data_protection_authority/1, gloss('national supervisory authority responsible for personal data protection'), source('celex:32024R1689/oj#art_26').
:- pred makes_or_assists_decisions_on_persons/1, gloss('AI system makes decisions or assists in making decisions related to natural persons'), source('celex:32024R1689/oj#art_26').
:- pred prohibited_untargeted_post_remote_biometric_identification/1, gloss('untargeted use of post-remote biometric identification for law enforcement is prohibited'), source('celex:32024R1689/oj#art_26').
:- pred prohibited_solely_automated_adverse_decision/2, gloss('adverse legal decision based solely on post-remote biometric identification is prohibited'), source('celex:32024R1689/oj#art_26').
:- pred financial_institution_subject_to_union_financial_law/1, gloss('deployer is a financial institution subject to governance requirements under Union financial services law'), source('celex:32024R1689/oj#art_26').
:- pred competent_authority/1, gloss('competent authority in relation to AI systems'), source('celex:32024R1689/oj#art_26').
:- pred natural_person/1, gloss('natural person'), source('celex:32024R1689/oj#art_26').
:- pred has_human_oversight_competence/1, gloss('natural person has necessary competence, training, authority and support for human oversight'), source('celex:32024R1689/oj#art_26').
:- pred controls_input_data/2, gloss('deployer exercises control over input data for AI system'), source('celex:32024R1689/oj#art_26').
:- pred reason_to_consider_risk/2, gloss('deployer has reason to consider that use in accordance with instructions may result in AI system presenting a risk'), source('celex:32024R1689/oj#art_26').
:- pred identified_serious_incident/2, gloss('deployer has identified a serious incident involving AI system'), source('celex:32024R1689/oj#art_26').
:- pred initial_identification_exception/1, gloss('use is for initial identification of potential suspect based on objective and verifiable facts directly linked to offence'), source('celex:32024R1689/oj#art_26').
:- pred authorisation_rejected/2, gloss('requested authorisation for post-remote biometric identification system has been rejected'), source('celex:32024R1689/oj#art_26').

% Paragraph 1: Measures to ensure use in accordance with instructions for use
must_comply(Deployer, use_in_accordance_with_instructions(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System).

% Paragraph 2: Assignment of human oversight to qualified natural persons
must_comply(Deployer, assign_human_oversight(System, Person)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    natural_person(Person),
    has_human_oversight_competence(Person).

% Paragraph 4: Ensuring relevance and representativeness of input data
must_comply(Deployer, ensure_relevant_and_representative_input_data(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    controls_input_data(Deployer, System).

% Paragraph 5: Monitoring operation
must_comply(Deployer, monitor_operation(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    \+ financial_institution_subject_to_union_financial_law(Deployer).

must_comply(Deployer, monitor_operation_via_internal_governance(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    financial_institution_subject_to_union_financial_law(Deployer).

% Paragraph 5: Reporting risk and suspending use
must_report(Deployer, risk_warning(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    reason_to_consider_risk(Deployer, System).

must_comply(Deployer, suspend_use(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    reason_to_consider_risk(Deployer, System).

% Paragraph 5: Reporting serious incidents
must_report(Deployer, serious_incident(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    identified_serious_incident(Deployer, System).

% Paragraph 6: Keeping logs under deployer control
must_comply(Deployer, keep_logs(System, period(months(6)))) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    control_of_logs(Deployer, System),
    \+ financial_institution_subject_to_union_financial_law(Deployer).

must_comply(Deployer, maintain_logs_financial_law(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    control_of_logs(Deployer, System),
    financial_institution_subject_to_union_financial_law(Deployer).

% Paragraph 7: Informing workers and workers' representatives
must_comply(Employer, inform_workers(System)) :-
    deployer(Employer),
    employer(Employer),
    high_risk_ai_system(System),
    workplace_use(Employer, System).

% Paragraph 8: Registration obligations for public authorities / Union bodies
must_comply(Deployer, registration_obligations(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    public_authority(Deployer).

must_comply(Deployer, registration_obligations(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    union_institution_body_office_agency(Deployer).

must_comply(Deployer, refrain_from_use_and_inform(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    (public_authority(Deployer) ; union_institution_body_office_agency(Deployer)),
    \+ registered_in_eu_database(System).

% Paragraph 10: Requesting authorisation for post-remote biometric identification
must_comply(Deployer, request_authorisation(System, Authority)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System),
    judicial_or_administrative_authority(Authority),
    \+ initial_identification_exception(System).

% Paragraph 10: If authorisation rejected, stop use and delete data
must_comply(Deployer, stop_use_and_delete_data(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System),
    authorisation_rejected(Deployer, System).

% Paragraph 10: Prohibition of untargeted post-remote biometric identification
prohibited_untargeted_post_remote_biometric_identification(System) :-
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System).

% Paragraph 10: Prohibition of solely automated adverse decision by law enforcement
prohibited_solely_automated_adverse_decision(Authority, System) :-
    law_enforcement_authority(Authority),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System).

% Paragraph 10: Document use and make available upon request
must_comply(Deployer, document_in_police_file(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System).

% Paragraph 10: Annual reports on post-remote biometric identification
must_submit_annual_report(Deployer, post_remote_biometric_identification_use(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System).

% Paragraph 11: Informing natural persons subject to AI decisions
must_comply(Deployer, inform_natural_persons(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    makes_or_assists_decisions_on_persons(System).

% Paragraph 12: Cooperation with competent authorities
must_comply(Deployer, cooperate(Authority, System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    competent_authority(Authority).

% Provenance
provenance(must_comply/2, 'celex:32024R1689/oj#art_26').
provenance(must_report/2, 'celex:32024R1689/oj#art_26').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_26').
provenance(prohibited_untargeted_post_remote_biometric_identification/1, 'celex:32024R1689/oj#art_26').
provenance(prohibited_solely_automated_adverse_decision/2, 'celex:32024R1689/oj#art_26').

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
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_5').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj').
