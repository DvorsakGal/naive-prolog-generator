% unit       : celex:32024R1689/oj#art_44
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 46134af55384cab69d2f780c43c71a7f887fb49340a21c1cfa8f0e0737f6cb68
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 91a48e287e418c18b9f80009b10057b1b7e6df343163d2c25a30498305480dfa
% cached     : False
% title      : Certificates
:- pred certificate/1, gloss('certificate issued by a notified body'), source('celex:32024R1689/oj#art_44').
:- pred issued_by_notified_body/2, gloss('certificate issued by a specific notified body'), source('celex:32024R1689/oj#art_44').
:- pred drawn_up_in_understandable_language/2, gloss('certificate drawn up in language easily understood by relevant authorities'), source('celex:32024R1689/oj#art_44').
:- pred max_validity_period/2, gloss('maximum validity period for a certificate based on system category'), source('celex:32024R1689/oj#art_44').
:- pred must_suspend_or_withdraw_certificate/2, gloss('notified body must suspend or withdraw certificate if requirements not met'), source('celex:32024R1689/oj#art_44').
:- pred corrective_action_taken_within_deadline/2, gloss('provider took appropriate corrective action within deadline set by notified body'), source('celex:32024R1689/oj#art_44').
:- pred appeal_procedure_available/1, gloss('appeal procedure available against decisions of notified bodies'), source('celex:32024R1689/oj#art_44').

certificate(C) :-
    issued_by_notified_body(C, _B).

drawn_up_in_understandable_language(C, MS) :-
    certificate(C),
    issued_by_notified_body(C, B),
    established_under_national_law(B),
    member_state_of_establishment(B, MS).

max_validity_period(C, years(5)) :-
    certificate(C),
    covers_annex_i_system(C).

max_validity_period(C, years(4)) :-
    certificate(C),
    high_risk_ai_system_annex_iii(S),
    certificate_for_system(C, S).

must_suspend_or_withdraw_certificate(B, C) :-
    issued_by_notified_body(C, B),
    certificate_for_system(C, S),
    requirements_of_chapter_3_section_2(S),
    \+ meets_requirements_of_art_31(S),
    \+ corrective_action_taken_within_deadline(provider(S), deadline_set_by(B)).

appeal_procedure_available(decision(B)) :-
    notified_body(B).

provenance(certificate/1, 'celex:32024R1689/oj#art_44').
provenance(issued_by_notified_body/2, 'celex:32024R1689/oj#art_44').
provenance(drawn_up_in_understandable_language/2, 'celex:32024R1689/oj#art_44').
provenance(max_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_or_withdraw_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(corrective_action_taken_within_deadline/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').

references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').
