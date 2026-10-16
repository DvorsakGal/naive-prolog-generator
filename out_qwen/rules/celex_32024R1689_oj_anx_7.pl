% unit       : celex:32024R1689/oj#anx_7
% context    : ANNEXES
% slice sha  : 8e7b0c8b1329240ac8cdf33886e0141435488a2f4125454c5e0f5a0494f0823b
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 26efceb1ada41692e7050603f384f990cc830c16fcc02780acb92c13683dfd05
% cached     : False
% title      : Conformity based on an assessment of the quality management system and an assessment of the technical documentation
:- pred conformity_assessment_procedure_annex_vii/1, gloss('conformity assessment based on quality management system and technical documentation'), source('celex:32024R1689/oj#anx_7').
:- pred must_apply_for_qms_assessment(Provider, Body), gloss('provider applies to notified body for quality management system assessment'), source('celex:32024R1689/oj#anx_7').
:- pred must_apply_for_technical_documentation_assessment(Provider, Body), gloss('provider applies to notified body for technical documentation assessment'), source('celex:32024R1689/oj#anx_7').
:- pred must_assess_quality_management_system(Body, Provider), gloss('notified body assesses provider quality management system'), source('celex:32024R1689/oj#anx_7').
:- pred must_examine_technical_documentation(Body, System), gloss('notified body examines technical documentation of AI system'), source('celex:32024R1689/oj#anx_7').
:- pred must_notify_qms_decision(Body, Recipient), gloss('notified body notifies provider or representative of QMS assessment decision'), source('celex:32024R1689/oj#anx_7').
:- pred must_maintain_approved_quality_management_system(Provider, System), gloss('provider maintains approved QMS for AI system'), source('celex:32024R1689/oj#anx_7').
:- pred must_notify_qms_changes(Provider, Body), gloss('provider notifies notified body of intended changes to QMS'), source('celex:32024R1689/oj#anx_7').
:- pred must_grant_access_to_data_sets(Provider, Body), gloss('provider grants notified body access to training validation and testing data sets'), source('celex:32024R1689/oj#anx_7').
:- pred must_issue_technical_documentation_certificate(Body, System), gloss('notified body issues Union technical documentation assessment certificate'), source('celex:32024R1689/oj#anx_7').
:- pred must_refuse_technical_documentation_certificate(Body, System), gloss('notified body refuses to issue certificate due to non-conformity'), source('celex:32024R1689/oj#anx_7').
:- pred must_inform_of_system_changes(Provider, Body), gloss('provider informs notified body of changes affecting compliance'), source('celex:32024R1689/oj#anx_7').
:- pred must_allow_surveillance_access(Provider, Body), gloss('provider allows notified body access for surveillance purposes'), source('celex:32024R1689/oj#anx_7').
:- pred must_carry_out_periodic_audits(Body, Provider), gloss('notified body carries out periodic audits of provider QMS'), source('celex:32024R1689/oj#anx_7').

conformity_assessment_procedure_annex_vii(S) :-
    ai_system(S).

must_apply_for_qms_assessment(P, B) :-
    provider(P),
    notified_body(B).

must_apply_for_technical_documentation_assessment(P, B) :-
    provider(P),
    notified_body(B).

must_assess_quality_management_system(B, P) :-
    notified_body(B),
    provider(P),
    must_apply_for_qms_assessment(P, B).

must_examine_technical_documentation(B, S) :-
    notified_body(B),
    ai_system(S),
    must_apply_for_technical_documentation_assessment(_P, B).

must_notify_qms_decision(B, R) :-
    notified_body(B),
    (provider(R) ; authorised_representative(R)),
    must_assess_quality_management_system(B, _P).

must_maintain_approved_quality_management_system(P, S) :-
    provider(P),
    ai_system(S),
    must_assess_quality_management_system(_B, P).

must_notify_qms_changes(P, B) :-
    provider(P),
    notified_body(B),
    must_maintain_approved_quality_management_system(P, _S).

must_grant_access_to_data_sets(P, B) :-
    provider(P),
    notified_body(B),
    must_examine_technical_documentation(B, _S).

must_issue_technical_documentation_certificate(B, S) :-
    notified_body(B),
    ai_system(S),
    must_examine_technical_documentation(B, S).

must_refuse_technical_documentation_certificate(B, S) :-
    notified_body(B),
    ai_system(S),
    must_examine_technical_documentation(B, S),
    \+ must_issue_technical_documentation_certificate(B, S).

must_inform_of_system_changes(P, B) :-
    provider(P),
    notified_body(B),
    must_issue_technical_documentation_certificate(B, _S).

must_allow_surveillance_access(P, B) :-
    provider(P),
    notified_body(B),
    must_maintain_approved_quality_management_system(P, _S).

must_carry_out_periodic_audits(B, P) :-
    notified_body(B),
    provider(P),
    must_maintain_approved_quality_management_system(P, _S).

provenance(conformity_assessment_procedure_annex_vii/1, 'celex:32024R1689/oj#anx_7').
provenance(must_apply_for_qms_assessment/2, 'celex:32024R1689/oj#anx_7').
provenance(must_apply_for_technical_documentation_assessment/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_qms_decision/2, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain_approved_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_qms_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_data_sets/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_technical_documentation_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse_technical_documentation_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_of_system_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_surveillance_access/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_periodic_audits/2, 'celex:32024R1689/oj#anx_7').

references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').
