% unit       : celex:32024R1689/oj#art_47
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 7fadfd96f902a1f1f2fdf18fd208cf3c2f73d635986d46663fe9b6762c23cb91
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 363611c144a0a7c4de6df1961244fc5aec15394d93c1caa691d398dd890d5c9a
% cached     : False
% title      : EU declaration of conformity
:- pred must_draw_up_eu_declaration_of_conformity/2, gloss('provider must draw up EU declaration of conformity for high-risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred eu_declaration_of_conformity_identifies_system/2, gloss('EU declaration of conformity identifies the high-risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_eu_declaration_of_conformity/2, gloss('provider must keep EU declaration of conformity at disposal of authorities for period'), source('celex:32024R1689/oj#art_47').
:- pred must_submit_eu_declaration_of_conformity/2, gloss('provider must submit copy of EU declaration of conformity to authority upon request'), source('celex:32024R1689/oj#art_47').
:- pred eu_declaration_states_compliance/2, gloss('EU declaration states that system meets requirements of Chapter III Section 2'), source('celex:32024R1689/oj#art_47').
:- pred eu_declaration_contains_annex_v_information/1, gloss('EU declaration contains information set out in Annex V'), source('celex:32024R1689/oj#art_47').
:- pred eu_declaration_translated_for_authorities/1, gloss('EU declaration translated into language easily understood by national competent authorities'), source('celex:32024R1689/oj#art_47').
:- pred single_eu_declaration_for_multiple_legislation/1, gloss('single EU declaration drawn up for high-risk AI system subject to other Union harmonisation legislation'), source('celex:32024R1689/oj#art_47').
:- pred provider_assumes_responsibility_for_compliance/2, gloss('provider assumes responsibility for compliance with requirements by drawing up declaration'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_eu_declaration_up_to_date/2, gloss('provider must keep EU declaration of conformity up-to-date as appropriate'), source('celex:32024R1689/oj#art_47').

must_draw_up_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).

eu_declaration_of_conformity_identifies_system(D, S) :-
    must_draw_up_eu_declaration_of_conformity(_P, S),
    eu_declaration_of_conformity(D, S).

must_keep_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    after_placing_on_market_or_service(S),
    period(years(10)).

must_submit_eu_declaration_of_conformity(P, A) :-
    provider(P),
    relevant_market_surveillance_authority(A),
    reasoned_request(A, eu_declaration_of_conformity).

eu_declaration_states_compliance(D, S) :-
    eu_declaration_of_conformity(D, S),
    requirements_of_chapter_3_section_2(S).

eu_declaration_contains_annex_v_information(D) :-
    eu_declaration_of_conformity(D, _S).

eu_declaration_translated_for_authorities(D) :-
    eu_declaration_of_conformity(D, _S).

single_eu_declaration_for_multiple_legislation(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).

provider_assumes_responsibility_for_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    must_draw_up_eu_declaration_of_conformity(P, S).

must_keep_eu_declaration_up_to_date(P, S) :-
    provider(P),
    high_risk_ai_system(S).

provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_of_conformity_identifies_system/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_states_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_contains_annex_v_information/1, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_translated_for_authorities/1, 'celex:32024R1689/oj#art_47').
provenance(single_eu_declaration_for_multiple_legislation/1, 'celex:32024R1689/oj#art_47').
provenance(provider_assumes_responsibility_for_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_eu_declaration_up_to_date/2, 'celex:32024R1689/oj#art_47').

references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').
