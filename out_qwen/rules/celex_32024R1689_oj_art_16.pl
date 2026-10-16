% unit       : celex:32024R1689/oj#art_16
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ccb6ea32e881fdb457a5e7e7774884fa720b03add1341ce6d731aabbfd8af058
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 35bb11f2e679796637c0d1b1d8b12e7da7cffd68affcee6866be33a1883200b1
% cached     : False
% title      : Obligations of providers of high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under Chapter III'), source('celex:32024R1689/oj#art_16').
:- pred must_ensure_compliance_with_requirements(Provider, System), gloss('provider ensures high-risk AI system complies with Section 2 requirements'), source('celex:32024R1689/oj#art_16').
:- pred must_indicate_identification_details(Provider, System), gloss('provider indicates name and contact address on system or packaging'), source('celex:32024R1689/oj#art_16').
:- pred must_have_quality_management_system(Provider, System), gloss('provider has quality management system complying with Article 17'), source('celex:32024R1689/oj#art_16').
:- pred must_keep_technical_documentation(Provider, System), gloss('provider keeps documentation referred to in Article 18'), source('celex:32024R1689/oj#art_16').
:- pred must_keep_logs(Provider, System), gloss('provider keeps automatically generated logs when under their control'), source('celex:32024R1689/oj#art_16').
:- pred must_undergo_conformity_assessment(Provider, System), gloss('provider ensures conformity assessment prior to placing on market'), source('celex:32024R1689/oj#art_16').
:- pred must_draw_up_eu_declaration_of_conformity(Provider, System), gloss('provider draws up EU declaration of conformity per Article 47'), source('celex:32024R1689/oj#art_16').
:- pred must_affix_ce_marking(Provider, System), gloss('provider affixes CE marking to indicate conformity'), source('celex:32024R1689/oj#art_16').
:- pred must_comply_with_registration_obligations(Provider, System), gloss('provider complies with registration obligations in Article 49(1)'), source('celex:32024R1689/oj#art_16').
:- pred must_take_corrective_actions(Provider, System), gloss('provider takes corrective actions and provides information per Article 20'), source('celex:32024R1689/oj#art_16').
:- pred must_demonstrate_conformity_upon_request(Provider, Authority, System), gloss('provider demonstrates conformity upon reasoned request of authority'), source('celex:32024R1689/oj#art_16').
:- pred must_ensure_accessibility_compliance(Provider, System), gloss('provider ensures compliance with accessibility requirements'), source('celex:32024R1689/oj#art_16').

must_ensure_compliance_with_requirements(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_indicate_identification_details(P, S) :-
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

must_comply_with_registration_obligations(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_take_corrective_actions(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_demonstrate_conformity_upon_request(P, A, S) :-
    provider(P),
    national_competent_authority(A),
    high_risk_ai_system(S).

must_ensure_accessibility_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S).

provenance(must_ensure_compliance_with_requirements/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_identification_details/2, 'celex:32024R1689/oj#art_16').
provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_technical_documentation/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_16').
provenance(must_undergo_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_with_registration_obligations/2, 'celex:32024R1689/oj#art_16').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate_conformity_upon_request/3, 'celex:32024R1689/oj#art_16').
provenance(must_ensure_accessibility_compliance/2, 'celex:32024R1689/oj#art_16').

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
