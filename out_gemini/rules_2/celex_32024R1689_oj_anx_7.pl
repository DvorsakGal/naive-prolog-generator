% unit       : celex:32024R1689/oj#anx_7
% context    : ANNEXES
% slice sha  : 8e7b0c8b1329240ac8cdf33886e0141435488a2f4125454c5e0f5a0494f0823b
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 6f70aea862e9e3d79a5ad819d3dea7f36733e4e2abb2697104a9af39e22e1f0f
% cached     : False
% title      : Conformity based on an assessment of the quality management system and an assessment of the technical documentation
:- pred quality_management_system/1, gloss('quality management system of an AI provider'), source('celex:32024R1689/oj#anx_7').
:- pred satisfies_article_17_requirements/1, gloss('system satisfies requirements of Article 17'), source('celex:32024R1689/oj#anx_7').
:- pred application_for_qms_assessment/2, gloss('application by provider for quality management system assessment'), source('celex:32024R1689/oj#anx_7').
:- pred application_for_technical_documentation_assessment/2, gloss('application by provider for technical documentation assessment'), source('celex:32024R1689/oj#anx_7').
:- pred must_maintain/2, gloss('actor must maintain a system or process'), source('celex:32024R1689/oj#anx_7').
:- pred must_notify/2, gloss('actor must notify another entity of an event or decision'), source('celex:32024R1689/oj#anx_7').
:- pred must_grant_access/2, gloss('actor must grant access to another entity'), source('celex:32024R1689/oj#anx_7').
:- pred must_issue/2, gloss('actor must issue a certificate or document'), source('celex:32024R1689/oj#anx_7').
:- pred must_refuse/2, gloss('actor must refuse to issue a certificate or approval'), source('celex:32024R1689/oj#anx_7').
:- pred must_carry_out/2, gloss('actor must carry out an action, test or audit'), source('celex:32024R1689/oj#anx_7').
:- pred required_retraining/1, gloss('AI system requires retraining before reapplying for conformity assessment'), source('celex:32024R1689/oj#anx_7').
:- pred data_governance_non_compliant/1, gloss('AI system fails to meet training data requirements'), source('celex:32024R1689/oj#anx_7').

% Point 3.1 & 3.2: Requirements on notified body assessing QMS
must_notify(NotifiedBody, decision(assessment_of_qms(QMS), Provider)) :-
    notified_body(NotifiedBody),
    application_for_qms_assessment(Provider, QMS),
    satisfies_article_17_requirements(QMS).

must_notify(NotifiedBody, refusal(assessment_of_qms(QMS), Provider)) :-
    notified_body(NotifiedBody),
    application_for_qms_assessment(Provider, QMS),
    \+ satisfies_article_17_requirements(QMS).

% Point 3.3: Provider duty to maintain QMS
must_maintain(Provider, quality_management_system(QMS)) :-
    provider(Provider),
    quality_management_system(QMS).

% Point 3.4: Provider duty to inform notified body of intended QMS changes
must_notify(Provider, change(QMS, NotifiedBody)) :-
    provider(Provider),
    quality_management_system(QMS),
    notified_body(NotifiedBody).

% Point 4.3 & 4.5: Provider duty to grant data and model access to notified body
must_grant_access(Provider, access_to_datasets(System, NotifiedBody)) :-
    provider(Provider),
    ai_system(System),
    notified_body(NotifiedBody),
    application_for_technical_documentation_assessment(Provider, System).

must_grant_access(Provider, access_to_models(System, NotifiedBody)) :-
    provider(Provider),
    ai_system(System),
    notified_body(NotifiedBody),
    application_for_technical_documentation_assessment(Provider, System).

% Point 4.6: Issuance or refusal of Union technical documentation assessment certificate
must_issue(NotifiedBody, union_technical_documentation_assessment_certificate(System, Provider)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    ai_system(System),
    application_for_technical_documentation_assessment(Provider, System),
    complies_with_chapter_3_section_2(System).

must_refuse(NotifiedBody, union_technical_documentation_assessment_certificate(System, Provider)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    ai_system(System),
    application_for_technical_documentation_assessment(Provider, System),
    non_compliant(System).

required_retraining(System) :-
    ai_system(System),
    non_compliant(System),
    data_governance_non_compliant(System).

% Point 4.7: Duty to inform of changes affecting compliance or intended purpose
must_notify(Provider, change(System, NotifiedBody)) :-
    provider(Provider),
    ai_system(System),
    notified_body(NotifiedBody).

% Point 5.2: Provider duty to allow premises access for surveillance
must_grant_access(Provider, access_to_premises(NotifiedBody)) :-
    provider(Provider),
    notified_body(NotifiedBody).

% Point 5.3: Notified body duty to carry out periodic audits
must_carry_out(NotifiedBody, periodic_audits(Provider, QMS)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    quality_management_system(QMS).

% Provenance
provenance(must_notify/2, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse/2, 'celex:32024R1689/oj#anx_7').
provenance(required_retraining/1, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out/2, 'celex:32024R1689/oj#anx_7').

% References
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').
