% unit       : celex:32024R1689/oj#art_44
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 46134af55384cab69d2f780c43c71a7f887fb49340a21c1cfa8f0e0737f6cb68
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : ef68c8a47772bb6b5493bc627d598808f625e729968d43bf5e4cc7dbd7ee823a
% cached     : False
% title      : Certificates
:- pred certificate/1, gloss('certificate issued by a notified body'), source('reconciled').
:- pred certificate_valid/1, gloss('certificate remains valid'), source('reconciled').
:- pred easily_understood_language/1, gloss('language easily understood by the authority in an official language of Union institutions as indicated by Member State'), source('reconciled').
:- pred notified_body/1, gloss('conformity assessment body notified in accordance with the regulation'), source('22').
:- pred member_state/1, gloss('a Member State of the European Union'), source('reconciled').
:- pred high_risk_ai_system/1, gloss('AI system listed in Annex III as high-risk'), source('reconciled').
:- pred ai_system_covered_by_annex_1/1, gloss('AI system covered by Annex I'), source('art_44').
:- pred ai_system_covered_by_annex_3/1, gloss('AI system covered by Annex III'), source('art_44').
:- pred certificate_validity_period/2, gloss('certificate validity period for system'), source('art_44').
:- pred certificate_extension_period/2, gloss('certificate extension period for system'), source('art_44').
:- pred certificate_drawn_up_in_language/2, gloss('certificate drawn up in language easily understood by authorities of member state'), source('art_44').
:- pred certificate_suspended_or_withdrawn/1, gloss('certificate suspended or withdrawn by notified body'), source('art_44').
:- pred certificate_restricted/1, gloss('certificate restricted by notified body'), source('art_44').
:- pred certificate_supplement/1, gloss('supplement to a certificate'), source('art_44').
:- pred certificate_supplemented_by/2, gloss('certificate supplemented by supplement'), source('art_44').
:- pred appeal_procedure_available/1, gloss('appeal procedure available against decision of notified body'), source('art_44').
:- pred notified_body_finds_non_compliance/2, gloss('notified body finds AI system no longer meets requirements'), source('art_44').
:- pred corrective_action_taken/2, gloss('provider takes appropriate corrective action for system'), source('art_44').
:- pred deadline_set_by_notified_body/2, gloss('appropriate deadline set by notified body for system'), source('art_44').
:- pred reasons_given_for_decision/2, gloss('notified body gives reasons for decision'), source('art_44').
:- pred re_assessment_conducted/1, gloss('re-assessment conducted in accordance with applicable conformity assessment procedures'), source('art_44').

certificate_drawn_up_in_language(C, MS) :-
    certificate(C),
    notified_body(B),
    certificate_issued_by(C, B),
    member_state(MS),
    notified_body_established_in(B, MS),
    easily_understood_language(language(C)).

certificate_validity_period(C, years(5)) :-
    certificate(C),
    ai_system_covered_by_annex_1(S),
    certificate_for_system(C, S).

certificate_validity_period(C, years(4)) :-
    certificate(C),
    ai_system_covered_by_annex_3(S),
    certificate_for_system(C, S).

certificate_extension_period(C, years(5)) :-
    certificate(C),
    ai_system_covered_by_annex_1(S),
    certificate_for_system(C, S).

certificate_extension_period(C, years(4)) :-
    certificate(C),
    ai_system_covered_by_annex_3(S),
    certificate_for_system(C, S).

certificate_valid(C) :-
    certificate(C),
    certificate_validity_period(C, P),
    within_validity_period(C, P).

certificate_valid(C) :-
    certificate_supplement(Sup),
    certificate_supplemented_by(C, Sup),
    certificate_valid(C).

ai_system_covered_by_annex_3(S) :-
    high_risk_ai_system(S).

certificate_suspended_or_withdrawn(C) :-
    certificate(C),
    notified_body(B),
    notified_body_finds_non_compliance(B, S),
    certificate_for_system(C, S),
    \+ corrective_action_ensures_compliance(B, S).

certificate_restricted(C) :-
    certificate(C),
    notified_body(B),
    notified_body_finds_non_compliance(B, S),
    certificate_for_system(C, S),
    \+ corrective_action_ensures_compliance(B, S).

corrective_action_ensures_compliance(B, S) :-
    provider(P),
    corrective_action_taken(P, S),
    deadline_set_by_notified_body(B, S),
    compliance_ensured_within_deadline(S).

must_suspend_or_withdraw_or_restrict_certificate(B, C) :-
    notified_body(B),
    certificate(C),
    notified_body_finds_non_compliance(B, S),
    certificate_for_system(C, S),
    \+ corrective_action_ensures_compliance(B, S),
    reasons_given_for_decision(B, suspend_or_withdraw_or_restrict(C)).

appeal_procedure_available(decision(B, C)) :-
    notified_body(B),
    certificate(C),
    decision_of_notified_body(B, C).

provenance(certificate_drawn_up_in_language/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_extension_period/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_valid/1, 'celex:32024R1689/oj#art_44').
provenance(ai_system_covered_by_annex_3/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_suspended_or_withdrawn/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_restricted/1, 'celex:32024R1689/oj#art_44').
provenance(corrective_action_ensures_compliance/2, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_or_withdraw_or_restrict_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').

references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').
