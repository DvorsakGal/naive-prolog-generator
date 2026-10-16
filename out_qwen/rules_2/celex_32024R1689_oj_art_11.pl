% unit       : celex:32024R1689/oj#art_11
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1a09652a057f0a8e7b3be5bd2965cb3cad57a1fa9a32ab0dcc84ef71f1110302
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : e658ab3224c60b8932ef7baf92dd6fc2b56fa0948c7a13ca9a738610c3d7f004
% cached     : False
% title      : Technical documentation
:- pred must_draw_up_technical_documentation/2, gloss('provider must draw up technical documentation for high-risk AI system'), source('celex:32024R1689/oj#art_11').
:- pred must_keep_technical_documentation_up_to_date/2, gloss('provider must keep technical documentation up to date'), source('celex:32024R1689/oj#art_11').
:- pred technical_documentation_demonstrates_compliance/1, gloss('technical documentation demonstrates compliance with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_11').
:- pred technical_documentation_contains_annex_iv_elements/1, gloss('technical documentation contains at minimum elements set out in Annex IV'), source('celex:32024R1689/oj#art_11').
:- pred sme_provider/1, gloss('provider that is an SME including start-ups'), source('celex:32024R1689/oj#art_11').
:- pred simplified_technical_documentation_permitted/1, gloss('SME provider may provide Annex IV elements in simplified manner'), source('celex:32024R1689/oj#art_11').
:- pred single_technical_documentation_required/1, gloss('single set of technical documentation required for product covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_11').

must_draw_up_technical_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    before_placing_on_market_or_service(S).

must_keep_technical_documentation_up_to_date(P, S) :-
    provider(P),
    high_risk_ai_system(S).

technical_documentation_demonstrates_compliance(S) :-
    high_risk_ai_system(S),
    requirements_of_chapter_3_section_2(S).

technical_documentation_contains_annex_iv_elements(S) :-
    high_risk_ai_system(S).

simplified_technical_documentation_permitted(S) :-
    high_risk_ai_system(S),
    provider(P),
    sme_provider(P).

single_technical_documentation_required(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).

provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_demonstrates_compliance/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_contains_annex_iv_elements/1, 'celex:32024R1689/oj#art_11').
provenance(sme_provider/1, 'celex:32024R1689/oj#art_11').
provenance(simplified_technical_documentation_permitted/1, 'celex:32024R1689/oj#art_11').
provenance(single_technical_documentation_required/1, 'celex:32024R1689/oj#art_11').

references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').
