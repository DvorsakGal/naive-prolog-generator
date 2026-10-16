% unit       : celex:32024R1689/oj#art_26
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ca132bbf6aa55c392914769ec717d7c645c4f263061dfb341f45b5292b66b8e2
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cca7785d8730988a6f9bf5324cb308e014de3d9ae5f77da51e269751293a038f
% cached     : False
% title      : Obligations of deployers of high-risk AI systems
:- pred must_take_measures/2, gloss('deployer must take technical and organisational measures'), source('celex:32024R1689/oj#art_26/par_1').
:- pred must_assign_human_oversight/1, gloss('deployer must assign human oversight to competent natural persons'), source('celex:32024R1689/oj#art_26/par_2').
:- pred must_ensure_input_data/2, gloss('deployer must ensure input data is relevant and representative'), source('celex:32024R1689/oj#art_26/par_4').
:- pred must_monitor_operation/2, gloss('deployer must monitor operation of high-risk AI system'), source('celex:32024R1689/oj#art_26/par_5').
:- pred must_inform/2, gloss('deployer must inform provider or authority'), source('celex:32024R1689/oj#art_26/par_5').
:- pred must_suspend_use/2, gloss('deployer must suspend use of high-risk AI system'), source('celex:32024R1689/oj#art_26/par_5').
:- pred must_keep_logs/2, gloss('deployer must keep automatically generated logs'), source('celex:32024R1689/oj#art_26/par_6').
:- pred must_inform_workers/2, gloss('employer deployer must inform workers about high-risk AI system use'), source('celex:32024R1689/oj#art_26/par_7').
:- pred must_comply_registration/1, gloss('public authority deployer must comply with registration obligations'), source('celex:32024R1689/oj#art_26/par_8').
:- pred must_not_use_unregistered/2, gloss('deployer must not use unregistered high-risk AI system'), source('celex:32024R1689/oj#art_26/par_8').
:- pred must_use_information/2, gloss('deployer must use information for data protection impact assessment'), source('celex:32024R1689/oj#art_26/par_9').
:- pred must_request_authorisation/2, gloss('deployer must request authorisation for post-remote biometric identification'), source('celex:32024R1689/oj#art_26/par_10').
:- pred must_stop_use/2, gloss('deployer must stop use if authorisation rejected'), source('celex:32024R1689/oj#art_26/par_10').
:- pred must_delete_data/2, gloss('deployer must delete personal data if authorisation rejected'), source('celex:32024R1689/oj#art_26/par_10').
:- pred must_document_use/2, gloss('deployer must document each use of post-remote biometric identification'), source('celex:32024R1689/oj#art_26/par_10').
:- pred must_submit_annual_reports/2, gloss('deployer must submit annual reports on post-remote biometric identification use'), source('celex:32024R1689/oj#art_26/par_10').
:- pred must_inform_natural_persons/2, gloss('deployer must inform natural persons about high-risk AI system use'), source('celex:32024R1689/oj#art_26/par_11').
:- pred must_cooperate/2, gloss('deployer must cooperate with competent authorities'), source('celex:32024R1689/oj#art_26/par_12').

% Paragraph 1
must_take_measures(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(I),
    accompanying(I, S).

% Paragraph 2
must_assign_human_oversight(D) :-
    deployer(D),
    human_oversight_assigned(D).

human_oversight_assigned(D) :-
    natural_person(P),
    has_competence(P),
    has_training(P),
    has_authority(P),
    has_support(P),
    assigned_to(P, D).

% Paragraph 4
must_ensure_input_data(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    exercises_control_over_input_data(D, S),
    input_data_relevant_and_representative(S).

input_data_relevant_and_representative(S) :-
    input_data(Data),
    intended_purpose(S, Purpose),
    relevant(Data, Purpose),
    sufficiently_representative(Data, Purpose).

% Paragraph 5 – monitoring
must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(I),
    accompanying(I, S).

% Paragraph 5 – informing of risk
must_inform(D, risk(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    has_reason_to_consider_risk(D, S),
    (   provider(P) -> inform_without_delay(D, P)
    ;   distributor(Dist) -> inform_without_delay(D, Dist)
    ),
    market_surveillance_authority(A),
    inform_without_delay(D, A).

must_suspend_use(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    has_reason_to_consider_risk(D, S).

% Paragraph 5 – informing of serious incident
must_inform(D, serious_incident(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    identified_serious_incident(D, S),
    provider(P),
    immediately_inform(D, P),
    (   importer(Imp) -> immediately_inform(D, Imp)
    ;   distributor(Dist) -> immediately_inform(D, Dist)
    ),
    market_surveillance_authority(A),
    immediately_inform(D, A).

% Paragraph 5 – sensitive operational data exclusion
must_inform(D, _) :-
    deployer(D),
    law_enforcement_authority(D),
    sensitive_operational_data(Data),
    \+ disclose(Data).

% Paragraph 6 – keep logs
must_keep_logs(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    logs_under_control(D, S),
    period(months(6), minimum).

% Paragraph 7 – inform workers
must_inform_workers(D, S) :-
    deployer(D),
    employer(D),
    high_risk_ai_system(S),
    workers_representatives(R),
    affected_workers(W),
    inform_subject_to_use(D, R, S),
    inform_subject_to_use(D, W, S).

% Paragraph 8 – registration
must_comply_registration(D) :-
    deployer(D),
    public_authority_or_union_body(D).

must_not_use_unregistered(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    \+ registered_in_eu_database(S),
    (   provider(P) -> inform(D, P)
    ;   distributor(Dist) -> inform(D, Dist)
    ).

% Paragraph 9
must_use_information(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    information_provided_under_art_13(Info, S),
    data_protection_impact_assessment_required(D).

% Paragraph 10 – authorisation
must_request_authorisation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    targeted_search_of_person(S),
    criminal_offence(O),
    suspected_or_convicted(Person, O),
    \+ initial_identification_based_on_facts(S).

must_stop_use(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(S).

must_delete_data(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(S),
    personal_data_linked_to_use(Data, S).

% Paragraph 10 – untargeted use prohibition
prohibited_untargeted_law_enforcement_use(S) :-
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    law_enforcement(Purpose),
    untargeted(S),
    \+ link_to_criminal_offence(S),
    \+ link_to_criminal_proceeding(S),
    \+ genuine_threat_of_criminal_offence(S),
    \+ search_for_specific_missing_person(S).

% Paragraph 10 – no adverse decision based solely on output
prohibited_solely_output_based_decision(S) :-
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    law_enforcement_authority(A),
    decision_adverse_legal_effect(Decision, Person),
    based_solely_on_output(Decision, S).

% Paragraph 10 – documentation
must_document_use(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    documented_in_police_file(S).

% Paragraph 10 – annual reports
must_submit_annual_reports(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    market_surveillance_authority(A),
    national_data_protection_authority(DPA),
    submit_annual_report(D, A, S),
    submit_annual_report(D, DPA, S).

% Paragraph 11 – inform natural persons
must_inform_natural_persons(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    annex_iii_system(S),
    makes_or_assists_decisions_about_natural_persons(S),
    natural_person(P),
    inform_subject_to_use(D, P, S).

% Paragraph 12 – cooperation
must_cooperate(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    national_competent_authority(A),
    action_taken_by_authority(A, S).

% Provenance
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_26/par_1').
provenance(must_assign_human_oversight/1, 'celex:32024R1689/oj#art_26/par_2').
provenance(must_ensure_input_data/2, 'celex:32024R1689/oj#art_26/par_4').
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_inform/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_suspend_use/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26/par_6').
provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26/par_7').
provenance(must_comply_registration/1, 'celex:32024R1689/oj#art_26/par_8').
provenance(must_not_use_unregistered/2, 'celex:32024R1689/oj#art_26/par_8').
provenance(must_use_information/2, 'celex:32024R1689/oj#art_26/par_9').
provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_stop_use/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_delete_data/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(prohibited_untargeted_law_enforcement_use/1, 'celex:32024R1689/oj#art_26/par_10').
provenance(prohibited_solely_output_based_decision/1, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_document_use/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_submit_annual_reports/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_inform_natural_persons/2, 'celex:32024R1689/oj#art_26/par_11').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_26/par_12').

% References
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_3').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_6').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj').
