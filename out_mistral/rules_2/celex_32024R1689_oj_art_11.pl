% unit       : celex:32024R1689/oj#art_11
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1a09652a057f0a8e7b3be5bd2965cb3cad57a1fa9a32ab0dcc84ef71f1110302
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : a44f750c9b838e64d8a525bb1341e1cf29ecf9d6bd5709d47c855622832ab632
% cached     : False
% title      : Technical documentation
:- pred technical_documentation/1, gloss('technical documentation of a high-risk AI system'), source('celex:32024R1689/oj#art_11').
:- pred drawn_up_before_placing_on_market_or_putting_into_service/1, gloss('technical documentation drawn up before placing on market or putting into service'), source('celex:32024R1689/oj#art_11').
:- pred demonstrates_compliance_with_requirements/1, gloss('technical documentation demonstrates compliance with requirements set out in Chapter III Section 2'), source('celex:32024R1689/oj#art_11').
:- pred provides_information_to_authorities/1, gloss('technical documentation provides necessary information to national competent authorities and notified bodies in clear and comprehensive form'), source('celex:32024R1689/oj#art_11').
:- pred contains_minimum_elements_annex_4/1, gloss('technical documentation contains at minimum the elements set out in Annex IV'), source('celex:32024R1689/oj#art_11').
:- pred sme/1, gloss('small and medium-sized enterprise including start-up'), source('celex:32024R1689/oj#art_11').
:- pred simplified_technical_documentation_form/1, gloss('simplified technical documentation form targeted at needs of small and microenterprises established by Commission'), source('celex:32024R1689/oj#art_11').
:- pred uses_simplified_form/1, gloss('SME opts to provide information in simplified manner using the form'), source('celex:32024R1689/oj#art_11').
:- pred notified_body_accepts_simplified_form/1, gloss('notified body accepts the simplified form for purposes of conformity assessment'), source('celex:32024R1689/oj#art_11').
:- pred single_set_technical_documentation/1, gloss('single set of technical documentation drawn up for high-risk AI system related to product covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_11').
:- pred product_covered_by_union_harmonisation_legislation_annex_1_section_1/1, gloss('product covered by Union harmonisation legislation listed in Annex I Section 1'), source('celex:32024R1689/oj#art_11').
:- pred commission_empowered_to_adopt_delegated_acts/1, gloss('Commission empowered to adopt delegated acts to amend Annex IV'), source('celex:32024R1689/oj#art_11').

must_draw_up_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S),
    technical_documentation(S).

must_keep_technical_documentation_up_to_date(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    technical_documentation(S).

technical_documentation_demonstrates_compliance(S) :-
    high_risk_ai_system(S),
    technical_documentation(S),
    demonstrates_compliance_with_requirements(S).

technical_documentation_provides_information_to_authorities(S) :-
    high_risk_ai_system(S),
    technical_documentation(S),
    provides_information_to_authorities(S).

technical_documentation_contains_minimum_elements(S) :-
    high_risk_ai_system(S),
    technical_documentation(S),
    contains_minimum_elements_annex_4(S).

sme_may_provide_simplified(S) :-
    high_risk_ai_system(S),
    technical_documentation(S),
    sme(Provider),
    provider(Provider),
    simplified_technical_documentation_form(Form),
    uses_simplified_form(S).

notified_body_accepts_simplified_form_for_conformity_assessment(Body, S) :-
    notified_body(Body),
    high_risk_ai_system(S),
    technical_documentation(S),
    sme(Provider),
    provider(Provider),
    uses_simplified_form(S),
    notified_body_accepts_simplified_form(S).

single_set_technical_documentation_required(S) :-
    high_risk_ai_system(S),
    product_covered_by_union_harmonisation_legislation_annex_1_section_1(S),
    single_set_technical_documentation(S).

single_set_technical_documentation_contains_all_information(S) :-
    single_set_technical_documentation_required(S),
    technical_documentation(S),
    contains_minimum_elements_annex_4(S).

commission_empowered_to_amend_annex_4 :-
    commission_empowered_to_adopt_delegated_acts(act(amend_annex_4)).

provenance(technical_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(drawn_up_before_placing_on_market_or_putting_into_service/1, 'celex:32024R1689/oj#art_11').
provenance(demonstrates_compliance_with_requirements/1, 'celex:32024R1689/oj#art_11').
provenance(provides_information_to_authorities/1, 'celex:32024R1689/oj#art_11').
provenance(contains_minimum_elements_annex_4/1, 'celex:32024R1689/oj#art_11').
provenance(sme/1, 'celex:32024R1689/oj#art_11').
provenance(simplified_technical_documentation_form/1, 'celex:32024R1689/oj#art_11').
provenance(uses_simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(notified_body_accepts_simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(single_set_technical_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(product_covered_by_union_harmonisation_legislation_annex_1_section_1/1, 'celex:32024R1689/oj#art_11').
provenance(commission_empowered_to_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_11').
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_demonstrates_compliance/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_provides_information_to_authorities/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_contains_minimum_elements/1, 'celex:32024R1689/oj#art_11').
provenance(sme_may_provide_simplified/1, 'celex:32024R1689/oj#art_11').
provenance(notified_body_accepts_simplified_form_for_conformity_assessment/2, 'celex:32024R1689/oj#art_11').
provenance(single_set_technical_documentation_required/1, 'celex:32024R1689/oj#art_11').
provenance(single_set_technical_documentation_contains_all_information/1, 'celex:32024R1689/oj#art_11').
provenance(commission_empowered_to_amend_annex_4/0, 'celex:32024R1689/oj#art_11').

references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').
