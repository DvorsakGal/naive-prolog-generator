% unit       : celex:32024R1689/oj#art_11
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1a09652a057f0a8e7b3be5bd2965cb3cad57a1fa9a32ab0dcc84ef71f1110302
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8f5d263115d5c51a17203c9e229e586f1109b026b2c3f0106b9412acd4f9ec13
% cached     : False
% title      : Technical documentation
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under this regulation'), source('celex:32024R1689/oj#art_11').
:- pred sme/1, gloss('small or medium-sized enterprise including start-ups'), source('celex:32024R1689/oj#art_11').
:- pred simplified_technical_documentation_form/1, gloss('form established by Commission for SMEs'), source('celex:32024R1689/oj#art_11').
:- pred product_covered_by_union_harmonisation_legislation/1, gloss('product covered by legislation listed in Annex I Section 1'), source('celex:32024R1689/oj#art_11').

must_draw_up_technical_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S).

must_keep_technical_documentation_up_to_date(P, S) :-
    provider(P),
    high_risk_ai_system(S).

technical_documentation_demonstrates_compliance(S) :-
    high_risk_ai_system(S),
    complies_with_section_2_requirements(S).

technical_documentation_provides_information(S) :-
    high_risk_ai_system(S),
    clear_and_comprehensive_form(S).

required_technical_documentation_elements(S) :-
    high_risk_ai_system(S),
    contains_annex_iv_elements(S).

permitted_simplified_documentation(S) :-
    high_risk_ai_system(S),
    sme(Provider),
    provider(Provider, S),
    uses_simplified_form(S).

must_use_simplified_form(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    sme(P),
    opts_for_simplified_manner(S).

must_accept_simplified_form(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    uses_simplified_form(S),
    conformity_assessment_purpose(S).

single_documentation_required(S) :-
    high_risk_ai_system(S),
    related_to_product(S),
    product_covered_by_union_harmonisation_legislation(Product),
    placed_on_market_or_put_into_service(S).

before_placing_on_market_or_putting_into_service(S) :-
    \+ placing_on_market(S).
before_placing_on_market_or_putting_into_service(S) :-
    \+ putting_into_service(S).

provider(P, S) :-
    provider(P),
    high_risk_ai_system(S).

provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_demonstrates_compliance/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_provides_information/1, 'celex:32024R1689/oj#art_11').
provenance(required_technical_documentation_elements/1, 'celex:32024R1689/oj#art_11').
provenance(permitted_simplified_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(must_use_simplified_form/2, 'celex:32024R1689/oj#art_11').
provenance(must_accept_simplified_form/2, 'celex:32024R1689/oj#art_11').
provenance(single_documentation_required/1, 'celex:32024R1689/oj#art_11').
provenance(before_placing_on_market_or_putting_into_service/1, 'celex:32024R1689/oj#art_11').
provenance(provider/2, 'celex:32024R1689/oj#art_11').

references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').
