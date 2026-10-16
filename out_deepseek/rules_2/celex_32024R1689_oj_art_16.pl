% unit       : celex:32024R1689/oj#art_16
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ccb6ea32e881fdb457a5e7e7774884fa720b03add1341ce6d731aabbfd8af058
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 7b0caa737bc619a650590beab7e1c22b9c8fee4b9fe32462db5a320f9f3edfaf
% cached     : False
% title      : Obligations of providers of high-risk AI systems
:- pred must_indicate_identity/2, gloss('provider must indicate name, trade name or mark and contact address on system, packaging or documentation'), source('celex:32024R1689/oj#art_16').
:- pred must_have_quality_management_system/2, gloss('provider must have a quality management system in place'), source('celex:32024R1689/oj#art_16').
:- pred must_keep_documentation/2, gloss('provider must keep the documentation referred to in Article 18'), source('celex:32024R1689/oj#art_16').
:- pred must_keep_logs/2, gloss('provider must keep automatically generated logs when under their control'), source('celex:32024R1689/oj#art_16').
:- pred must_undergo_conformity_assessment/2, gloss('provider must ensure system undergoes conformity assessment before placing on market or putting into service'), source('celex:32024R1689/oj#art_16').
:- pred must_draw_up_eu_declaration_of_conformity/2, gloss('provider must draw up an EU declaration of conformity'), source('celex:32024R1689/oj#art_16').
:- pred must_affix_ce_marking/2, gloss('provider must affix CE marking to system, packaging or documentation'), source('celex:32024R1689/oj#art_16').
:- pred must_comply_with_registration/2, gloss('provider must comply with registration obligations'), source('celex:32024R1689/oj#art_16').
:- pred must_take_corrective_actions/2, gloss('provider must take necessary corrective actions and provide information'), source('celex:32024R1689/oj#art_16').
:- pred must_demonstrate_conformity_on_request/2, gloss('provider must demonstrate conformity upon reasoned request of national competent authority'), source('celex:32024R1689/oj#art_16').
:- pred must_comply_with_accessibility/2, gloss('provider must ensure system complies with accessibility requirements'), source('celex:32024R1689/oj#art_16').

must_ensure_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_indicate_identity(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_have_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_keep_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_undergo_conformity_assessment(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_draw_up_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_affix_ce_marking(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_comply_with_registration(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_take_corrective_actions(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_demonstrate_conformity_on_request(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_comply_with_accessibility(P, S) :-
    provider(P),
    high_risk_ai_system(S).

provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_identity/2, 'celex:32024R1689/oj#art_16').
provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_16').
provenance(must_undergo_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_16').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate_conformity_on_request/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_with_accessibility/2, 'celex:32024R1689/oj#art_16').

references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_16', 'celex:32016L2102/oj').
references('celex:32024R1689/oj#art_16', 'celex:32019L0882/oj').
