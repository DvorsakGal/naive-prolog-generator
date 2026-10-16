% unit       : celex:32024R1689/oj#art_44
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 46134af55384cab69d2f780c43c71a7f887fb49340a21c1cfa8f0e0737f6cb68
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 72ddad758d14df04d882e455606a79b51f8ff1e64edb8acece1dba0796f9b994
% cached     : False
% title      : Certificates
:- pred certificate/1, gloss('certificate issued by a notified body'), source('celex:32024R1689/oj#art_44').
:- pred must_draw_up_in_understandable_language(Body, Certificate), gloss('notified body must draw up certificate in language understood by relevant authorities'), source('celex:32024R1689/oj#art_44').
:- pred max_validity_period_years(System, Years), gloss('maximum validity period in years for a certificate covering an AI system'), source('celex:32024R1689/oj#art_44').
:- pred must_suspend_or_withdraw_certificate(Body, Certificate), gloss('notified body must suspend or withdraw certificate if requirements no longer met'), source('celex:32024R1689/oj#art_44').
:- pred corrective_action_taken_within_deadline(Provider, System), gloss('provider has taken appropriate corrective action within deadline set by notified body'), source('celex:32024R1689/oj#art_44').
:- pred must_give_reasons_for_decision(Body, Decision), gloss('notified body must give reasons for decision on certificate'), source('celex:32024R1689/oj#art_44').
:- pred appeal_procedure_available_against_decision(Body, Decision), gloss('appeal procedure is available against decisions of notified bodies'), source('celex:32024R1689/oj#art_44').

must_draw_up_in_understandable_language(Body, C) :-
    notified_body(Body),
    certificate(C),
    established_in_member_state(Body, _MS).

max_validity_period_years(S, 5) :-
    ai_system(S),
    covered_by_annex_i(S).

max_validity_period_years(S, 4) :-
    ai_system(S),
    covered_by_annex_iii(S).

must_suspend_or_withdraw_certificate(Body, C) :-
    notified_body(Body),
    certificate(C),
    covers_ai_system(C, S),
    \+ meets_chapter_3_section_2_requirements(S),
    \+ corrective_action_taken_within_deadline(_P, S).

must_give_reasons_for_decision(Body, decision(suspend_or_withdraw_certificate(C))) :-
    notified_body(Body),
    certificate(C),
    must_suspend_or_withdraw_certificate(Body, C).

appeal_procedure_available_against_decision(Body, Decision) :-
    notified_body(Body),
    decision_on_certificate(Decision).

provenance(must_draw_up_in_understandable_language/2, 'celex:32024R1689/oj#art_44').
provenance(max_validity_period_years/2, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_or_withdraw_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons_for_decision/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_procedure_available_against_decision/2, 'celex:32024R1689/oj#art_44').

references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').
