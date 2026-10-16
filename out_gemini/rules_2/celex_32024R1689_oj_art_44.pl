% unit       : celex:32024R1689/oj#art_44
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 46134af55384cab69d2f780c43c71a7f887fb49340a21c1cfa8f0e0737f6cb68
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : b42dadec06b8ae0658d2f162d7db2353b4b326d0510b7c0d265f4267f2f4cb85
% cached     : False
% title      : Certificates
:- pred certificate/1, gloss('conformity certificate issued by a notified body'), source('celex:32024R1689/oj#art_44').
:- pred certificate_issued_by/2, gloss('notified body issued the certificate'), source('celex:32024R1689/oj#art_44').
:- pred certificate_for_system/2, gloss('certificate applies to the specified AI system'), source('celex:32024R1689/oj#art_44').
:- pred system_covered_by_annex_3/1, gloss('AI system covered by Annex III'), source('celex:32024R1689/oj#art_44').
:- pred language_easily_understood_by_authorities/2, gloss('certificate is drawn up in a language easily understood by relevant authorities in Member State'), source('celex:32024R1689/oj#art_44').
:- pred permitted_validity_period/2, gloss('permitted initial validity period of a certificate for an AI system'), source('celex:32024R1689/oj#art_44').
:- pred requested_extension/2, gloss('provider requested extension of certificate validity'), source('celex:32024R1689/oj#art_44').
:- pred reassessed_conformity/2, gloss('re-assessment conducted in accordance with applicable conformity assessment procedures'), source('celex:32024R1689/oj#art_44').
:- pred supplement_to_certificate/2, gloss('supplement is associated with a principal certificate'), source('celex:32024R1689/oj#art_44').
:- pred valid_certificate/1, gloss('certificate is currently valid'), source('celex:32024R1689/oj#art_44').
:- pred certificate_supplement_valid/1, gloss('supplement to a certificate remains valid'), source('celex:32024R1689/oj#art_44').
:- pred compliance_ensured_by_corrective_action/2, gloss('compliance is ensured by appropriate corrective action within deadline set by notified body'), source('celex:32024R1689/oj#art_44').
:- pred must_suspend_withdraw_or_restrict/2, gloss('notified body must suspend, withdraw, or impose restrictions on a certificate'), source('celex:32024R1689/oj#art_44').
:- pred must_give_reasons/2, gloss('notified body must give reasons for its decision on certificate'), source('celex:32024R1689/oj#art_44').
:- pred appeal_procedure_available/1, gloss('appeal procedure is available against decisions of notified body'), source('celex:32024R1689/oj#art_44').

% Paragraph 1: Certificates shall be drawn up in an easily understood language
must_comply(NotifiedBody, draw_up_language(Cert)) :-
    certificate(Cert),
    certificate_issued_by(Cert, NotifiedBody),
    notified_body(NotifiedBody),
    \+ language_easily_understood_by_authorities(Cert, NotifiedBody).

% Paragraph 2: Maximum validity periods
permitted_validity_period(Cert, years(5)) :-
    certificate(Cert),
    certificate_for_system(Cert, System),
    system_covered_by_annex_1(System).

permitted_validity_period(Cert, years(4)) :-
    certificate(Cert),
    certificate_for_system(Cert, System),
    system_covered_by_annex_3(System).

% Paragraph 2: Extensions of validity
permitted_extension(Cert, years(5)) :-
    certificate(Cert),
    certificate_for_system(Cert, System),
    system_covered_by_annex_1(System),
    requested_extension(Provider, Cert),
    provider(Provider),
    reassessed_conformity(Cert, System).

permitted_extension(Cert, years(4)) :-
    certificate(Cert),
    certificate_for_system(Cert, System),
    system_covered_by_annex_3(System),
    requested_extension(Provider, Cert),
    provider(Provider),
    reassessed_conformity(Cert, System).

% Paragraph 2: Validity of certificate supplements
certificate_supplement_valid(Supplement) :-
    supplement_to_certificate(Supplement, Cert),
    valid_certificate(Cert).

% Paragraph 3: Suspension, withdrawal, or restrictions if no longer compliant
must_suspend_withdraw_or_restrict(NotifiedBody, Cert) :-
    certificate(Cert),
    certificate_issued_by(Cert, NotifiedBody),
    certificate_for_system(Cert, System),
    notified_body(NotifiedBody),
    \+ complies_with_chapter_3_section_2(System),
    \+ compliance_ensured_by_corrective_action(System, NotifiedBody).

must_give_reasons(NotifiedBody, decision(Cert)) :-
    must_suspend_withdraw_or_restrict(NotifiedBody, Cert).

% Paragraph 3: Appeal procedure availability
must_comply(NotifiedBody, appeal_procedure_available) :-
    notified_body(NotifiedBody),
    \+ appeal_procedure_available(NotifiedBody).

% Provenance
provenance(certificate/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_issued_by/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_for_system/2, 'celex:32024R1689/oj#art_44').
provenance(system_covered_by_annex_3/1, 'celex:32024R1689/oj#art_44').
provenance(language_easily_understood_by_authorities/2, 'celex:32024R1689/oj#art_44').
provenance(permitted_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(requested_extension/2, 'celex:32024R1689/oj#art_44').
provenance(reassessed_conformity/2, 'celex:32024R1689/oj#art_44').
provenance(supplement_to_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(valid_certificate/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_supplement_valid/1, 'celex:32024R1689/oj#art_44').
provenance(compliance_ensured_by_corrective_action/2, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_withdraw_or_restrict/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').
provenance(must_comply/2, 'celex:32024R1689/oj#art_44').
provenance(permitted_extension/2, 'celex:32024R1689/oj#art_44').

% References
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').
