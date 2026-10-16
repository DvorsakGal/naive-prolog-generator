% unit       : celex:32024R1689/oj#art_16
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ccb6ea32e881fdb457a5e7e7774884fa720b03add1341ce6d731aabbfd8af058
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0d988444cb6a02a1334c03acc0fabc0615199e644be6a5d2681a194c8ee0497f
% cached     : False
% title      : Obligations of providers of high-risk AI systems
:- pred must_ensure_compliance/2, gloss('provider must ensure high-risk AI system complies with Chapter 3 Section 2 requirements'), source('celex:32024R1689/oj#art_16').
:- pred must_indicate_contact_details/2, gloss('provider must indicate name and contact address on system, packaging or documentation'), source('celex:32024R1689/oj#art_16').
:- pred must_have_quality_management_system/2, gloss('provider must have quality management system complying with Article 17'), source('celex:32024R1689/oj#art_16').
:- pred must_keep_documentation/2, gloss('provider must keep documentation referred to in Article 18'), source('celex:32024R1689/oj#art_16').
:- pred must_keep_logs/2, gloss('provider must keep automatically generated logs when under their control'), source('celex:32024R1689/oj#art_16').
:- pred must_conformity_assessment/2, gloss('provider must ensure system undergoes conformity assessment before placement or putting into service'), source('celex:32024R1689/oj#art_16').
:- pred must_draw_up_declaration_of_conformity/2, gloss('provider must draw up EU declaration of conformity'), source('celex:32024R1689/oj#art_16').
:- pred must_affix_ce_marking/2, gloss('provider must affix CE marking to indicate conformity'), source('celex:32024R1689/oj#art_16').
:- pred must_comply_registration/2, gloss('provider must comply with registration obligations'), source('celex:32024R1689/oj#art_16').
:- pred must_take_corrective_actions/2, gloss('provider must take corrective actions and provide information as required'), source('celex:32024R1689/oj#art_16').
:- pred must_demonstrate_conformity/2, gloss('provider must demonstrate conformity upon reasoned request of national competent authority'), source('celex:32024R1689/oj#art_16').
:- pred must_ensure_accessibility/2, gloss('provider must ensure system complies with accessibility requirements'), source('celex:32024R1689/oj#art_16').

must_ensure_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_indicate_contact_details(P, S) :-
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
    high_risk_ai_system(S),
    under_control(P, S).

must_conformity_assessment(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    before(placing_on_market(S) ; putting_into_service(S)).

must_draw_up_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_affix_ce_marking(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_comply_registration(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_take_corrective_actions(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_demonstrate_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    reasoned_request(Authority),
    national_competent_authority(Authority).

must_ensure_accessibility(P, S) :-
    provider(P),
    high_risk_ai_system(S).

provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_contact_details/2, 'celex:32024R1689/oj#art_16').
provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_16').
provenance(must_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up_declaration_of_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_registration/2, 'celex:32024R1689/oj#art_16').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(must_ensure_accessibility/2, 'celex:32024R1689/oj#art_16').

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
