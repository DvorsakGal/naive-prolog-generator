% unit       : celex:32024R1689/oj#art_11
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1a09652a057f0a8e7b3be5bd2965cb3cad57a1fa9a32ab0dcc84ef71f1110302
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f8fce1fdd65e9bca970121d591ded18bd6887477a0004691cf922227e1fd883c
% cached     : False
% title      : Technical documentation
:- pred technical_documentation/1, gloss('documentation demonstrating compliance of a high-risk AI system'), source('celex:32024R1689/oj#art_11').
:- pred sme/1, gloss('small or medium-sized enterprise, including start-ups'), source('celex:32024R1689/oj#art_11').
:- pred simplified_technical_documentation_form/1, gloss('simplified form for technical documentation targeted at small and microenterprises'), source('celex:32024R1689/oj#art_11').
:- pred product_covered_by_union_harmonisation_legislation/1, gloss('product covered by Union harmonisation legislation listed in Annex I Section A'), source('celex:32024R1689/oj#art_11').

must_draw_up_technical_documentation(Provider, S) :-
    provider(Provider),
    ai_system(S),
    high_risk_ai_system(S),
    technical_documentation(D),
    drawn_up_before_placing_or_service(D, S),
    kept_up_to_date(D).

drawn_up_before_placing_or_service(D, S) :-
    placing_on_market(S);
    putting_into_service(S).

technical_documentation_demonstrates_compliance(D, S) :-
    technical_documentation(D),
    high_risk_ai_system(S),
    complies_with_requirements(S, 'celex:32024R1689/oj#chp_3/sec_2').

technical_documentation_provides_assessment_information(D, S) :-
    technical_documentation(D),
    high_risk_ai_system(S),
    provides_information_to(D, national_competent_authority),
    provides_information_to(D, notified_body),
    clear_and_comprehensive(D).

technical_documentation_contains_minimum_elements(D) :-
    technical_documentation(D),
    contains_elements_from(D, 'celex:32024R1689/oj#anx_4').

may_provide_simplified_elements(SME, D) :-
    sme(SME),
    technical_documentation(D),
    contains_elements_from(D, 'celex:32024R1689/oj#anx_4'),
    simplified_manner(D).

must_use_simplified_form(SME, D) :-
    sme(SME),
    technical_documentation(D),
    opts_for_simplified_manner(SME, D),
    simplified_technical_documentation_form(F),
    uses_form(D, F).

must_accept_simplified_form(Body, D) :-
    notified_body(Body),
    technical_documentation(D),
    simplified_technical_documentation_form(F),
    uses_form(D, F),
    conformity_assessment(CA),
    for_purposes_of(D, CA).

must_draw_up_single_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    product_covered_by_union_harmonisation_legislation(P),
    related_to(S, P),
    (placing_on_market(S); putting_into_service(S)),
    technical_documentation(D),
    contains_all_information(D, 'celex:32024R1689/oj#art_11/par_1'),
    contains_information_required_under(D, P).

commission_empowered_to_adopt_delegated_acts(Commission, 'celex:32024R1689/oj#anx_4') :-
    ai_office(Commission),
    in_accordance_with('celex:32024R1689/oj#art_97').

provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(drawn_up_before_placing_or_service/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_demonstrates_compliance/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_provides_assessment_information/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_contains_minimum_elements/1, 'celex:32024R1689/oj#art_11').
provenance(may_provide_simplified_elements/2, 'celex:32024R1689/oj#art_11').
provenance(must_use_simplified_form/2, 'celex:32024R1689/oj#art_11').
provenance(must_accept_simplified_form/2, 'celex:32024R1689/oj#art_11').
provenance(must_draw_up_single_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(commission_empowered_to_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_11').

references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').
