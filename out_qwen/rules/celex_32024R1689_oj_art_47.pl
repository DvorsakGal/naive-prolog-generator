% unit       : celex:32024R1689/oj#art_47
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 7fadfd96f902a1f1f2fdf18fd208cf3c2f73d635986d46663fe9b6762c23cb91
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 40fa31e0d81bb8e498c7297704b75e51f722292ca3d27c046316d9d6c8df570c
% cached     : False
% title      : EU declaration of conformity
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under this regulation'), source('celex:32024R1689/oj#art_47').
:- pred eu_declaration_of_conformity/1, gloss('written declaration drawn up by provider for high-risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred must_draw_up_eu_declaration_of_conformity/2, gloss('provider obligation to create declaration for system'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_eu_declaration_of_conformity/2, gloss('provider obligation to retain declaration for period'), source('celex:32024R1689/oj#art_47').
:- pred must_submit_eu_declaration_of_conformity/2, gloss('provider obligation to provide copy to authority upon request'), source('celex:32024R1689/oj#art_47').
:- pred must_update_eu_declaration_of_conformity/2, gloss('provider obligation to keep declaration current'), source('celex:32024R1689/oj#art_47').
:- pred identifies_system/2, gloss('declaration identifies the specific high-risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred states_compliance_with_section_2_requirements/2, gloss('declaration states system meets chapter 3 section 2 requirements'), source('celex:32024R1689/oj#art_47').
:- pred contains_annex_v_information/2, gloss('declaration contains information set out in annex v'), source('celex:32024R1689/oj#art_47').
:- pred translated_for_member_state/2, gloss('declaration translated into language understood by member state authorities'), source('celex:32024R1689/oj#art_47').
:- pred single_declaration_for_multiple_legislation/1, gloss('single declaration covers all applicable union harmonisation legislation'), source('celex:32024R1689/oj#art_47').
:- pred assumes_responsibility_for_compliance/2, gloss('provider assumes responsibility for compliance by drawing up declaration'), source('celex:32024R1689/oj#art_47').

must_draw_up_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(D),
    identifies_system(D, S).

must_keep_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    years(10).

must_keep_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    years(10).

must_submit_eu_declaration_of_conformity(P, A) :-
    provider(P),
    national_competent_authority(A),
    eu_declaration_of_conformity(_D).

must_update_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(_D).

states_compliance_with_section_2_requirements(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S).

contains_annex_v_information(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S).

translated_for_member_state(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S),
    making_available_on_market(S).

single_declaration_for_multiple_legislation(D) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(_S).

assumes_responsibility_for_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    must_draw_up_eu_declaration_of_conformity(P, S).

provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_update_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(states_compliance_with_section_2_requirements/2, 'celex:32024R1689/oj#art_47').
provenance(contains_annex_v_information/2, 'celex:32024R1689/oj#art_47').
provenance(translated_for_member_state/2, 'celex:32024R1689/oj#art_47').
provenance(single_declaration_for_multiple_legislation/1, 'celex:32024R1689/oj#art_47').
provenance(assumes_responsibility_for_compliance/2, 'celex:32024R1689/oj#art_47').

references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').
