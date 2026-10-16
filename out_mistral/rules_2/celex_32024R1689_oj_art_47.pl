% unit       : celex:32024R1689/oj#art_47
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 7fadfd96f902a1f1f2fdf18fd208cf3c2f73d635986d46663fe9b6762c23cb91
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 7c281604008702b1f55d6ae9efa8a3909c4e44844724ad7d075dc2fa79faab59
% cached     : False
% title      : EU declaration of conformity
:- pred must_draw_up_eu_declaration/2, gloss('provider must draw up EU declaration of conformity for high-risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred eu_declaration_of_conformity_identifies/2, gloss('EU declaration of conformity identifies the high-risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred submit_copy_upon_request/2, gloss('entity submits copy of EU declaration of conformity to national competent authority upon request'), source('celex:32024R1689/oj#art_47').
:- pred eu_declaration_of_conformity_states_compliance/2, gloss('EU declaration of conformity states that high-risk AI system meets requirements of Chapter III Section 2'), source('celex:32024R1689/oj#art_47').
:- pred eu_declaration_of_conformity_contains_information/2, gloss('EU declaration of conformity contains information set out in Annex V'), source('celex:32024R1689/oj#art_47').
:- pred eu_declaration_of_conformity_translated/2, gloss('EU declaration of conformity translated into language easily understood by national competent authorities'), source('celex:32024R1689/oj#art_47').
:- pred single_eu_declaration_for_multiple_legislation/1, gloss('single EU declaration of conformity drawn up where high-risk AI system subject to other Union harmonisation legislation also requiring EU declaration'), source('celex:32024R1689/oj#art_47').
:- pred eu_declaration_identifies_applicable_legislation/2, gloss('EU declaration contains information to identify Union harmonisation legislation to which it relates'), source('celex:32024R1689/oj#art_47').
:- pred provider_assumes_responsibility/2, gloss('provider assumes responsibility for compliance by drawing up EU declaration of conformity'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_declaration_up_to_date/2, gloss('provider keeps EU declaration of conformity up-to-date as appropriate'), source('celex:32024R1689/oj#art_47').
:- pred commission_empowered_to_amend_annex_v/0, gloss('Commission empowered to adopt delegated acts to amend Annex V updating content of EU declaration of conformity'), source('celex:32024R1689/oj#art_47').

must_draw_up_eu_declaration(P, S) :-
    provider(P),
    high_risk_ai_system(S).

eu_declaration_of_conformity_identifies(D, S) :-
    high_risk_ai_system(S).

must_keep_documentation(P, eu_declaration_of_conformity(S)) :-
    provider(P),
    high_risk_ai_system(S),
    keep_at_disposal(P, eu_declaration_of_conformity(S)),
    period(years(10), after(placed_on_market_or_put_into_service(S))).

submit_copy_upon_request(P, A) :-
    provider(P),
    national_competent_authority(A),
    from_competent_authority(request, A).

eu_declaration_of_conformity_states_compliance(D, S) :-
    high_risk_ai_system(S).

eu_declaration_of_conformity_contains_information(D, S) :-
    high_risk_ai_system(S).

eu_declaration_of_conformity_translated(D, A) :-
    national_competent_authority(A),
    easily_understood_language(D).

single_eu_declaration_for_multiple_legislation(S) :-
    high_risk_ai_system(S),
    other_union_harmonisation_legislation(S).

eu_declaration_identifies_applicable_legislation(D, L) :-
    other_union_harmonisation_legislation(L).

provider_assumes_responsibility(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    must_draw_up_eu_declaration(P, S).

must_keep_declaration_up_to_date(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    up_to_date(S).

commission_empowered_to_amend_annex_v.

placed_on_market_or_put_into_service(S) :-
    placed_on_market(S).
placed_on_market_or_put_into_service(S) :-
    putting_into_service(S).

provenance(must_draw_up_eu_declaration/2, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_of_conformity_identifies/2, 'celex:32024R1689/oj#art_47').
provenance(submit_copy_upon_request/2, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_of_conformity_states_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_of_conformity_contains_information/2, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_of_conformity_translated/2, 'celex:32024R1689/oj#art_47').
provenance(single_eu_declaration_for_multiple_legislation/1, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_identifies_applicable_legislation/2, 'celex:32024R1689/oj#art_47').
provenance(provider_assumes_responsibility/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_up_to_date/2, 'celex:32024R1689/oj#art_47').
provenance(commission_empowered_to_amend_annex_v/0, 'celex:32024R1689/oj#art_47').
provenance(placed_on_market_or_put_into_service/1, 'celex:32024R1689/oj#art_47').

references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').
