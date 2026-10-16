% unit       : celex:32024R1689/oj#art_47
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 7fadfd96f902a1f1f2fdf18fd208cf3c2f73d635986d46663fe9b6762c23cb91
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 978850d65f98a883b8ab36cd6581065972514500c634744baa5a9ee0aef71e28
% cached     : False
% title      : EU declaration of conformity
:- pred must_draw_up_declaration_of_conformity/2, gloss('provider must draw up EU declaration of conformity for high-risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_declaration_of_conformity/2, gloss('provider must keep declaration of conformity available to authorities'), source('celex:32024R1689/oj#art_47').
:- pred declaration_of_conformity/1, gloss('written machine readable, physical or electronically signed EU declaration of conformity'), source('celex:32024R1689/oj#art_47').
:- pred declaration_identifies_system/2, gloss('declaration identifies the high-risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred must_submit_declaration_on_request/2, gloss('provider must submit copy of declaration to authorities upon request'), source('celex:32024R1689/oj#art_47').
:- pred declaration_states_compliance/2, gloss('declaration states that high-risk AI system meets chapter 3 section 2 requirements'), source('celex:32024R1689/oj#art_47').
:- pred declaration_contains_annex_5_information/1, gloss('declaration contains information set out in annex 5'), source('celex:32024R1689/oj#art_47').
:- pred declaration_translated_for_authorities/1, gloss('declaration translated into language understood by national competent authorities'), source('celex:32024R1689/oj#art_47').
:- pred single_declaration_for_multiple_legislation/1, gloss('single declaration drawn up for all applicable Union harmonisation legislation'), source('celex:32024R1689/oj#art_47').
:- pred declaration_contains_legislation_identification/1, gloss('declaration contains information to identify applicable Union harmonisation legislation'), source('celex:32024R1689/oj#art_47').
:- pred assumes_responsibility_for_compliance/2, gloss('provider assumes responsibility for compliance by drawing up declaration'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_declaration_up_to_date/2, gloss('provider must keep declaration of conformity up to date'), source('celex:32024R1689/oj#art_47').

must_draw_up_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

must_keep_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    declaration_of_conformity(Declaration),
    declaration_identifies_system(Declaration, System),
    period(years(10), after(placing_on_market_or_putting_into_service(System))).

declaration_identifies_system(Declaration, System) :-
    declaration_of_conformity(Declaration),
    high_risk_ai_system(System).

must_submit_declaration_on_request(Provider, copy(Declaration)) :-
    provider(Provider),
    declaration_of_conformity(Declaration),
    national_competent_authority(Authority),
    request(Authority, Declaration).

declaration_states_compliance(Declaration, System) :-
    declaration_of_conformity(Declaration),
    high_risk_ai_system(System),
    meets_requirements(System, chapter_iii_section_2).

declaration_contains_annex_5_information(Declaration) :-
    declaration_of_conformity(Declaration).

declaration_translated_for_authorities(Declaration) :-
    declaration_of_conformity(Declaration),
    high_risk_ai_system(System),
    (placing_on_market(System); making_available_on_market(System)),
    language_understood_by_national_competent_authorities(Language).

single_declaration_for_multiple_legislation(Declaration) :-
    declaration_of_conformity(Declaration),
    high_risk_ai_system(System),
    subject_to_other_union_harmonisation_legislation(System),
    other_declaration_required(System).

declaration_contains_legislation_identification(Declaration) :-
    single_declaration_for_multiple_legislation(Declaration).

assumes_responsibility_for_compliance(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    draws_up_declaration(Provider, Declaration),
    declaration_of_conformity(Declaration),
    declaration_identifies_system(Declaration, System).

must_keep_declaration_up_to_date(Provider, Declaration) :-
    provider(Provider),
    declaration_of_conformity(Declaration),
    changes_require_update(Declaration).

provenance(must_draw_up_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_identifies_system/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_declaration_on_request/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_states_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_contains_annex_5_information/1, 'celex:32024R1689/oj#art_47').
provenance(declaration_translated_for_authorities/1, 'celex:32024R1689/oj#art_47').
provenance(single_declaration_for_multiple_legislation/1, 'celex:32024R1689/oj#art_47').
provenance(declaration_contains_legislation_identification/1, 'celex:32024R1689/oj#art_47').
provenance(assumes_responsibility_for_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_up_to_date/2, 'celex:32024R1689/oj#art_47').

references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
