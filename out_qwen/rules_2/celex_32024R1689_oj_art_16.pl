% unit       : celex:32024R1689/oj#art_16
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ccb6ea32e881fdb457a5e7e7774884fa720b03add1341ce6d731aabbfd8af058
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : b31e8b2351fcf82bd37e8b9e913522a017881ae51667c4093dde4d8aefafd02f
% cached     : False
% title      : Obligations of providers of high-risk AI systems
:- pred must_ensure_compliance_with_chapter_3_section_2/2, gloss('provider must ensure high-risk AI system complies with requirements of Chapter III Section 2'), source('celex:32024R1689/oj#art_16').
:- pred must_indicate_provider_identity/2, gloss('provider must indicate name and contact address on system, packaging or documentation'), source('celex:32024R1689/oj#art_16').
:- pred must_have_quality_management_system/2, gloss('provider must have quality management system complying with Article 17'), source('celex:32024R1689/oj#art_16').
:- pred must_keep_technical_documentation/2, gloss('provider must keep documentation referred to in Article 18'), source('celex:32024R1689/oj#art_16').
:- pred must_keep_logs/2, gloss('provider must keep automatically generated logs when under their control'), source('celex:32024R1689/oj#art_16').
:- pred must_undergo_conformity_assessment/2, gloss('provider must ensure system undergoes conformity assessment before placing on market or putting into service'), source('celex:32024R1689/oj#art_16').
:- pred must_draw_up_eu_declaration_of_conformity/2, gloss('provider must draw up EU declaration of conformity in accordance with Article 47'), source('celex:32024R1689/oj#art_16').
:- pred must_affix_ce_marking/2, gloss('provider must affix CE marking to indicate conformity with this Regulation'), source('celex:32024R1689/oj#art_16').
:- pred must_comply_with_registration_obligations/2, gloss('provider must comply with registration obligations referred to in Article 49(1)'), source('celex:32024R1689/oj#art_16').
:- pred must_take_corrective_actions_and_provide_information/2, gloss('provider must take corrective actions and provide information as required in Article 20'), source('celex:32024R1689/oj#art_16').
:- pred must_demonstrate_conformity_on_request/2, gloss('provider must demonstrate conformity upon reasoned request of national competent authority'), source('celex:32024R1689/oj#art_16').
:- pred must_ensure_accessibility_compliance/2, gloss('provider must ensure system complies with accessibility requirements'), source('celex:32024R1689/oj#art_16').

must_ensure_compliance_with_chapter_3_section_2(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    requirements_of_chapter_3_section_2(S).

must_indicate_provider_identity(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_have_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_keep_technical_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_under_control(P, S).

must_undergo_conformity_assessment(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    before_placing_on_market_or_service(S).

must_draw_up_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_affix_ce_marking(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_comply_with_registration_obligations(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_take_corrective_actions_and_provide_information(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_demonstrate_conformity_on_request(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    national_competent_authority(A),
    reasoned_request(A, S).

must_ensure_accessibility_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S).

provenance(must_ensure_compliance_with_chapter_3_section_2/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_provider_identity/2, 'celex:32024R1689/oj#art_16').
provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_technical_documentation/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_16').
provenance(must_undergo_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_with_registration_obligations/2, 'celex:32024R1689/oj#art_16').
provenance(must_take_corrective_actions_and_provide_information/2, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate_conformity_on_request/2, 'celex:32024R1689/oj#art_16').
provenance(must_ensure_accessibility_compliance/2, 'celex:32024R1689/oj#art_16').

references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_16', 'celex:32016L2102/oj').
references('celex:32024R1689/oj#art_16', 'celex:32019L0882/oj').
