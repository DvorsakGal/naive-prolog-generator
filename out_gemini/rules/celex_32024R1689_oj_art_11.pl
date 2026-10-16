% unit       : celex:32024R1689/oj#art_11
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1a09652a057f0a8e7b3be5bd2965cb3cad57a1fa9a32ab0dcc84ef71f1110302
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0748c12be0a6a82d46aee362cea0f4b5db0337b18dcb7ec57a6f22ccc5447fe3
% cached     : False
% title      : Technical documentation
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_11').
:- pred sme/1, gloss('small and medium-sized enterprise, including start-up'), source('celex:32024R1689/oj#art_11').
:- pred small_or_microenterprise/1, gloss('small or microenterprise'), source('celex:32024R1689/oj#art_11').
:- pred required_technical_documentation/1, gloss('technical documentation required for an AI system'), source('celex:32024R1689/oj#art_11').
:- pred drawn_up_before_market_placement/1, gloss('documentation is drawn up before market placement or putting into service'), source('celex:32024R1689/oj#art_11').
:- pred kept_up_to_date/1, gloss('documentation is kept up to date'), source('celex:32024R1689/oj#art_11').
:- pred demonstrates_compliance_with_requirements/1, gloss('documentation demonstrates compliance with high-risk AI requirements'), source('celex:32024R1689/oj#art_11').
:- pred provides_clear_comprehensive_assessment_info/1, gloss('documentation provides necessary compliance assessment information clearly and comprehensively'), source('celex:32024R1689/oj#art_11').
:- pred contains_minimum_annex_iv_elements/1, gloss('documentation contains at minimum the elements of Annex IV'), source('celex:32024R1689/oj#art_11').
:- pred permitted_simplified_technical_documentation/2, gloss('provider permitted to provide technical documentation in a simplified manner'), source('celex:32024R1689/oj#art_11').
:- pred uses_simplified_documentation_form/1, gloss('documentation uses the simplified technical documentation form'), source('celex:32024R1689/oj#art_11').
:- pred must_accept(Actor, Object), gloss('duty of an actor to accept an object'), source('celex:32024R1689/oj#art_11').
:- pred covered_by_union_harmonisation_legislation_annex_i/1, gloss('AI system related to a product covered by Annex I Section A legislation'), source('celex:32024R1689/oj#art_11').
:- pred required_single_technical_documentation/1, gloss('single set of technical documentation combining AI and product legislation info'), source('celex:32024R1689/oj#art_11').
:- pred contains_harmonisation_legislation_information/1, gloss('documentation contains information required under relevant Union harmonisation acts'), source('celex:32024R1689/oj#art_11').
:- pred empowered_to_amend_annex_iv(Actor), gloss('actor empowered to adopt delegated acts to amend Annex IV'), source('celex:32024R1689/oj#art_11').

% Paragraph 1: Technical documentation requirements for high-risk AI systems
required_technical_documentation(S) :-
    high_risk_ai_system(S),
    drawn_up_before_market_placement(S),
    kept_up_to_date(S),
    demonstrates_compliance_with_requirements(S),
    provides_clear_comprehensive_assessment_info(S),
    contains_minimum_annex_iv_elements(S).

% SMEs may provide the elements in a simplified manner using the form
permitted_simplified_technical_documentation(Provider, S) :-
    provider(Provider),
    sme(Provider),
    high_risk_ai_system(S).

% Notified bodies must accept the simplified form for conformity assessment
must_accept(Body, simplified_form(S)) :-
    notified_body(Body),
    high_risk_ai_system(S),
    uses_simplified_documentation_form(S).

% Paragraph 2: Single set of technical documentation for Annex I products
required_single_technical_documentation(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation_annex_i(S),
    required_technical_documentation(S),
    contains_harmonisation_legislation_information(S).

% Paragraph 3: Commission empowerment to amend Annex IV via delegated acts
empowered_to_amend_annex_iv(commission).

% Provenance
provenance(required_technical_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(permitted_simplified_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_accept/2, 'celex:32024R1689/oj#art_11').
provenance(required_single_technical_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(empowered_to_amend_annex_iv/1, 'celex:32024R1689/oj#art_11').

% References
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').
