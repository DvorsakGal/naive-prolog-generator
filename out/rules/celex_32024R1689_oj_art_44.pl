% unit       : celex:32024R1689/oj#art_44
% title      : Certificates
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 46134af55384cab69d2f780c43c71a7f887fb49340a21c1cfa8f0e0737f6cb68
% model      : gpt-oss:120b-cloud
% prompt sha : 4a94e82497fcc25cbfefe8d07456e7fb55b684dda3b8508a42b247ea26b9f482
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred required_certificate_language/2, gloss('certificate must be drawn up in a language easily understood by the relevant authorities in the Member State of the notified body'), source('celex:32024R1689/oj#art_44').
:- pred required_certificate_validity_period/2, gloss('certificate validity period must not exceed the maximum years applicable to the AI system category'), source('celex:32024R1689/oj#art_44').
:- pred permitted_certificate_extension/3, gloss('provider may request extension of a certificate for a further period within the maximum years for the AI system category'), source('celex:32024R1689/oj#art_44').
:- pred must_suspend_or_withdraw_certificate/2, gloss('notified body shall suspend or withdraw a certificate when the AI system no longer meets the requirements and corrective action is not taken within the deadline'), source('celex:32024R1689/oj#art_44').
:- pred must_give_reasons/2, gloss('notified body shall give reasons for its decision concerning a certificate'), source('celex:32024R1689/oj#art_44').
:- pred required_appeal_procedure_available/0, gloss('an appeal procedure against decisions of notified bodies shall be available'), source('celex:32024R1689/oj#art_44').

:- pred certificate/1, gloss('certificate issued for an AI system'), source('celex:32024R1689/oj#art_44').
:- pred certificate_for_system/2, gloss('certificate is linked to a specific AI system'), source('celex:32024R1689/oj#art_44').
:- pred language_understood_by_authorities/2, gloss('language can be easily understood by the relevant authorities in the Member State'), source('celex:32024R1689/oj#art_44').
:- pred annex_1_applies/1, gloss('AI system is covered by annex 1'), source('celex:32024R1689/oj#art_44').
:- pred annex_3_applies/1, gloss('AI system is covered by annex 3'), source('celex:32024R1689/oj#art_44').
:- pred re_assessment_conformity_procedure/1, gloss('re‑assessment in accordance with the applicable conformity assessment procedures'), source('celex:32024R1689/oj#art_44').
:- pred meets_requirements/1, gloss('AI system meets the requirements set out in Chapter 3 Section 2'), source('celex:32024R1689/oj#art_44').
:- pred corrective_action_taken/3, gloss('provider has taken appropriate corrective action within the deadline'), source('celex:32024R1689/oj#art_44').
:- pred appropriate_deadline_set_by_notified_body/2, gloss('notified body has set an appropriate deadline for corrective action'), source('celex:32024R1689/oj#art_44').
:- pred decision/1, gloss('decision taken by a notified body concerning a certificate'), source('celex:32024R1689/oj#art_44').
:- pred certificate_related_decision/1, gloss('decision relates to a conformity certificate'), source('celex:32024R1689/oj#art_44').
:- pred appeal_procedure_available/0, gloss('appeal procedure against notified body decisions is available'), source('celex:32024R1689/oj#art_44').

required_certificate_language(Body, Language) :-
    notified_body(Body),
    language_understood_by_authorities(Body, Language).

provenance(required_certificate_language/2, 'celex:32024R1689/oj#art_44').

required_certificate_validity_period(Cert, MaxYears) :-
    certificate_for_system(Cert, System),
    (   annex_1_applies(System), MaxYears =< 5
    ;   annex_3_applies(System), MaxYears =< 4
    ).

provenance(required_certificate_validity_period/2, 'celex:32024R1689/oj#art_44').

permitted_certificate_extension(Provider, Cert, AdditionalYears) :-
    provider(Provider),
    certificate_for_system(Cert, System),
    (   annex_1_applies(System), AdditionalYears =< 5
    ;   annex_3_applies(System), AdditionalYears =< 4
    ),
    re_assessment_conformity_procedure(System).

provenance(permitted_certificate_extension/3, 'celex:32024R1689/oj#art_44').

must_suspend_or_withdraw_certificate(Body, Cert) :-
    notified_body(Body),
    certificate(Cert),
    certificate_for_system(Cert, System),
    \+ meets_requirements(System),
    provider(Provider),
    \+ corrective_action_taken(Provider, System, Deadline),
    appropriate_deadline_set_by_notified_body(Body, Deadline).

provenance(must_suspend_or_withdraw_certificate/2, 'celex:32024R1689/oj#art_44').

must_give_reasons(Body, Decision) :-
    notified_body(Body),
    decision(Decision),
    certificate_related_decision(Decision).

provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').

required_appeal_procedure_available :-
    appeal_procedure_available.

provenance(required_appeal_procedure_available/0, 'celex:32024R1689/oj#art_44').

% References
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').
