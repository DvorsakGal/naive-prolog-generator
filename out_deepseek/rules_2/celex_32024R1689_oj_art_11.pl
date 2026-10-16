% unit       : celex:32024R1689/oj#art_11
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1a09652a057f0a8e7b3be5bd2965cb3cad57a1fa9a32ab0dcc84ef71f1110302
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : b867afc5fec77c921a5cb12d0d409844e4182b18330ad8626601afb9e4dda8fd
% cached     : False
% title      : Technical documentation
:- pred technical_documentation/1, gloss('technical documentation of a high-risk AI system'), source('celex:32024R1689/oj#art_11').
:- pred must_draw_up_technical_documentation/2, gloss('entity must draw up technical documentation for a high-risk AI system'), source('celex:32024R1689/oj#art_11').
:- pred must_keep_technical_documentation_up_to_date/2, gloss('entity must keep technical documentation up-to-date'), source('celex:32024R1689/oj#art_11').
:- pred must_demonstrate_compliance/1, gloss('technical documentation must demonstrate compliance with Section 2 requirements'), source('celex:32024R1689/oj#art_11').
:- pred must_provide_necessary_information/1, gloss('technical documentation must provide necessary information for compliance assessment'), source('celex:32024R1689/oj#art_11').
:- pred must_contain_minimum_elements/1, gloss('technical documentation must contain at least the elements set out in Annex IV'), source('celex:32024R1689/oj#art_11').
:- pred sme/1, gloss('small or medium-sized enterprise, including start-ups'), source('celex:32024R1689/oj#art_11').
:- pred may_provide_simplified_documentation/1, gloss('SME may provide technical documentation in a simplified manner'), source('celex:32024R1689/oj#art_11').
:- pred must_use_simplified_form/1, gloss('SME opting for simplified documentation must use the Commission form'), source('celex:32024R1689/oj#art_11').
:- pred must_accept_simplified_form/1, gloss('notified body must accept the simplified form for conformity assessment'), source('celex:32024R1689/oj#art_11').
:- pred product_covered_by_union_harmonisation_legislation/1, gloss('product covered by Union harmonisation legislation listed in Annex I Section A'), source('celex:32024R1689/oj#art_11').
:- pred must_draw_up_single_set_of_technical_documentation/2, gloss('entity must draw up a single set of technical documentation for a product-related high-risk AI system'), source('celex:32024R1689/oj#art_11').
:- pred must_contain_information_required_under_other_legal_acts/1, gloss('single set of technical documentation must contain information required under other legal acts'), source('celex:32024R1689/oj#art_11').
:- pred commission_empowered_to_adopt_delegated_acts/1, gloss('Commission is empowered to adopt delegated acts to amend Annex IV'), source('celex:32024R1689/oj#art_11').

% Paragraph 1
must_draw_up_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S).

must_keep_technical_documentation_up_to_date(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S).

must_demonstrate_compliance(Doc) :-
    technical_documentation(Doc).

must_provide_necessary_information(Doc) :-
    technical_documentation(Doc).

must_contain_minimum_elements(Doc) :-
    technical_documentation(Doc).

may_provide_simplified_documentation(SME) :-
    sme(SME).

must_use_simplified_form(SME) :-
    sme(SME),
    may_provide_simplified_documentation(SME).

must_accept_simplified_form(Body) :-
    notified_body(Body).

% Paragraph 2
must_draw_up_single_set_of_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    product_covered_by_union_harmonisation_legislation(S),
    ( placing_on_market(S) ; putting_into_service(S) ).

must_contain_information_required_under_other_legal_acts(Doc) :-
    technical_documentation(Doc).

% Paragraph 3
commission_empowered_to_adopt_delegated_acts(Commission) :-
    ai_office(Commission).

% Provenance
provenance(technical_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_11').
provenance(must_demonstrate_compliance/1, 'celex:32024R1689/oj#art_11').
provenance(must_provide_necessary_information/1, 'celex:32024R1689/oj#art_11').
provenance(must_contain_minimum_elements/1, 'celex:32024R1689/oj#art_11').
provenance(sme/1, 'celex:32024R1689/oj#art_11').
provenance(may_provide_simplified_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(must_use_simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(must_accept_simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(product_covered_by_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_11').
provenance(must_draw_up_single_set_of_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_contain_information_required_under_other_legal_acts/1, 'celex:32024R1689/oj#art_11').
provenance(commission_empowered_to_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_11').

% References
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').
