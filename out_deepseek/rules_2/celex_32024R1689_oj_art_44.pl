% unit       : celex:32024R1689/oj#art_44
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 46134af55384cab69d2f780c43c71a7f887fb49340a21c1cfa8f0e0737f6cb68
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 3f69c144e61e771698bd9fd80f21345d5dc3e2ffe58534fd3be0e3730ed8934f
% cached     : False
% title      : Certificates
:- pred certificate_language/1, gloss('certificate drawn up in easily understood language'), source('celex:32024R1689/oj#art_44').
:- pred certificate_validity_period/2, gloss('certificate validity period for a system'), source('celex:32024R1689/oj#art_44').
:- pred certificate_extension_period/2, gloss('maximum extension period for a certificate'), source('celex:32024R1689/oj#art_44').
:- pred must_suspend_or_withdraw_certificate/2, gloss('notified body must suspend, withdraw or restrict certificate'), source('celex:32024R1689/oj#art_44').
:- pred must_give_reasons/2, gloss('notified body must give reasons for decision'), source('celex:32024R1689/oj#art_44').
:- pred appeal_available/1, gloss('appeal procedure available against notified body decisions'), source('celex:32024R1689/oj#art_44').

% Paragraph 1
must_draw_up_certificate_in_language(Body, Certificate) :-
    notified_body(Body),
    certificate_language(Certificate).

certificate_language(Certificate) :-
    % Certificate is drawn up in a language easily understood by the relevant authorities
    % in the Member State where the notified body is established.
    true.

% Paragraph 2
certificate_validity_period(Certificate, years(5)) :-
    % AI systems covered by Annex I
    true.

certificate_validity_period(Certificate, years(4)) :-
    % AI systems covered by Annex III
    true.

certificate_extension_period(Certificate, years(5)) :-
    % AI systems covered by Annex I
    true.

certificate_extension_period(Certificate, years(4)) :-
    % AI systems covered by Annex III
    true.

must_allow_extension_on_request(Body, Certificate) :-
    notified_body(Body),
    % Extension based on re-assessment in accordance with applicable conformity assessment procedures
    true.

supplement_valid_if_certificate_valid(Supplement, Certificate) :-
    % Any supplement to a certificate remains valid as long as the certificate it supplements is valid
    true.

% Paragraph 3
must_suspend_or_withdraw_certificate(Body, Certificate) :-
    notified_body(Body),
    finds_no_longer_meets_requirements(Body, System),
    certificate_relates_to(Certificate, System),
    \+ compliance_ensured_by_corrective_action(System, Body).

must_impose_restrictions_on_certificate(Body, Certificate) :-
    notified_body(Body),
    finds_no_longer_meets_requirements(Body, System),
    certificate_relates_to(Certificate, System),
    \+ compliance_ensured_by_corrective_action(System, Body).

must_give_reasons(Body, Decision) :-
    notified_body(Body),
    decision_affects_certificate(Decision).

appeal_available(Decision) :-
    decision_by_notified_body(Decision).

% Supporting predicates
finds_no_longer_meets_requirements(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    % System no longer meets requirements of Section 2
    true.

compliance_ensured_by_corrective_action(System, Body) :-
    high_risk_ai_system(System),
    notified_body(Body),
    % Provider takes appropriate corrective action within deadline set by notified body
    true.

certificate_relates_to(Certificate, System) :-
    % Certificate relates to the AI system
    true.

decision_affects_certificate(Decision) :-
    % Decision suspends, withdraws or imposes restrictions on a certificate
    true.

decision_by_notified_body(Decision) :-
    % Decision is made by a notified body
    true.

% Provenance
provenance(certificate_language/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_extension_period/2, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_or_withdraw_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_available/1, 'celex:32024R1689/oj#art_44').

% References
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').
