% unit       : celex:32024R1689/oj#art_26
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ca132bbf6aa55c392914769ec717d7c645c4f263061dfb341f45b5292b66b8e2
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : b667bb38f4cd05c7847248e4ae6cf4623c2a0c38dec4be9cfa5300f39328dd8b
% cached     : False
% title      : Obligations of deployers of high-risk AI systems
:- pred must_use_in_accordance_with_instructions/2, gloss('deployer must use high-risk AI system in accordance with instructions for use'), source('celex:32024R1689/oj#art_26/par_1').
:- pred must_assign_human_oversight/2, gloss('deployer must assign human oversight to competent natural persons'), source('celex:32024R1689/oj#art_26/par_2').
:- pred must_ensure_input_data_quality/2, gloss('deployer must ensure input data is relevant and representative'), source('celex:32024R1689/oj#art_26/par_4').
:- pred must_monitor_operation/2, gloss('deployer must monitor operation of high-risk AI system'), source('celex:32024R1689/oj#art_26/par_5').
:- pred must_inform_of_risk/3, gloss('deployer must inform provider or distributor and market surveillance authority of risk'), source('celex:32024R1689/oj#art_26/par_5').
:- pred must_inform_of_serious_incident/3, gloss('deployer must inform provider, importer or distributor and market surveillance authority of serious incident'), source('celex:32024R1689/oj#art_26/par_5').
:- pred must_suspend_use/2, gloss('deployer must suspend use of high-risk AI system'), source('celex:32024R1689/oj#art_26/par_5').
:- pred must_keep_logs/2, gloss('deployer must keep automatically generated logs'), source('celex:32024R1689/oj#art_26/par_6').
:- pred must_inform_workers/2, gloss('employer-deployer must inform workers and representatives of AI system use'), source('celex:32024R1689/oj#art_26/par_7').
:- pred must_comply_with_registration/2, gloss('public authority deployer must comply with registration obligations'), source('celex:32024R1689/oj#art_26/par_8').
:- pred must_not_use_unregistered_system/2, gloss('deployer must not use unregistered high-risk AI system'), source('celex:32024R1689/oj#art_26/par_8').
:- pred must_inform_of_unregistered_system/2, gloss('deployer must inform provider or distributor of unregistered system'), source('celex:32024R1689/oj#art_26/par_8').
:- pred must_use_transparency_information/2, gloss('deployer must use transparency information for data protection impact assessment'), source('celex:32024R1689/oj#art_26/par_9').
:- pred must_request_authorisation/2, gloss('deployer must request authorisation for post-remote biometric identification'), source('celex:32024R1689/oj#art_26/par_10').
:- pred must_stop_use_on_rejection/2, gloss('deployer must stop use and delete data if authorisation rejected'), source('celex:32024R1689/oj#art_26/par_10').
:- pred must_document_use/2, gloss('deployer must document each use in police file'), source('celex:32024R1689/oj#art_26/par_10').
:- pred must_submit_annual_reports/2, gloss('deployer must submit annual reports on post-remote biometric identification use'), source('celex:32024R1689/oj#art_26/par_10').
:- pred must_inform_natural_persons/2, gloss('deployer must inform natural persons of AI system use in decisions'), source('celex:32024R1689/oj#art_26/par_11').
:- pred must_cooperate_with_authorities/2, gloss('deployer must cooperate with competent authorities'), source('celex:32024R1689/oj#art_26/par_12').
:- pred exercises_control_over_input_data/2, gloss('deployer exercises control over input data'), source('celex:32024R1689/oj#art_26/par_4').
:- pred has_reason_to_consider_risk/2, gloss('deployer has reason to consider use may result in risk'), source('celex:32024R1689/oj#art_26/par_5').
:- pred has_identified_serious_incident/2, gloss('deployer has identified a serious incident'), source('celex:32024R1689/oj#art_26/par_5').
:- pred cannot_reach_provider/2, gloss('deployer is not able to reach the provider'), source('celex:32024R1689/oj#art_26/par_5').
:- pred financial_institution_deployer/1, gloss('deployer is a financial institution subject to Union financial services law'), source('celex:32024R1689/oj#art_26/par_5').
:- pred employer_deployer/1, gloss('deployer is an employer'), source('celex:32024R1689/oj#art_26/par_7').
:- pred public_authority_deployer/1, gloss('deployer is a public authority or Union institution'), source('celex:32024R1689/oj#art_26/par_8').
:- pred post_remote_biometric_identification_deployer/1, gloss('deployer of high-risk AI system for post-remote biometric identification'), source('celex:32024R1689/oj#art_26/par_10').
:- pred targeted_search_investigation/1, gloss('investigation for targeted search of suspected or convicted person'), source('celex:32024R1689/oj#art_26/par_10').
:- pred initial_identification_of_potential_suspect/1, gloss('use for initial identification of potential suspect based on objective facts'), source('celex:32024R1689/oj#art_26/par_10').
:- pred authorisation_rejected/1, gloss('requested authorisation is rejected'), source('celex:32024R1689/oj#art_26/par_10').
:- pred untargeted_use/1, gloss('use in an untargeted way without link to criminal offence'), source('celex:32024R1689/oj#art_26/par_10').
:- pred decision_based_solely_on_output/1, gloss('decision producing adverse legal effect based solely on system output'), source('celex:32024R1689/oj#art_26/par_10').
:- pred annex_3_decision_system/1, gloss('high-risk AI system referred to in Annex III that makes or assists decisions about natural persons'), source('celex:32024R1689/oj#art_26/par_11').
:- pred law_enforcement_purpose/1, gloss('use for law enforcement purposes'), source('celex:32024R1689/oj#art_26/par_11').

% Paragraph 1
must_use_in_accordance_with_instructions(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(I),
    accompanies(I, S).

% Paragraph 2
must_assign_human_oversight(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

% Paragraph 4
must_ensure_input_data_quality(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    exercises_control_over_input_data(D, S).

% Paragraph 5 – monitoring
must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    \+ financial_institution_deployer(D).

% Paragraph 5 – risk notification and suspension
must_inform_of_risk(D, risk(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    has_reason_to_consider_risk(D, S).

must_suspend_use(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    has_reason_to_consider_risk(D, S).

% Paragraph 5 – serious incident notification
must_inform_of_serious_incident(D, serious_incident(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    has_identified_serious_incident(D, S).

% Paragraph 6 – log keeping
must_keep_logs(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    \+ financial_institution_deployer(D).

% Paragraph 7 – worker information
must_inform_workers(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    employer_deployer(D).

% Paragraph 8 – registration
must_comply_with_registration(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    public_authority_deployer(D).

must_not_use_unregistered_system(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    public_authority_deployer(D),
    \+ registered_in_eu_database(S).

must_inform_of_unregistered_system(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    public_authority_deployer(D),
    \+ registered_in_eu_database(S).

% Paragraph 9 – transparency information for DPIA
must_use_transparency_information(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

% Paragraph 10 – post-remote biometric identification
must_request_authorisation(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    targeted_search_investigation(I),
    \+ initial_identification_of_potential_suspect(I).

must_stop_use_on_rejection(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(S).

must_document_use(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S).

must_submit_annual_reports(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S).

prohibited_untargeted_use(S) :-
    post_remote_biometric_identification_system(S),
    untargeted_use(S).

prohibited_decision_based_solely_on_output(S) :-
    post_remote_biometric_identification_system(S),
    decision_based_solely_on_output(S).

% Paragraph 11 – information to natural persons
must_inform_natural_persons(D, S) :-
    deployer(D),
    annex_3_decision_system(S),
    \+ law_enforcement_purpose(S).

% Paragraph 12 – cooperation
must_cooperate_with_authorities(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

% Provenance
provenance(must_use_in_accordance_with_instructions/2, 'celex:32024R1689/oj#art_26/par_1').
provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26/par_2').
provenance(must_ensure_input_data_quality/2, 'celex:32024R1689/oj#art_26/par_4').
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_inform_of_risk/3, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_suspend_use/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_inform_of_serious_incident/3, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26/par_6').
provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26/par_7').
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_26/par_8').
provenance(must_not_use_unregistered_system/2, 'celex:32024R1689/oj#art_26/par_8').
provenance(must_inform_of_unregistered_system/2, 'celex:32024R1689/oj#art_26/par_8').
provenance(must_use_transparency_information/2, 'celex:32024R1689/oj#art_26/par_9').
provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_stop_use_on_rejection/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_document_use/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_submit_annual_reports/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(prohibited_untargeted_use/1, 'celex:32024R1689/oj#art_26/par_10').
provenance(prohibited_decision_based_solely_on_output/1, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_inform_natural_persons/2, 'celex:32024R1689/oj#art_26/par_11').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_26/par_12').

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
