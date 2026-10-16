% unit       : celex:32024R1689/oj#art_47
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 7fadfd96f902a1f1f2fdf18fd208cf3c2f73d635986d46663fe9b6762c23cb91
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : cc7aa2ea463cd597b30a220d7a9f30a3849180ae475cf5c82c5d78bd002659bc
% cached     : False
% title      : EU declaration of conformity
:- pred must_draw_up_eu_declaration_of_conformity/2, gloss('provider must draw up EU declaration of conformity for high-risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_declaration_at_disposal/2, gloss('provider must keep EU declaration of conformity at disposal of national competent authorities'), source('celex:32024R1689/oj#art_47').
:- pred must_submit_declaration_copy_on_request/2, gloss('provider must submit copy of EU declaration of conformity upon request'), source('celex:32024R1689/oj#art_47').
:- pred must_state_conformity_with_requirements/1, gloss('EU declaration of conformity must state high-risk AI system meets Section 2 requirements'), source('celex:32024R1689/oj#art_47').
:- pred must_contain_annex_5_information/1, gloss('EU declaration of conformity must contain information set out in Annex V'), source('celex:32024R1689/oj#art_47').
:- pred must_translate_declaration/2, gloss('EU declaration of conformity must be translated into language easily understood by national competent authorities'), source('celex:32024R1689/oj#art_47').
:- pred must_draw_up_single_declaration/1, gloss('single EU declaration of conformity must be drawn up for all applicable Union law'), source('celex:32024R1689/oj#art_47').
:- pred must_assume_responsibility_for_compliance/2, gloss('provider assumes responsibility for compliance by drawing up EU declaration of conformity'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_declaration_up_to_date/2, gloss('provider must keep EU declaration of conformity up-to-date'), source('celex:32024R1689/oj#art_47').
:- pred commission_empowered_to_amend_annex_5/1, gloss('Commission empowered to adopt delegated acts to amend Annex V'), source('celex:32024R1689/oj#art_47').

must_draw_up_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

must_keep_declaration_at_disposal(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).

must_submit_declaration_copy_on_request(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).

must_state_conformity_with_requirements(Declaration) :-
    must_draw_up_eu_declaration_of_conformity(_, System),
    Declaration = declaration(System).

must_contain_annex_5_information(Declaration) :-
    must_draw_up_eu_declaration_of_conformity(_, System),
    Declaration = declaration(System).

must_translate_declaration(Declaration, MemberState) :-
    must_draw_up_eu_declaration_of_conformity(_, System),
    Declaration = declaration(System),
    made_available_on_union_market(System, MemberState).

must_draw_up_single_declaration(System) :-
    high_risk_ai_system(System),
    subject_to_other_union_harmonisation_legislation(System).

must_assume_responsibility_for_compliance(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).

must_keep_declaration_up_to_date(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).

commission_empowered_to_amend_annex_5(Commission) :-
    ai_office(Commission).

subject_to_other_union_harmonisation_legislation(System) :-
    high_risk_ai_system(System).

provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_at_disposal/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_declaration_copy_on_request/2, 'celex:32024R1689/oj#art_47').
provenance(must_state_conformity_with_requirements/1, 'celex:32024R1689/oj#art_47').
provenance(must_contain_annex_5_information/1, 'celex:32024R1689/oj#art_47').
provenance(must_translate_declaration/2, 'celex:32024R1689/oj#art_47').
provenance(must_draw_up_single_declaration/1, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility_for_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_up_to_date/2, 'celex:32024R1689/oj#art_47').
provenance(commission_empowered_to_amend_annex_5/1, 'celex:32024R1689/oj#art_47').
provenance(subject_to_other_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_47').

references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').
