% unit       : celex:32024R1689/oj#art_43
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 3d81842d82f36e4eb7f39db83a386bb02d49563b011276a1ee3f9621654176c1
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 3a344ecae573ae3f58fd93e42f1fe19fb9aa7a1bde61c778535796835a12507e
% cached     : False
% title      : Conformity assessment
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_43').
:- pred annex_3_point_1_system/1, gloss('High-risk AI system listed in Annex III point 1'), source('celex:32024R1689/oj#art_43').
:- pred annex_3_points_2_to_8_system/1, gloss('High-risk AI system listed in Annex III points 2 to 8'), source('celex:32024R1689/oj#art_43').
:- pred applied_harmonised_standards_or_specifications/2, gloss('Provider applied harmonised standards or common specifications for the system'), source('celex:32024R1689/oj#art_43').
:- pred permitted_conformity_assessment_procedure/2, gloss('Conformity assessment procedure permitted for system'), source('celex:32024R1689/oj#art_43').
:- pred required_conformity_assessment_procedure/2, gloss('Conformity assessment procedure required for system'), source('celex:32024R1689/oj#art_43').
:- pred acting_as_notified_body/2, gloss('Entity that acts as notified body for high-risk AI system'), source('celex:32024R1689/oj#art_43').
:- pred intended_deployer_authority/2, gloss('High-risk AI system is intended to be put into service by specific authority'), source('celex:32024R1689/oj#art_43').
:- pred market_surveillance_authority_article_74/2, gloss('Market surveillance authority referred to in Article 74(8) or (9) for system'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standard_exists/1, gloss('Harmonised standard exists covering requirements for system'), source('celex:32024R1689/oj#art_43').
:- pred common_specification_available/1, gloss('Common specification is available covering requirements for system'), source('celex:32024R1689/oj#art_43').
:- pred fully_applied_harmonised_standard/2, gloss('Provider has fully applied the harmonised standard for system'), source('celex:32024R1689/oj#art_43').
:- pred fully_applied_common_specification/2, gloss('Provider has fully applied common specification for system'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standard_restricted/1, gloss('Harmonised standard has been published with a restriction'), source('celex:32024R1689/oj#art_43').
:- pred covered_by_annex_1_section_a/1, gloss('High-risk AI system is covered by Union harmonisation legislation listed in Annex I Section A'), source('celex:32024R1689/oj#art_43').
:- pred permitted_opt_out_third_party_assessment/2, gloss('Product manufacturer permitted to opt out from third-party conformity assessment'), source('celex:32024R1689/oj#art_43').
:- pred applies_all_harmonised_standards_annex_1/2, gloss('Product manufacturer has applied all harmonised standards covering relevant requirements under Annex I legal act'), source('celex:32024R1689/oj#art_43').
:- pred applies_standards_or_specs_chapter_3_section_2/2, gloss('Product manufacturer has applied harmonised standards or common specifications covering Chapter III Section 2'), source('celex:32024R1689/oj#art_43').
:- pred undergoes_conformity_assessment/1, gloss('System has already undergone conformity assessment'), source('celex:32024R1689/oj#art_43').
:- pred predetermined_learning_change/2, gloss('Change to system resulting from continuous learning was predetermined in technical documentation'), source('celex:32024R1689/oj#art_43').
:- pred substantial_modification_occurred/2, gloss('Substantial modification has occurred for system'), source('celex:32024R1689/oj#art_43').
:- pred empowered_delegated_acts/2, gloss('Commission is empowered to adopt delegated acts amending rules'), source('celex:32024R1689/oj#art_43').

% Article 43(1) - Annex III point 1: optional choice when harmonised standards or common specifications applied
permitted_conformity_assessment_procedure(S, annex_6_internal_control) :-
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    provider(P),
    applied_harmonised_standards_or_specifications(P, S),
    \+ required_conformity_assessment_procedure(S, annex_7_notified_body).

permitted_conformity_assessment_procedure(S, annex_7_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_system(S).

% Article 43(1) - Mandatory Annex VII procedure under specific conditions
required_conformity_assessment_procedure(S, annex_7_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    \+ harmonised_standard_exists(S),
    \+ common_specification_available(S).

required_conformity_assessment_procedure(S, annex_7_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    provider(P),
    harmonised_standard_exists(S),
    \+ fully_applied_harmonised_standard(P, S).

required_conformity_assessment_procedure(S, annex_7_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    provider(P),
    common_specification_available(S),
    \+ fully_applied_common_specification(P, S).

required_conformity_assessment_procedure(S, annex_7_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    harmonised_standard_restricted(S).

% Article 43(1) - Market surveillance authority acting as notified body
acting_as_notified_body(Authority, S) :-
    high_risk_ai_system(S),
    intended_deployer_authority(S, law_enforcement),
    market_surveillance_authority_article_74(Authority, S).

acting_as_notified_body(Authority, S) :-
    high_risk_ai_system(S),
    intended_deployer_authority(S, immigration_or_asylum),
    market_surveillance_authority_article_74(Authority, S).

acting_as_notified_body(Authority, S) :-
    high_risk_ai_system(S),
    intended_deployer_authority(S, union_institution_body_office_agency),
    market_surveillance_authority_article_74(Authority, S).

% Article 43(2) - Annex III points 2 to 8: internal control under Annex VI
required_conformity_assessment_procedure(S, annex_6_internal_control) :-
    high_risk_ai_system(S),
    annex_3_points_2_to_8_system(S).

must_comply(P, conformity_assessment(S, annex_6_internal_control)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_points_2_to_8_system(S).

% Article 43(3) - Annex I Section A systems
must_comply(P, conformity_assessment_procedure(annex_1_legislation, S)) :-
    provider(P),
    high_risk_ai_system(S),
    covered_by_annex_1_section_a(S).

permitted_opt_out_third_party_assessment(M, S) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    covered_by_annex_1_section_a(S),
    applies_all_harmonised_standards_annex_1(M, S),
    applies_standards_or_specs_chapter_3_section_2(M, S).

% Article 43(4) - Substantial modification triggers new conformity assessment
must_comply(P, new_conformity_assessment(S)) :-
    provider(P),
    high_risk_ai_system(S),
    undergoes_conformity_assessment(S),
    substantial_modification_occurred(Change, S),
    \+ predetermined_learning_change(Change, S).

% Article 43(5) & (6) - Commission empowerment
empowered_delegated_acts(commission, amend(annex_6)).
empowered_delegated_acts(commission, amend(annex_7)).
empowered_delegated_acts(commission, amend(article_43_par_1)).
empowered_delegated_acts(commission, amend(article_43_par_2)).

% Provenance
provenance(permitted_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(required_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(acting_as_notified_body/2, 'celex:32024R1689/oj#art_43').
provenance(must_comply/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_opt_out_third_party_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(empowered_delegated_acts/2, 'celex:32024R1689/oj#art_43').

% References
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_1/unp_2/pnt_a').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_74/par_9').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_3').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_4').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_5').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_8').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_4').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_5').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_10').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_11').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_4/pnt_2/pnt_f').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_2').
