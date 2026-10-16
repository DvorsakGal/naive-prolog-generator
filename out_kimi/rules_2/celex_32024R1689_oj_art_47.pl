% unit       : celex:32024R1689/oj#art_47
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 7fadfd96f902a1f1f2fdf18fd208cf3c2f73d635986d46663fe9b6762c23cb91
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : eba0d49df8b7e0efc71419e77b619e1ab595e3a0f499473954242442ca2ba482
% cached     : False
% title      : EU declaration of conformity
:- pred must_draw_up_declaration_of_conformity/2, gloss('provider must draw up EU declaration of conformity for high-risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_declaration_of_conformity/2, gloss('provider must keep EU declaration of conformity at disposal of national competent authorities'), source('celex:32024R1689/oj#art_47').
:- pred declaration_of_conformity_identifies_system/2, gloss('EU declaration of conformity identifies the high-risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred must_submit_declaration_on_request/2, gloss('provider must submit copy of EU declaration of conformity to national competent authorities upon request'), source('celex:32024R1689/oj#art_47').
:- pred declaration_states_compliance_with_chapter_3_section_2/1, gloss('EU declaration of conformity states high-risk AI system meets Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_47').
:- pred declaration_contains_annex_5_information/1, gloss('EU declaration of conformity contains information set out in Annex V'), source('celex:32024R1689/oj#art_47').
:- pred declaration_translated_for_member_states/1, gloss('EU declaration of conformity translated into language understood by national competent authorities of Member States where system is placed on market or made available'), source('celex:32024R1689/oj#art_47').
:- pred single_declaration_for_multiple_legislation/1, gloss('single EU declaration of conformity drawn up for high-risk AI system subject to other Union harmonisation legislation also requiring declaration'), source('celex:32024R1689/oj#art_47').
:- pred declaration_contains_harmonisation_legislation_identification/1, gloss('EU declaration of conformity contains information to identify applicable Union harmonisation legislation'), source('celex:32024R1689/oj#art_47').
:- pred provider_assumes_responsibility_for_compliance/2, gloss('provider assumes responsibility for compliance with Chapter III Section 2 requirements by drawing up declaration'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_declaration_up_to_date/2, gloss('provider must keep EU declaration of conformity up-to-date as appropriate'), source('celex:32024R1689/oj#art_47').
:- pred commission_empowered_to_amend_annex_5/0, gloss('Commission empowered to adopt delegated acts to amend Annex V updating declaration content'), source('celex:32024R1689/oj#art_47').

must_draw_up_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_keep_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S); putting_into_service(S)),
    retention_period(years(10), after(S)).

declaration_of_conformity_identifies_system(S, Declaration) :-
    eu_declaration_of_conformity(Declaration),
    high_risk_ai_system(S).

must_submit_declaration_on_request(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    national_competent_authority(A),
    reasoned_request(A, S).

declaration_states_compliance_with_chapter_3_section_2(S) :-
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S).

declaration_contains_annex_5_information(S) :-
    high_risk_ai_system(S).

declaration_translated_for_member_states(S) :-
    high_risk_ai_system(S),
    (placing_on_market(S); making_available_on_market(S)).

single_declaration_for_multiple_legislation(S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    union_harmonisation_legislation(L1),
    union_harmonisation_legislation(L2),
    L1 \= L2.

declaration_contains_harmonisation_legislation_identification(S) :-
    single_declaration_for_multiple_legislation(S).

provider_assumes_responsibility_for_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S).

must_keep_declaration_up_to_date(P, S) :-
    provider(P),
    high_risk_ai_system(S).

commission_empowered_to_amend_annex_5 :-
    power_to_adopt_delegated_acts(commission).

provenance(must_draw_up_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_of_conformity_identifies_system/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_declaration_on_request/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_states_compliance_with_chapter_3_section_2/1, 'celex:32024R1689/oj#art_47').
provenance(declaration_contains_annex_5_information/1, 'celex:32024R1689/oj#art_47').
provenance(declaration_translated_for_member_states/1, 'celex:32024R1689/oj#art_47').
provenance(single_declaration_for_multiple_legislation/1, 'celex:32024R1689/oj#art_47').
provenance(declaration_contains_harmonisation_legislation_identification/1, 'celex:32024R1689/oj#art_47').
provenance(provider_assumes_responsibility_for_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_up_to_date/2, 'celex:32024R1689/oj#art_47').
provenance(commission_empowered_to_amend_annex_5/0, 'celex:32024R1689/oj#art_47').

references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').
