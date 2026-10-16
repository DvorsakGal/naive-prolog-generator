% unit       : celex:32024R1689/oj#art_11
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1a09652a057f0a8e7b3be5bd2965cb3cad57a1fa9a32ab0dcc84ef71f1110302
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 4a4f3be180e6e6d9f9fe6f1062559e74bdcdc4aa3cfa94bded6b9def6d5d5fba
% cached     : False
% title      : Technical documentation
:- pred must_draw_up_technical_documentation/2, gloss('provider must draw up technical documentation before placing on market or putting into service'), source('celex:32024R1689/oj#art_11').
:- pred technical_documentation_kept_up_to_date/1, gloss('technical documentation must be kept up to date'), source('celex:32024R1689/oj#art_11').
:- pred technical_documentation_demonstrates_compliance/1, gloss('technical documentation demonstrates compliance with Chapter 3 Section 2 requirements'), source('celex:32024R1689/oj#art_11').
:- pred technical_documentation_provides_assessment_information/1, gloss('technical documentation provides national competent authorities and notified bodies with necessary information in clear and comprehensive form'), source('celex:32024R1689/oj#art_11').
:- pred technical_documentation_contains_annex_4_elements/1, gloss('technical documentation contains at minimum elements set out in Annex 4'), source('celex:32024R1689/oj#art_11').
:- pred simplified_technical_documentation_applies/1, gloss('SME including start-up may provide technical documentation elements in simplified manner'), source('celex:32024R1689/oj#art_11').
:- pred must_use_simplified_technical_documentation_form/1, gloss('SME including start-up opting for simplified manner must use Commission form'), source('celex:32024R1689/oj#art_11').
:- pred notified_body_accepts_simplified_form/0, gloss('notified bodies shall accept simplified technical documentation form for conformity assessment'), source('celex:32024R1689/oj#art_11').
:- pred single_technical_documentation_for_harmonised_product/1, gloss('single set of technical documentation for high-risk AI system related to product covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_11').
:- pred power_to_adopt_delegated_acts_amend_annex_4/0, gloss('Commission empowered to adopt delegated acts to amend Annex 4'), source('celex:32024R1689/oj#art_11').

must_draw_up_technical_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S).

technical_documentation_kept_up_to_date(S) :-
    high_risk_ai_system(S),
    technical_documentation(S).

technical_documentation_demonstrates_compliance(S) :-
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S).

technical_documentation_provides_assessment_information(S) :-
    high_risk_ai_system(S),
    technical_documentation(S).

technical_documentation_contains_annex_4_elements(S) :-
    high_risk_ai_system(S),
    technical_documentation(S).

simplified_technical_documentation_applies(S) :-
    high_risk_ai_system(S),
    sme_or_start_up(_P),
    technical_documentation(S).

must_use_simplified_technical_documentation_form(S) :-
    high_risk_ai_system(S),
    sme_or_start_up(_P),
    simplified_technical_documentation_applies(S).

notified_body_accepts_simplified_form :-
    simplified_technical_documentation_applies(_S).

single_technical_documentation_for_harmonised_product(S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    technical_documentation(S).

power_to_adopt_delegated_acts_amend_annex_4 :-
    power_to_adopt_delegated_acts(commission).

provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_kept_up_to_date/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_demonstrates_compliance/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_provides_assessment_information/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_contains_annex_4_elements/1, 'celex:32024R1689/oj#art_11').
provenance(simplified_technical_documentation_applies/1, 'celex:32024R1689/oj#art_11').
provenance(must_use_simplified_technical_documentation_form/1, 'celex:32024R1689/oj#art_11').
provenance(notified_body_accepts_simplified_form/0, 'celex:32024R1689/oj#art_11').
provenance(single_technical_documentation_for_harmonised_product/1, 'celex:32024R1689/oj#art_11').
provenance(power_to_adopt_delegated_acts_amend_annex_4/0, 'celex:32024R1689/oj#art_11').

references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').
