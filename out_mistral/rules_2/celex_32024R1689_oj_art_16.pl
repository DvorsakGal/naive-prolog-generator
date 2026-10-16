% unit       : celex:32024R1689/oj#art_16
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ccb6ea32e881fdb457a5e7e7774884fa720b03add1341ce6d731aabbfd8af058
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : b8314586012d5284b407608b3c5d81cf8ce8131ff01b6645a30157f02bf25b03
% cached     : False
% title      : Obligations of providers of high-risk AI systems
:- pred must_ensure_compliance/2, gloss('must ensure compliance'), source('reconciled').
:- pred must_indicate_identification/2, gloss('provider indicates name, registered trade name or registered trade mark, and contact address on the high-risk AI system or its packaging or accompanying documentation'), source('celex:32024R1689/oj#art_16').
:- pred must_have_quality_management_system/2, gloss('provider has a quality management system in place which complies with Article 17'), source('celex:32024R1689/oj#art_16').
:- pred must_keep_documentation/2, gloss('provider must keep documentation at disposal of national competent authorities'), source('reconciled').
:- pred logs_under_control/2, gloss('logs of high-risk AI system under control of provider'), source('reconciled').
:- pred must_undergo_conformity_assessment/2, gloss('provider ensures high-risk AI system undergoes relevant conformity assessment procedure prior to being placed on the market or put into service'), source('celex:32024R1689/oj#art_16').
:- pred must_draw_up_eu_declaration/2, gloss('must draw up eu declaration'), source('reconciled').
:- pred must_affix_ce_marking/2, gloss('provider affixes CE marking to high-risk AI system or its packaging or accompanying documentation to indicate conformity with the regulation'), source('celex:32024R1689/oj#art_16').
:- pred must_comply_with_registration/2, gloss('must comply with registration'), source('reconciled').
:- pred must_take_necessary_steps/2, gloss('who is obliged to take steps, what steps'), source('reconciled').
:- pred must_provide/3, gloss('who must provide what information to whom'), source('reconciled').
:- pred must_demonstrate_conformity/3, gloss('provider demonstrates conformity of high-risk AI system with requirements upon reasoned request of national competent authority'), source('celex:32024R1689/oj#art_16').
:- pred must_comply_with_accessibility_requirements/2, gloss('provider ensures high-risk AI system complies with accessibility requirements in accordance with Directive (EU) 2016/2102 and Directive (EU) 2019/882'), source('celex:32024R1689/oj#art_16').

must_ensure_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    requirements_set_out_in_chapter_3_section_2(Req),
    compliant_with(S, Req).

must_indicate_identification(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    indicates_on_system_or_packaging_or_documentation(P, S, identification(name, registered_trade_name, registered_trade_mark, contact_address)).

must_have_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    quality_management_system_in_place(P),
    complies_with_article_17(P).

must_keep_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    documentation_referred_to_in_article_18(Doc),
    keep_at_disposal(P, Doc).

logs_under_control(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_automatically_generated(S),
    logs_referred_to_in_article_19(S),
    under_control_of(P, S).

must_undergo_conformity_assessment(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    conformity_assessment_procedure(Proc),
    procedure_referred_to_in_article_43(Proc),
    undergoes(S, Proc),
    before_placing_on_market_or_putting_into_service(S).

must_draw_up_eu_declaration(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    draws_up_eu_declaration_of_conformity(P, S),
    in_accordance_with_article_47(P, S).

must_affix_ce_marking(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    affixes_ce_marking(P, S),
    on_system_or_packaging_or_documentation(P, S),
    indicates_conformity_with_regulation(S),
    in_accordance_with_article_48(P, S).

must_comply_with_registration(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    registration_obligations_referred_to_in_article_49_par_1(Obl),
    complies_with(P, Obl).

must_take_necessary_steps(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    takes_corrective_actions(P, S),
    provides_information_as_required_in_article_20(P, S).

must_provide(P, information(conformity(S)), A) :-
    provider(P),
    high_risk_ai_system(S),
    national_competent_authority(A),
    reasoned_request(A, P),
    demonstrates_conformity(P, S, requirements_set_out_in_chapter_3_section_2).

must_demonstrate_conformity(P, S, A) :-
    provider(P),
    high_risk_ai_system(S),
    national_competent_authority(A),
    from_competent_authority(reasoned_request, A),
    demonstrates_conformity_with_requirements(P, S, chapter_3_section_2).

must_comply_with_accessibility_requirements(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    complies_with_accessibility_requirements(S, directive_eu_2016_2102),
    complies_with_accessibility_requirements(S, directive_eu_2019_882).

compliant_with(S, Req) :-
    high_risk_ai_system(S),
    requirements_set_out_in_chapter_3_section_2(Req).

indicates_on_system_or_packaging_or_documentation(P, S, identification(Name, TradeName, TradeMark, Address)) :-
    provider(P),
    high_risk_ai_system(S),
    (indicates_on_system(P, S, identification(Name, TradeName, TradeMark, Address));
     (indicates_on_packaging(P, S, identification(Name, TradeName, TradeMark, Address));
      indicates_on_accompanying_documentation(P, S, identification(Name, TradeName, TradeMark, Address)))).

quality_management_system_in_place(P) :-
    provider(P).

complies_with_article_17(P) :-
    provider(P),
    quality_management_system_in_place(P).

documentation_referred_to_in_article_18(Doc) :-
    information_and_documentation(Doc).

logs_automatically_generated(S) :-
    high_risk_ai_system(S),
    automatically_generated(S).

logs_referred_to_in_article_19(S) :-
    high_risk_ai_system(S),
    automatically_generated(S).

under_control_of(P, S) :-
    provider(P),
    high_risk_ai_system(S).

conformity_assessment_procedure(Proc) :-
    conformity_assessment(Proc).

procedure_referred_to_in_article_43(Proc) :-
    conformity_assessment_procedure(Proc).

undergoes(S, Proc) :-
    high_risk_ai_system(S),
    conformity_assessment_procedure(Proc).

before_placing_on_market_or_putting_into_service(S) :-
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S).

draws_up_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).

in_accordance_with_article_47(P, S) :-
    provider(P),
    high_risk_ai_system(S).

affixes_ce_marking(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    ce_marking(S).

on_system_or_packaging_or_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S).

indicates_conformity_with_regulation(S) :-
    high_risk_ai_system(S),
    ce_marking(S).

in_accordance_with_article_48(P, S) :-
    provider(P),
    high_risk_ai_system(S).

registration_obligations_referred_to_in_article_49_par_1(Obl) :-
    registered_in_eu_database(Obl).

complies_with(P, Obl) :-
    provider(P),
    registered_in_eu_database(Obl).

takes_corrective_actions(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    must_take_corrective_actions(P, S).

provides_information_as_required_in_article_20(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    must_provide(P, information(article_20), national_competent_authority).

reasoned_request(A, P) :-
    national_competent_authority(A),
    from_competent_authority(reasoned_request, A).

demonstrates_conformity(P, S, Req) :-
    provider(P),
    high_risk_ai_system(S),
    requirements_set_out_in_chapter_3_section_2(Req).

demonstrates_conformity_with_requirements(P, S, chapter_3_section_2) :-
    provider(P),
    high_risk_ai_system(S).

complies_with_accessibility_requirements(S, directive_eu_2016_2102) :-
    high_risk_ai_system(S).

complies_with_accessibility_requirements(S, directive_eu_2019_882) :-
    high_risk_ai_system(S).

requirements_set_out_in_chapter_3_section_2(Req) :-
    article_31_requirements(Req).

provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_identification/2, 'celex:32024R1689/oj#art_16').
provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_16').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_16').
provenance(must_undergo_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up_eu_declaration/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_16').
provenance(must_take_necessary_steps/2, 'celex:32024R1689/oj#art_16').
provenance(must_provide/3, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate_conformity/3, 'celex:32024R1689/oj#art_16').
provenance(must_comply_with_accessibility_requirements/2, 'celex:32024R1689/oj#art_16').

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
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_16', 'celex:32016L2102/oj').
references('celex:32024R1689/oj#art_16', 'celex:32019L0882/oj').
