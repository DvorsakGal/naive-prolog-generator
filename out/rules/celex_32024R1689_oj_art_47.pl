% unit       : celex:32024R1689/oj#art_47
% title      : EU declaration of conformity
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 7fadfd96f902a1f1f2fdf18fd208cf3c2f73d635986d46663fe9b6762c23cb91
% model      : gpt-oss:120b-cloud
% prompt sha : e6f1af8537626cdef92b27257be7a5492eae5d849531e9acf1da28c31479695b
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity'), source('celex:32024R1689/oj#art_47').
:- pred ten_years_after_market_placement_applies/1, gloss('10 years after the system has been placed on the market or put into service'), source('celex:32024R1689/oj#art_47').
:- pred refers_to_requirements_chapter3_section2/1, gloss('states that the system meets the requirements set out in Chapter 3 Section 2'), source('celex:32024R1689/oj#art_47').
:- pred includes_annex5_information/1, gloss('contains the information set out in Annex 5'), source('celex:32024R1689/oj#art_47').
:- pred translated_for_nca/1, gloss('translated into a language easily understood by the national competent authorities'), source('celex:32024R1689/oj#art_47').
:- pred subject_to_other_union_harmonisation_legislation/1, gloss('subject to other Union harmonisation legislation that also requires an EU declaration of conformity'), source('celex:32024R1689/oj#art_47').

% -----------------------------------------------------------------
% Obligations of the provider concerning the EU declaration of conformity
% -----------------------------------------------------------------

required_draw_up_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_keep_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    ten_years_after_market_placement_applies(S).

required_submit_copy_on_request(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_assume_responsibility(P, S) :-
    provider(P),
    high_risk_ai_system(S).

% -----------------------------------------------------------------
% Content requirements for the EU declaration of conformity
% -----------------------------------------------------------------

required_content_meets_requirements(D) :-
    eu_declaration_of_conformity(D),
    refers_to_requirements_chapter3_section2(D).

required_content_includes_annex5_information(D) :-
    eu_declaration_of_conformity(D),
    includes_annex5_information(D).

required_translation(D) :-
    eu_declaration_of_conformity(D),
    translated_for_nca(D).

% -----------------------------------------------------------------
% Single declaration when multiple Union legislations apply
% -----------------------------------------------------------------

required_single_eu_declaration(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    subject_to_other_union_harmonisation_legislation(S).

% -----------------------------------------------------------------
% Provenance
% -----------------------------------------------------------------

provenance(required_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(required_submit_copy_on_request/2, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility/2, 'celex:32024R1689/oj#art_47').
provenance(required_content_meets_requirements/1, 'celex:32024R1689/oj#art_47').
provenance(required_content_includes_annex5_information/1, 'celex:32024R1689/oj#art_47').
provenance(required_translation/1, 'celex:32024R1689/oj#art_47').
provenance(required_single_eu_declaration/2, 'celex:32024R1689/oj#art_47').

% -----------------------------------------------------------------
% References
% -----------------------------------------------------------------

references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').
