% unit       : celex:32024R1689/oj#art_11
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1a09652a057f0a8e7b3be5bd2965cb3cad57a1fa9a32ab0dcc84ef71f1110302
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c5c1b8976cdf2c6394d995aa2d26386ef9eeeaf1b5215db7bb4235c324e75669
% cached     : False
% title      : Technical documentation
:- pred must_draw_up_technical_documentation/2, gloss('provider must draw up technical documentation for a high-risk AI system'), source('celex:32024R1689/oj#art_11').
:- pred must_keep_technical_documentation_up_to_date/2, gloss('provider must keep technical documentation up to date'), source('celex:32024R1689/oj#art_11').
:- pred technical_documentation_demonstrates_compliance/1, gloss('technical documentation demonstrates compliance with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_11').
:- pred technical_documentation_provides_assessment_information/1, gloss('technical documentation provides information for authorities and notified bodies to assess compliance'), source('celex:32024R1689/oj#art_11').
:- pred minimum_technical_documentation_elements/1, gloss('technical documentation contains minimum elements set out in Annex IV'), source('celex:32024R1689/oj#art_11').
:- pred may_provide_simplified_technical_documentation/2, gloss('SME including start-up may provide simplified technical documentation'), source('celex:32024R1689/art_11').
:- pred simplified_technical_documentation_form/1, gloss('simplified technical documentation form established by Commission for SMEs'), source('celex:32024R1689/oj#art_11').
:- pred must_use_simplified_form/2, gloss('SME must use simplified form when opting for simplified manner'), source('celex:32024R1689/oj#art_11').
:- pred notified_body_accepts_simplified_form/1, gloss('notified body accepts simplified form for conformity assessment'), source('celex:32024R1689/oj#art_11').
:- pred single_technical_documentation_for_harmonised_product/1, gloss('single technical documentation for high-risk AI system related to harmonised product'), source('celex:32024R1689/oj#art_11').
:- pred commission_delegate_power_amend_annex_4/1, gloss('Commission empowered to adopt delegated acts to amend Annex IV'), source('celex:32024R1689/oj#art_11').

must_draw_up_technical_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S); putting_into_service(S)),
    before_placing_on_market_or_putting_into_service(S).

must_keep_technical_documentation_up_to_date(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    technical_documentation_exists(S).

technical_documentation_demonstrates_compliance(S) :-
    high_risk_ai_system(S),
    technical_documentation_exists(S),
    requirements_chapter_iii_section_2(S).

technical_documentation_provides_assessment_information(S) :-
    high_risk_ai_system(S),
    technical_documentation_exists(S),
    clear_and_comprehensive_form(S),
    assessable_by(national_competent_authority(_), S),
    assessable_by(notified_body(_), S).

minimum_technical_documentation_elements(S) :-
    high_risk_ai_system(S),
    technical_documentation_exists(S),
    contains_elements_from_annex_4(S).

may_provide_simplified_technical_documentation(P, S) :-
    sme(P),
    high_risk_ai_system(S),
    technical_documentation_exists(S),
    contains_elements_from_annex_4(S).

simplified_technical_documentation_form(Form) :-
    established_by_commission(Form),
    targeted_at_sme_needs(Form),
    targeted_at_microenterprise_needs(Form).

must_use_simplified_form(P, S) :-
    sme(P),
    high_risk_ai_system(S),
    opts_for_simplified_manner(P, S),
    simplified_technical_documentation_form(Form),
    uses_form(P, S, Form).

notified_body_accepts_simplified_form(B) :-
    notified_body(B),
    simplified_technical_documentation_form(Form),
    accepts_for_conformity_assessment(B, Form).

single_technical_documentation_for_harmonised_product(S) :-
    high_risk_ai_system(S),
    related_to_harmonised_product(S),
    union_harmonisation_legislation_listed_annex_1_section_1(S),
    (placing_on_market(S); putting_into_service(S)),
    single_technical_documentation_exists(S),
    contains_information_from_article_11_paragraph_1(S),
    contains_information_required_under_legal_acts(S).

commission_delegate_power_amend_annex_4(commission) :-
    empowered_to_adopt_delegated_acts(commission),
    in_accordance_with(article_97).

provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_demonstrates_compliance/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_provides_assessment_information/1, 'celex:32024R1689/oj#art_11').
provenance(minimum_technical_documentation_elements/1, 'celex:32024R1689/oj#art_11').
provenance(may_provide_simplified_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(simplified_technical_documentation_form/1, 'celex:32024R1689/oj#art_11').
provenance(must_use_simplified_form/2, 'celex:32024R1689/oj#art_11').
provenance(notified_body_accepts_simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(single_technical_documentation_for_harmonised_product/1, 'celex:32024R1689/oj#art_11').
provenance(commission_delegate_power_amend_annex_4/1, 'celex:32024R1689/oj#art_11').

references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
