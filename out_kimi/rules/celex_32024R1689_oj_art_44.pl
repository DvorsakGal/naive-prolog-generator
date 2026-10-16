% unit       : celex:32024R1689/oj#art_44
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 46134af55384cab69d2f780c43c71a7f887fb49340a21c1cfa8f0e0737f6cb68
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cc6074ac9393b8a566e6db5b7a1d2409dd13f0c008ad1cefa7b576e9a925001d
% cached     : False
% title      : Certificates
:- pred certificate_language/2, gloss('certificate must be in language understood by authorities'), source('celex:32024R1689/oj#art_44').
:- pred certificate_validity_period/3, gloss('maximum validity period for certificate based on annex'), source('celex:32024R1689/oj#art_44').
:- pred certificate_extension_period/3, gloss('maximum extension period for certificate based on annex'), source('celex:32024R1689/oj#art_44').
:- pred must_suspend_withdraw_or_restrict_certificate/2, gloss('notified body must suspend, withdraw, or restrict certificate'), source('celex:32024R1689/oj#art_44').
:- pred must_give_reasons/2, gloss('notified body must give reasons for decision'), source('celex:32024R1689/oj#art_44').
:- pred appeal_procedure_available/1, gloss('appeal procedure against notified body decisions is available'), source('celex:32024R1689/oj#art_44').
:- pred certificate_supplement_valid/1, gloss('certificate supplement remains valid if base certificate valid'), source('celex:32024R1689/oj#art_44').
:- pred covered_by_annex_1/1, gloss('AI system covered by Annex I'), source('celex:32024R1689/oj#art_44').
:- pred covered_by_annex_3/1, gloss('AI system covered by Annex III'), source('celex:32024R1689/oj#art_44').
:- pred no_longer_meets_requirements/1, gloss('AI system no longer meets Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_44').
:- pred compliance_ensured_by_corrective_action/1, gloss('provider ensures compliance by appropriate corrective action within deadline'), source('celex:32024R1689/oj#art_44').
:- pred appropriate_deadline_set/2, gloss('notified body sets appropriate deadline for corrective action'), source('celex:32024R1689/oj#art_44').

certificate_language(C, L) :-
    certificate_issued_by_notified_body(C, _NB),
    language_understood_by_relevant_authorities(L, _MS),
    member_state_of_establishment(_MS, _NB).

certificate_validity_period(C, years(5), S) :-
    certificate_for_ai_system(C, S),
    covered_by_annex_1(S).

certificate_validity_period(C, years(4), S) :-
    certificate_for_ai_system(C, S),
    covered_by_annex_3(S).

certificate_extension_period(C, years(5), S) :-
    certificate_for_ai_system(C, S),
    covered_by_annex_1(S),
    extension_requested_by_provider(C, _P).

certificate_extension_period(C, years(4), S) :-
    certificate_for_ai_system(C, S),
    covered_by_annex_3(S),
    extension_requested_by_provider(C, _P).

must_suspend_withdraw_or_restrict_certificate(NB, C) :-
    notified_body(NB),
    certificate_issued_by_notified_body(C, NB),
    certificate_for_ai_system(C, S),
    no_longer_meets_requirements(S),
    \+ compliance_ensured_by_corrective_action(S).

must_give_reasons(NB, Decision) :-
    notified_body(NB),
    decision_on_certificate(NB, Decision).

appeal_procedure_available(Decision) :-
    decision_of_notified_body(Decision).

certificate_supplement_valid(Supplement) :-
    certificate_supplement(Supplement),
    supplements_certificate(Supplement, C),
    valid(C).

provenance(certificate_language/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_validity_period/3, 'celex:32024R1689/oj#art_44').
provenance(certificate_extension_period/3, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_withdraw_or_restrict_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_supplement_valid/1, 'celex:32024R1689/oj#art_44').

references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').
