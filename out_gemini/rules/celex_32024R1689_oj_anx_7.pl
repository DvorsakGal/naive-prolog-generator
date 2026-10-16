% unit       : celex:32024R1689/oj#anx_7
% context    : ANNEXES
% slice sha  : 8e7b0c8b1329240ac8cdf33886e0141435488a2f4125454c5e0f5a0494f0823b
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ea5bf5e83c5920bfb178fe3facd182ff71e8c943325f75c4cd3107f31bfcae11
% cached     : False
% title      : Conformity based on an assessment of the quality management system and an assessment of the technical documentation
:- pred must_include(Application, Item), gloss('application must include specified element'), source('celex:32024R1689/oj#anx_7').
:- pred must_maintain(Provider, QualityManagementSystem), gloss('provider must maintain and implement quality management system'), source('celex:32024R1689/oj#anx_7').
:- pred must_notify(Actor, Information), gloss('actor must notify another party of specified information'), source('celex:32024R1689/oj#anx_7').
:- pred must_grant(Provider, Access), gloss('provider must grant notified body specified access'), source('celex:32024R1689/oj#anx_7').
:- pred must_carry_out(NotifiedBody, Action), gloss('notified body must carry out specified action'), source('celex:32024R1689/oj#anx_7').
:- pred must_issue(NotifiedBody, Certificate), gloss('notified body must issue specified certificate'), source('celex:32024R1689/oj#anx_7').
:- pred must_refuse(NotifiedBody, Certificate), gloss('notified body must refuse specified certificate'), source('celex:32024R1689/oj#anx_7').
:- pred compliant_with_chapter_3_section_2(System), gloss('AI system satisfies chapter 3 section 2 requirements'), source('celex:32024R1689/oj#anx_7').

% Point 3.1: Quality management system application requirements
must_include(application_qms(Provider, Qms), provider_details(Provider)) :-
    provider(Provider).
must_include(application_qms(Provider, Qms), authorised_representative_details(Rep)) :-
    provider(Provider),
    authorised_representative(Rep).
must_include(application_qms(_Provider, Qms), list_of_ai_systems(Qms)).
must_include(application_qms(_Provider, Qms), technical_documentation(System)) :-
    ai_system(System).
must_include(application_qms(_Provider, Qms), qms_documentation(Qms)).
must_include(application_qms(_Provider, Qms), adequacy_procedures(Qms)).
must_include(application_qms(_Provider, Qms), declaration_no_other_application(Qms)).

% Point 3.2: Assessment and notification of QMS decision
must_notify(Body, decision(assessment_qms(Provider, Qms))) :-
    notified_body(Body),
    provider(Provider).

% Point 3.3: Implementation and maintenance of QMS
must_maintain(Provider, approved_qms(Provider)) :-
    provider(Provider).

% Point 3.4: Changes to the approved QMS
must_notify(Provider, change(approved_qms(Provider))) :-
    provider(Provider).
must_notify(Body, decision(change(approved_qms(Provider)))) :-
    notified_body(Body),
    provider(Provider).

% Point 4.2: Technical documentation application requirements
must_include(application_technical_documentation(Provider, System), provider_details(Provider)) :-
    provider(Provider),
    ai_system(System).
must_include(application_technical_documentation(_Provider, System), declaration_no_other_application(System)) :-
    ai_system(System).
must_include(application_technical_documentation(_Provider, System), technical_documentation(System)) :-
    ai_system(System).

% Point 4.3: Access to data sets
must_grant(Provider, access_to_datasets(System)) :-
    provider(Provider),
    ai_system(System).

% Point 4.5: Access to models upon reasoned request
must_grant(Provider, access_to_models(System)) :-
    provider(Provider),
    ai_system(System).

% Point 4.6: Decision and issuance or refusal of certificate
must_notify(Body, decision(assessment_technical_documentation(System))) :-
    notified_body(Body),
    ai_system(System).

must_issue(Body, union_technical_documentation_assessment_certificate(System)) :-
    notified_body(Body),
    ai_system(System),
    compliant_with_chapter_3_section_2(System).

must_refuse(Body, union_technical_documentation_assessment_certificate(System)) :-
    notified_body(Body),
    ai_system(System),
    \+ compliant_with_chapter_3_section_2(System).

% Point 4.7: Changes to the AI system
must_notify(Provider, change(System)) :-
    provider(Provider),
    ai_system(System).

% Point 5.2 & 5.3: Surveillance of approved QMS
must_grant(Provider, access_to_premises(Provider)) :-
    provider(Provider).
must_grant(Provider, information_for_surveillance(Provider)) :-
    provider(Provider).

must_carry_out(Body, periodic_audits(Provider)) :-
    notified_body(Body),
    provider(Provider).
must_notify(Body, audit_report(Provider)) :-
    notified_body(Body),
    provider(Provider).

% Provenance
provenance(must_include/2, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse/2, 'celex:32024R1689/oj#anx_7').

% References
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').
