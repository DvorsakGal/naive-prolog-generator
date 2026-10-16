% unit       : celex:32024R1689/oj#art_26
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ca132bbf6aa55c392914769ec717d7c645c4f263061dfb341f45b5292b66b8e2
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 0d7bff483fbcc30be2ec24ee445623a46ead7a79196de98565cf1aeed155bf94
% cached     : False
% title      : Obligations of deployers of high-risk AI systems
:- pred must_use_in_accordance_with_instructions/2, gloss('deployer must use high-risk AI system in accordance with instructions for use'), source('celex:32024R1689/oj#art_26').
:- pred must_assign_human_oversight/2, gloss('deployer must assign human oversight to competent natural persons'), source('celex:32024R1689/oj#art_26').
:- pred must_ensure_input_data_relevance/2, gloss('deployer exercising control over input data must ensure it is relevant and representative'), source('celex:32024R1689/oj#art_26').
:- pred must_monitor_operation/2, gloss('deployer must monitor operation of high-risk AI system based on instructions'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_of_risk_and_suspend/2, gloss('deployer must inform provider/distributor and authority of risk and suspend use'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_of_serious_incident/2, gloss('deployer must immediately inform provider and others of serious incident'), source('celex:32024R1689/oj#art_26').
:- pred must_keep_logs/2, gloss('deployer must keep automatically generated logs for appropriate period'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_workers/2, gloss('employer deployer must inform workers representatives and affected workers before use'), source('celex:32024R1689/oj#art_26').
:- pred must_register_system/2, gloss('public authority deployer must comply with registration obligations'), source('celex:32024R1689/oj#art_26').
:- pred must_not_use_unregistered_system/2, gloss('public authority deployer must not use unregistered high-risk AI system'), source('celex:32024R1689/oj#art_26').
:- pred must_use_info_for_dpi_assessment/2, gloss('deployer must use article 13 information for data protection impact assessment'), source('celex:32024R1689/oj#art_26').
:- pred must_request_authorisation_for_post_rbi/2, gloss('deployer must request authorisation for post-remote biometric identification in criminal investigation'), source('celex:32024R1689/oj#art_26').
:- pred must_stop_use_on_authorisation_rejection/2, gloss('deployer must stop use and delete data if post-rbi authorisation rejected'), source('celex:32024R1689/oj#art_26').
:- pred prohibited_untargeted_post_rbi_use/1, gloss('prohibition on untargeted use of post-remote biometric identification for law enforcement'), source('celex:32024R1689/oj#art_26').
:- pred prohibited_sole_basis_decision/1, gloss('prohibition on decisions based solely on post-remote biometric identification output'), source('celex:32024R1689/oj#art_26').
:- pred must_document_post_rbi_use/2, gloss('deployer must document each use of post-remote biometric identification in police file'), source('celex:32024R1689/oj#art_26').
:- pred must_submit_annual_report/2, gloss('deployer must submit annual report on post-remote biometric identification use'), source('celex:32024R1689/oj#art_26').
:- pred must_inform_natural_persons/2, gloss('deployer of annex III system making decisions must inform natural persons'), source('celex:32024R1689/oj#art_26').
:- pred must_cooperate_with_competent_authorities/2, gloss('deployer must cooperate with competent authorities implementing this regulation'), source('celex:32024R1689/oj#art_26').

must_use_in_accordance_with_instructions(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S).

must_assign_human_oversight(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

must_ensure_input_data_relevance(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    controls_input_data(D, S),
    intended_purpose(S).

must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S).

must_inform_of_risk_and_suspend(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    reason_to_consider_risk(D, S),
    presents_risk(S).

must_inform_of_serious_incident(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident(S).

must_keep_logs(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    logging_capability(S),
    logs_under_control(D, S).

must_inform_workers(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    employer(D),
    workplace_use(S).

must_register_system(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    public_authority_or_union_body(D).

must_not_use_unregistered_system(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    public_authority_or_union_body(D),
    \+ registered_in_eu_database(S).

must_use_info_for_dpi_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    data_protection_impact_assessment_required(D).

must_request_authorisation_for_post_rbi(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    criminal_investigation_context(S),
    \+ initial_identification_exception(S).

must_stop_use_on_authorisation_rejection(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(S).

prohibited_untargeted_post_rbi_use(S) :-
    post_remote_biometric_identification_system(S),
    law_enforcement_purpose(S),
    \+ linked_to_criminal_offence_or_threat(S).

prohibited_sole_basis_decision(S) :-
    post_remote_biometric_identification_system(S),
    adverse_legal_effect_decision(S),
    based_solely_on_output(S).

must_document_post_rbi_use(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S).

must_submit_annual_report(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S).

must_inform_natural_persons(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    high_risk_ai_system_annex_iii(S),
    decision_related_to_natural_persons(S).

must_cooperate_with_competent_authorities(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

% Helper predicates defined locally for discrimination
controls_input_data(_D, _S).
reason_to_consider_risk(_D, _S).
logs_under_control(_D, _S).
employer(_D).
workplace_use(_S).
public_authority_or_union_body(D) :- union_body(D).
public_authority_or_union_body(D) :- law_enforcement_authority(D).
registered_in_eu_database(_S).
data_protection_impact_assessment_required(_D).
criminal_investigation_context(_S).
initial_identification_exception(_S).
authorisation_rejected(_S).
law_enforcement_purpose(_S).
linked_to_criminal_offence_or_threat(_S).
adverse_legal_effect_decision(_S).
based_solely_on_output(_S).
decision_related_to_natural_persons(_S).

provenance(must_use_in_accordance_with_instructions/2, 'celex:32024R1689/oj#art_26').
provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26').
provenance(must_ensure_input_data_relevance/2, 'celex:32024R1689/oj#art_26').
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_of_risk_and_suspend/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_of_serious_incident/2, 'celex:32024R1689/oj#art_26').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26').
provenance(must_register_system/2, 'celex:32024R1689/oj#art_26').
provenance(must_not_use_unregistered_system/2, 'celex:32024R1689/oj#art_26').
provenance(must_use_info_for_dpi_assessment/2, 'celex:32024R1689/oj#art_26').
provenance(must_request_authorisation_for_post_rbi/2, 'celex:32024R1689/oj#art_26').
provenance(must_stop_use_on_authorisation_rejection/2, 'celex:32024R1689/oj#art_26').
provenance(prohibited_untargeted_post_rbi_use/1, 'celex:32024R1689/oj#art_26').
provenance(prohibited_sole_basis_decision/1, 'celex:32024R1689/oj#art_26').
provenance(must_document_post_rbi_use/2, 'celex:32024R1689/oj#art_26').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_natural_persons/2, 'celex:32024R1689/oj#art_26').
provenance(must_cooperate_with_competent_authorities/2, 'celex:32024R1689/oj#art_26').

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
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_13').
