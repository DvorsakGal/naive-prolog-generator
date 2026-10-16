% unit       : celex:32024R1689/oj#art_11
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1a09652a057f0a8e7b3be5bd2965cb3cad57a1fa9a32ab0dcc84ef71f1110302
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f5c61c11320f1ba044f162cf499cad67e61b047426f151297952b23b6d724ed7
% cached     : False
% title      : Technical documentation
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_11').
:- pred technical_documentation/1, gloss('technical documentation of a high-risk AI system'), source('celex:32024R1689/oj#art_11').
:- pred drawn_up_before_placement/1, gloss('technical documentation drawn up before placing on market or putting into service'), source('celex:32024R1689/oj#art_11').
:- pred kept_up_to_date/1, gloss('technical documentation kept up to date'), source('celex:32024R1689/oj#art_11').
:- pred demonstrates_compliance/1, gloss('technical documentation demonstrates compliance with requirements'), source('celex:32024R1689/oj#art_11').
:- pred provides_information_to_authorities/1, gloss('technical documentation provides information to national competent authorities and notified bodies'), source('celex:32024R1689/oj#art_11').
:- pred contains_minimum_elements/1, gloss('technical documentation contains at minimum the elements set out in Annex IV'), source('celex:32024R1689/oj#art_11').
:- pred sme/1, gloss('small and medium-sized enterprise'), source('celex:32024R1689/oj#art_11').
:- pred start_up/1, gloss('start-up enterprise'), source('celex:32024R1689/oj#art_11').
:- pred simplified_documentation/1, gloss('simplified manner of providing technical documentation elements'), source('celex:32024R1689/oj#art_11').
:- pred simplified_form/1, gloss('simplified technical documentation form established by the Commission'), source('celex:32024R1689/oj#art_11').
:- pred uses_simplified_form/1, gloss('SME or start-up uses the simplified form'), source('celex:32024R1689/oj#art_11').
:- pred accepts_simplified_form/1, gloss('notified body accepts the simplified form for conformity assessment'), source('celex:32024R1689/oj#art_11').
:- pred single_set_documentation/1, gloss('single set of technical documentation for products under Union harmonisation legislation'), source('celex:32024R1689/oj#art_11').
:- pred product_covered_by_harmonisation_legislation/1, gloss('product covered by Union harmonisation legislation listed in Annex I Section 1'), source('celex:32024R1689/oj#art_11').
:- pred commission_empowered_delegated_acts/1, gloss('Commission empowered to adopt delegated acts to amend Annex IV'), source('celex:32024R1689/oj#art_11').

must_draw_up_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    placing_on_market(S).

must_draw_up_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    putting_into_service(S).

must_keep_technical_documentation_up_to_date(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    technical_documentation(S).

drawn_up_before_placement(D) :-
    technical_documentation(D),
    high_risk_ai_system(D),
    before(placing_on_market(D)).

drawn_up_before_placement(D) :-
    technical_documentation(D),
    high_risk_ai_system(D),
    before(putting_into_service(D)).

kept_up_to_date(D) :-
    technical_documentation(D),
    high_risk_ai_system(D).

demonstrates_compliance(D) :-
    technical_documentation(D),
    high_risk_ai_system(D).

provides_information_to_authorities(D) :-
    technical_documentation(D),
    high_risk_ai_system(D),
    national_competent_authority(_A),
    notified_body(_B).

contains_minimum_elements(D) :-
    technical_documentation(D),
    high_risk_ai_system(D).

sme(E) :-
    provider(E),
    sme(E).

start_up(E) :-
    provider(E),
    start_up(E).

simplified_documentation(D) :-
    technical_documentation(D),
    high_risk_ai_system(D),
    provider(P),
    (sme(P) ; start_up(P)).

uses_simplified_form(P) :-
    provider(P),
    (sme(P) ; start_up(P)),
    simplified_form(F),
    uses_form(P, F).

accepts_simplified_form(B) :-
    notified_body(B),
    simplified_form(_F).

single_set_documentation(S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    placing_on_market(S).

single_set_documentation(S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    putting_into_service(S).

commission_empowered_delegated_acts :-
    ai_office(C),
    commission(C).

before(X) :-
    placing_on_market(X).

before(X) :-
    putting_into_service(X).

uses_form(_P, _F).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(drawn_up_before_placement/1, 'celex:32024R1689/oj#art_11').
provenance(kept_up_to_date/1, 'celex:32024R1689/oj#art_11').
provenance(demonstrates_compliance/1, 'celex:32024R1689/oj#art_11').
provenance(provides_information_to_authorities/1, 'celex:32024R1689/oj#art_11').
provenance(contains_minimum_elements/1, 'celex:32024R1689/oj#art_11').
provenance(sme/1, 'celex:32024R1689/oj#art_11').
provenance(start_up/1, 'celex:32024R1689/oj#art_11').
provenance(simplified_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(uses_simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(accepts_simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(single_set_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(product_covered_by_harmonisation_legislation/1, 'celex:32024R1689/oj#art_11').
provenance(commission_empowered_delegated_acts/1, 'celex:32024R1689/oj#art_11').
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_11').

references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').
