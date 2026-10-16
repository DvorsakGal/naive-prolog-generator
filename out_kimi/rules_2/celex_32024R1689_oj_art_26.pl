% unit       : celex:32024R1689/oj#art_26
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ca132bbf6aa55c392914769ec717d7c645c4f263061dfb341f45b5292b66b8e2
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 802383fd54b85e79681d3135d8def3fad0059ecc663111f0669dd1eacac36b91
% cached     : False
% title      : Obligations of deployers of high-risk AI systems
:- pred must_take_appropriate_measures/2, gloss('deployer must take appropriate technical and organisational measures'), source('celex:32024R1689/oj#art_26').
:- pred must_assign_human_oversight/2, gloss('deployer must assign human oversight to competent natural persons'), source('celex:32024R1689/oj#art_26').
:- pred must_ensure_input_data_relevance/2, gloss('deployer must ensure input data is relevant and sufficiently representative'), source('celex:32024R1689/oj#art_26').
:- pred must_monitor_operation/2, gloss('deployer must monitor operation of high-risk AI system'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_provider_risk/2, gloss('deployer must inform provider or distributor and authority of risk'), source('celex:32024R1689/oj#art_26').
:- pred must_suspend_use/2, gloss('deployer must suspend use of system presenting risk'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_serious_incident/2, gloss('deployer must inform parties of serious incident'), source('celex:32024R1689/oj#art_26').
:- pred must_keep_logs/2, gloss('deployer must keep automatically generated logs'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_workers/2, gloss('employer deployer must inform workers and representatives'), source('celex:32024R1689/oj#art_26').
:- pred must_comply_registration/2, gloss('public authority deployer must comply with registration obligations'), source('celex:32024R1689/oj#art_26').
:- pred shall_not_use_unregistered/2, gloss('deployer shall not use unregistered high-risk AI system'), source('celex:32024R1689/oj#art_26').
:- pred must_use_information_for_dpia/2, gloss('deployer must use Article 13 information for data protection impact assessment'), source('celex:32024R1689/oj#art_26').
:- pred must_request_authorisation/2, gloss('deployer must request authorisation for post-remote biometric identification'), source('celex:32024R1689/oj#art_26').
:- pred must_stop_and_delete/2, gloss('deployer must stop use and delete data if authorisation rejected'), source('celex:32024R1689/oj#art_26').
:- pred must_document_use/2, gloss('deployer must document each use in police file'), source('celex:32024R1689/oj#art_26').
:- pred must_submit_annual_report_post_remote/2, gloss('deployer must submit annual reports on post-remote biometric identification use'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_natural_persons/2, gloss('deployer must inform natural persons subject to high-risk AI system'), source('celex:32024R1689/oj#art_26').
:- pred must_cooperate_with_authorities/2, gloss('deployer must cooperate with competent authorities'), source('celex:32024R1689/oj#art_26').

% Paragraph 1: appropriate measures to use in accordance with instructions
must_take_appropriate_measures(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S).

provenance(must_take_appropriate_measures/2, 'celex:32024R1689/oj#art_26').

% Paragraph 2: assign human oversight to competent natural persons
must_assign_human_oversight(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26').

% Paragraph 4: ensure input data relevance where deployer exercises control
must_ensure_input_data_relevance(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    input_data(I),
    exercises_control_over(D, I).

provenance(must_ensure_input_data_relevance/2, 'celex:32024R1689/oj#art_26').

% Paragraph 5: monitor operation
must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26').

% Paragraph 5: inform provider/distributor and authority of risk, and suspend use
must_inform_provider_risk(D, risk(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    risk_within_art_79_1(S).

must_suspend_use(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    risk_within_art_79_1(S).

provenance(must_inform_provider_risk/2, 'celex:32024R1689/oj#art_26').
provenance(must_suspend_use/2, 'celex:32024R1689/oj#art_26').

% Paragraph 5: inform serious incident
must_inform_serious_incident(D, serious_incident(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident(S).

provenance(must_inform_serious_incident/2, 'celex:32024R1689/oj#art_26').

% Paragraph 6: keep logs for at least six months
must_keep_logs(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    logs_under_control(D, S),
    \+ national_law_provides_otherwise(S).

provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26').

% Paragraph 7: inform workers and representatives
must_inform_workers(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    employer(D),
    before_putting_into_service_or_using(S, workplace).

provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26').

% Paragraph 8: comply with registration for public authorities
must_comply_registration(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    deployer_public_authority(D).

must_comply_registration(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    union_institution(D).

shall_not_use_unregistered(D, S) :-
    deployer(D),
    deployer_public_authority(D),
    high_risk_ai_system(S),
    \+ registered_with_information_specified(S).

shall_not_use_unregistered(D, S) :-
    deployer(D),
    union_institution(D),
    high_risk_ai_system(S),
    \+ registered_with_information_specified(S).

provenance(must_comply_registration/2, 'celex:32024R1689/oj#art_26').
provenance(shall_not_use_unregistered/2, 'celex:32024R1689/oj#art_26').

% Paragraph 9: use Article 13 information for DPIA
must_use_information_for_dpia(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

provenance(must_use_information_for_dpia/2, 'celex:32024R1689/oj#art_26').

% Paragraph 10: request authorisation for post-remote biometric identification
must_request_authorisation(D, use(S, targeted_search(Person))) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    investigation(targeted_search(Person)),
    suspected_or_convicted(Person, criminal_offence(_)),
    \+ initial_identification_exception(S, Person).

provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_26').

% Paragraph 10: stop and delete if authorisation rejected
must_stop_and_delete(D, use(S, targeted_search(Person))) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(use(S, targeted_search(Person))).

provenance(must_stop_and_delete/2, 'celex:32024R1689/oj#art_26').

% Paragraph 10: document each use
must_document_use(D, use(S, _Purpose)) :-
    deployer(D),
    post_remote_biometric_identification_system(S).

provenance(must_document_use/2, 'celex:32024R1689/oj#art_26').

% Paragraph 10: submit annual reports
must_submit_annual_report_post_remote(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S).

provenance(must_submit_annual_report_post_remote/2, 'celex:32024R1689/oj#art_26').

% Paragraph 11: inform natural persons subject to system
must_inform_natural_persons(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    makes_decisions_or_assists(S, natural_person(_)).

provenance(must_inform_natural_persons/2, 'celex:32024R1689/oj#art_26').

% Paragraph 12: cooperate with competent authorities
must_cooperate_with_authorities(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

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
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_1').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_5').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj').
