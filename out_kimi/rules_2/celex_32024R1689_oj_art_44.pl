% unit       : celex:32024R1689/oj#art_44
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 46134af55384cab69d2f780c43c71a7f887fb49340a21c1cfa8f0e0737f6cb68
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 361a5c934429eacb8c997acf0681452a9a87351b402a94077762a8f20d89cb62
% cached     : False
% title      : Certificates
:- pred certificate_language_understandable/1, gloss('certificate drawn up in language easily understood by relevant authorities'), source('celex:32024R1689/oj#art_44').
:- pred certificate_validity_period/2, gloss('certificate valid for specified period not exceeding maximum'), source('celex:32024R1689/oj#art_44').
:- pred certificate_maximum_validity/2, gloss('maximum validity period for certificate based on annex coverage'), source('celex:32024R1689/oj#art_44').
:- pred certificate_extension/2, gloss('certificate validity extended at provider request'), source('celex:32024R1689/oj#art_44').
:- pred certificate_extension_maximum/2, gloss('maximum extension period based on annex coverage'), source('celex:32024R1689/oj#art_44').
:- pred re_assessment_conducted/1, gloss('re-assessment conducted in accordance with applicable conformity assessment procedures'), source('celex:32024R1689/oj#art_44').
:- pred supplement_valid/1, gloss('certificate supplement remains valid'), source('celex:32024R1689/oj#art_44').
:- pred certificate_supplemented/2, gloss('supplement supplements a certificate'), source('celex:32024R1689/oj#art_44').
:- pred must_suspend_withdraw_or_restrict_certificate/2, gloss('notified body must suspend withdraw or restrict certificate'), source('celex:32024R1689/oj#art_44').
:- pred no_longer_meets_requirements/1, gloss('AI system no longer meets requirements'), source('celex:32024R1689/oj#art_44').
:- pred proportionality_applies/1, gloss('principle of proportionality applies'), source('celex:32024R1689/oj#art_44').
:- pred corrective_action_ensures_compliance/2, gloss('corrective action taken by provider ensures compliance within deadline'), source('celex:32024R1689/oj#art_44').
:- pred appropriate_deadline_set/2, gloss('appropriate deadline set by notified body'), source('celex:32024R1689/oj#art_44').
:- pred must_give_reasons/2, gloss('notified body must give reasons for decision'), source('celex:32024R1689/oj#art_44').
:- pred appeal_procedure_available/1, gloss('appeal procedure against notified body decisions available'), source('celex:32024R1689/oj#art_44').

certificate_language_understandable(C) :-
    issued_certificate(C, B),
    notified_body(B),
    established_under_national_law(B),
    drawn_up(C),
    language_easily_understood_by_relevant_authorities(C, B).

certificate_validity_period(C, Period) :-
    issued_certificate(C, _B),
    validity_indicated(C, Period),
    certificate_maximum_validity(C, Max),
    Period =< Max.

certificate_maximum_validity(C, years(5)) :-
    issued_certificate(C, _B),
    certificate_covers_annex(C, 'celex:32024R1689/oj#anx_1').

certificate_maximum_validity(C, years(4)) :-
    issued_certificate(C, _B),
    certificate_covers_annex(C, 'celex:32024R1689/oj#anx_3').

certificate_extension(C, NewPeriod) :-
    issued_certificate(C, B),
    provider(P),
    extension_requested(P, C),
    re_assessment_conducted(C),
    certificate_extension_maximum(C, Max),
    NewPeriod =< Max.

certificate_extension_maximum(C, years(5)) :-
    issued_certificate(C, _B),
    certificate_covers_annex(C, 'celex:32024R1689/oj#anx_1').

certificate_extension_maximum(C, years(4)) :-
    issued_certificate(C, _B),
    certificate_covers_annex(C, 'celex:32024R1689/oj#anx_3').

re_assessment_conducted(C) :-
    issued_certificate(C, _B),
    conformity_assessment_procedure(C).

supplement_valid(S) :-
    certificate_supplement(S),
    certificate_supplemented(S, C),
    certificate_valid(C).

must_suspend_withdraw_or_restrict_certificate(B, C) :-
    notified_body(B),
    issued_certificate(C, B),
    no_longer_meets_requirements(C),
    proportionality_applies(C),
    \+ corrective_action_ensures_compliance(C, _P).

must_suspend_withdraw_or_restrict_certificate(B, C) :-
    notified_body(B),
    issued_certificate(C, B),
    no_longer_meets_requirements(C),
    proportionality_applies(C),
    corrective_action_ensures_compliance(C, P),
    provider(P),
    \+ appropriate_deadline_set(B, C).

corrective_action_ensures_compliance(C, P) :-
    corrective_action(P, C),
    no_longer_meets_requirements(C),
    appropriate_deadline_set(_B, C).

must_give_reasons(B, Decision) :-
    notified_body(B),
    decision_on_certificate(B, Decision).

appeal_procedure_available(B) :-
    notified_body(B).

provenance(certificate_language_understandable/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_maximum_validity/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_extension/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_extension_maximum/2, 'celex:32024R1689/oj#art_44').
provenance(re_assessment_conducted/1, 'celex:32024R1689/oj#art_44').
provenance(supplement_valid/1, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_withdraw_or_restrict_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(corrective_action_ensures_compliance/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').

references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').
