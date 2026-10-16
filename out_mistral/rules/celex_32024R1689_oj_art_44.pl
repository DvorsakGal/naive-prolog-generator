% unit       : celex:32024R1689/oj#art_44
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 46134af55384cab69d2f780c43c71a7f887fb49340a21c1cfa8f0e0737f6cb68
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 17ffd0bf9776877c5a9abb17746ecdc307783a745d653ceb445d4a847b930ff3
% cached     : False
% title      : Certificates
:- pred certificate/1, gloss('certificate issued by a notified body'), source('celex:32024R1689/oj#art_44').
:- pred certificate_validity_period/2, gloss('certificate and its validity period in years'), source('celex:32024R1689/oj#art_44').
:- pred certificate_supplement/2, gloss('supplement to a certificate'), source('celex:32024R1689/oj#art_44').
:- pred certificate_extension/2, gloss('certificate and its extension period in years'), source('celex:32024R1689/oj#art_44').
:- pred ai_system_covered_by_annex_1/1, gloss('AI system covered by Annex I'), source('celex:32024R1689/oj#art_44').
:- pred ai_system_covered_by_annex_3/1, gloss('AI system covered by Annex III'), source('celex:32024R1689/oj#art_44').
:- pred certificate_language_understandable/2, gloss('certificate and language easily understood by relevant authorities'), source('celex:32024R1689/oj#art_44').
:- pred must_draw_up_certificate_in_language/2, gloss('notified body must draw up certificate in understandable language'), source('celex:32024R1689/oj#art_44').
:- pred must_suspend_or_withdraw_or_restrict_certificate/3, gloss('notified body must suspend, withdraw or restrict certificate'), source('celex:32024R1689/oj#art_44').
:- pred must_give_reasons_for_decision/2, gloss('notified body must give reasons for decision'), source('celex:32024R1689/oj#art_44').
:- pred appeal_procedure_available/1, gloss('appeal procedure available against notified body decisions'), source('celex:32024R1689/oj#art_44').

must_draw_up_certificate_in_language(Body, certificate(C, Language)) :-
    notified_body(Body),
    certificate_language_understandable(certificate(C, Language), Body).

certificate_language_understandable(certificate(C, Language), Body) :-
    notified_body(Body),
    member_state_established(Body, MemberState),
    relevant_authorities(MemberState, Authorities),
    language_easily_understood(Language, Authorities).

certificate_validity_period(certificate(C, years(5)), S) :-
    ai_system_covered_by_annex_1(S),
    certificate(C),
    covers_certificate(C, S).

certificate_validity_period(certificate(C, years(4)), S) :-
    ai_system_covered_by_annex_3(S),
    certificate(C),
    covers_certificate(C, S).

certificate_extension(certificate(C, years(5)), S) :-
    ai_system_covered_by_annex_1(S),
    certificate(C),
    covers_certificate(C, S),
    provider(S, P),
    request_extension(P, C).

certificate_extension(certificate(C, years(4)), S) :-
    ai_system_covered_by_annex_3(S),
    certificate(C),
    covers_certificate(C, S),
    provider(S, P),
    request_extension(P, C).

certificate_supplement_valid(certificate_supplement(Sup, C)) :-
    certificate_supplement(Sup, C),
    certificate(C),
    certificate_valid(C).

must_suspend_or_withdraw_or_restrict_certificate(Body, certificate(C), S) :-
    notified_body(Body),
    certificate(C),
    covers_certificate(C, S),
    \+ meets_requirements(S, chp_3_sec_2),
    \+ corrective_action_taken(S, Body).

must_suspend_or_withdraw_or_restrict_certificate(Body, certificate(C), S) :-
    notified_body(Body),
    certificate(C),
    covers_certificate(C, S),
    \+ meets_requirements(S, chp_3_sec_2),
    corrective_action_taken(S, Body),
    \+ compliance_ensured_within_deadline(S, Body).

must_give_reasons_for_decision(Body, decision(suspend_or_withdraw_or_restrict, certificate(C))) :-
    notified_body(Body),
    certificate(C),
    must_suspend_or_withdraw_or_restrict_certificate(Body, certificate(C), _S).

appeal_procedure_available(notified_body_decision) :-
    true.

appeal_procedure_available(conformity_certificate_issued).

provenance(certificate/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_supplement/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_extension/2, 'celex:32024R1689/oj#art_44').
provenance(ai_system_covered_by_annex_1/1, 'celex:32024R1689/oj#art_44').
provenance(ai_system_covered_by_annex_3/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_language_understandable/2, 'celex:32024R1689/oj#art_44').
provenance(must_draw_up_certificate_in_language/2, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_or_withdraw_or_restrict_certificate/3, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons_for_decision/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').

references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').
