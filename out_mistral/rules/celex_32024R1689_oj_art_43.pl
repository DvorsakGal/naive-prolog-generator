% unit       : celex:32024R1689/oj#art_43
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 3d81842d82f36e4eb7f39db83a386bb02d49563b011276a1ee3f9621654176c1
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c52d0cb2e8653d70368d8b3e2d07386cefd76dbeb0caf3d2ec18dcf91ce30a36
% cached     : False
% title      : Conformity assessment
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_43').
:- pred listed_in_annex_3_point_1/1, gloss('high-risk AI system listed in Annex III point 1'), source('celex:32024R1689/oj#art_43').
:- pred listed_in_annex_3_points_2_to_8/1, gloss('high-risk AI system listed in Annex III points 2 through 8'), source('celex:32024R1689/oj#art_43').
:- pred covered_by_union_harmonisation_legislation/1, gloss('high-risk AI system covered by Union harmonisation legislation listed in Annex I section 1'), source('celex:32024R1689/oj#art_43').
:- pred applied_harmonised_standards/2, gloss('provider has applied harmonised standards to the AI system'), source('celex:32024R1689/oj#art_43').
:- pred applied_common_specifications/2, gloss('provider has applied common specifications to the AI system'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standards_exist/1, gloss('harmonised standards exist for the AI system'), source('celex:32024R1689/oj#art_43').
:- pred common_specifications_available/1, gloss('common specifications are available for the AI system'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standard_published_with_restriction/1, gloss('harmonised standard published with a restriction'), source('celex:32024R1689/oj#art_43').
:- pred restricted_part_of_standard/2, gloss('provider applied only the restricted part of a harmonised standard'), source('celex:32024R1689/oj#art_43').
:- pred intended_for_law_enforcement/1, gloss('high-risk AI system intended to be put into service by law enforcement authorities'), source('celex:32024R1689/oj#art_43').
:- pred intended_for_immigration_or_asylum/1, gloss('high-risk AI system intended to be put into service by immigration or asylum authorities'), source('celex:32024R1689/oj#art_43').
:- pred intended_for_union_institutions/1, gloss('high-risk AI system intended to be put into service by Union institutions, bodies, offices or agencies'), source('celex:32024R1689/oj#art_43').
:- pred market_surveillance_authority_acts_as_notified_body/1, gloss('market surveillance authority acts as notified body for the AI system'), source('celex:32024R1689/oj#art_43').
:- pred conformity_assessment_internal_control/1, gloss('conformity assessment procedure based on internal control under Annex VI'), source('celex:32024R1689/oj#art_43').
:- pred conformity_assessment_with_notified_body/1, gloss('conformity assessment procedure involving notified body under Annex VII'), source('celex:32024R1689/oj#art_43').
:- pred conformity_assessment_relevant_procedure/1, gloss('conformity assessment procedure required under relevant Union harmonisation legislation'), source('celex:32024R1689/oj#art_43').
:- pred notified_body_entitled_to_control_conformity/2, gloss('notified body entitled to control conformity of AI system with Chapter 3 Section 2 requirements'), source('celex:32024R1689/oj#art_43').
:- pred notified_body_compliance_assessed/2, gloss('compliance of notified body with Article 31 requirements assessed in notification procedure'), source('celex:32024R1689/oj#art_43').
:- pred product_manufacturer_opt_out_available/1, gloss('legal act enables product manufacturer to opt out from third-party conformity assessment'), source('celex:32024R1689/oj#art_43').
:- pred manufacturer_applied_all_harmonised_standards/2, gloss('product manufacturer has applied all harmonised standards covering all relevant requirements'), source('celex:32024R1689/oj#art_43').
:- pred manufacturer_applied_standards_covering_chapter_3_section_2/2, gloss('product manufacturer has applied harmonised standards or common specifications covering all Chapter 3 Section 2 requirements'), source('celex:32024R1689/oj#art_43').
:- pred new_conformity_assessment_required/1, gloss('new conformity assessment procedure required for the AI system'), source('celex:32024R1689/oj#art_43').
:- pred predetermined_change/2, gloss('change to AI system and its performance predetermined by provider at initial conformity assessment'), source('celex:32024R1689/oj#art_43').
:- pred change_in_technical_documentation/2, gloss('change is part of information contained in technical documentation'), source('celex:32024R1689/oj#art_43').

% Article 43(1): Provider choice of conformity assessment procedure for Annex III point 1 systems
must_follow_conformity_assessment_procedure(P, S, internal_control) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    applied_harmonised_standards(P, S).

must_follow_conformity_assessment_procedure(P, S, internal_control) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    applied_common_specifications(P, S).

must_follow_conformity_assessment_procedure(P, S, with_notified_body) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    applied_harmonised_standards(P, S).

must_follow_conformity_assessment_procedure(P, S, with_notified_body) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    applied_common_specifications(P, S).

% Article 43(1) second paragraph: Mandatory notified body procedure conditions
must_follow_conformity_assessment_procedure(P, S, with_notified_body) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    \+ harmonised_standards_exist(S),
    \+ common_specifications_available(S).

must_follow_conformity_assessment_procedure(P, S, with_notified_body) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    harmonised_standards_exist(S),
    \+ applied_harmonised_standards(P, S).

must_follow_conformity_assessment_procedure(P, S, with_notified_body) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    harmonised_standards_exist(S),
    applied_harmonised_standards(P, S),
    harmonised_standard_published_with_restriction(S),
    restricted_part_of_standard(P, S).

must_follow_conformity_assessment_procedure(P, S, with_notified_body) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    common_specifications_available(S),
    \+ applied_common_specifications(P, S).

% Article 43(1) third paragraph: Market surveillance authority as notified body for specific systems
market_surveillance_authority_acts_as_notified_body(S) :-
    high_risk_ai_system(S),
    intended_for_law_enforcement(S).

market_surveillance_authority_acts_as_notified_body(S) :-
    high_risk_ai_system(S),
    intended_for_immigration_or_asylum(S).

market_surveillance_authority_acts_as_notified_body(S) :-
    high_risk_ai_system(S),
    intended_for_union_institutions(S).

% Article 43(2): Internal control only for Annex III points 2-8
must_follow_conformity_assessment_procedure(P, S, internal_control) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_points_2_to_8(S).

% Article 43(3): Union harmonisation legislation systems
must_follow_conformity_assessment_procedure(P, S, relevant_procedure) :-
    provider(P),
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).

notified_body_entitled_to_control_conformity(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    notified_body_compliance_assessed(B, S).

% Product manufacturer opt-out conditions
permitted_opt_out_from_third_party_assessment(M, S) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    product_manufacturer_opt_out_available(S),
    manufacturer_applied_all_harmonised_standards(M, S),
    manufacturer_applied_standards_covering_chapter_3_section_2(M, S).

% Article 43(4): New conformity assessment after substantial modification
new_conformity_assessment_required(S) :-
    high_risk_ai_system(S),
    substantial_modification(S).

% Predetermined changes do not constitute substantial modification
\+ substantial_modification(S) :-
    high_risk_ai_system(S),
    predetermined_change(P, S),
    change_in_technical_documentation(P, S).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_43').
provenance(listed_in_annex_3_point_1/1, 'celex:32024R1689/oj#art_43').
provenance(listed_in_annex_3_points_2_to_8/1, 'celex:32024R1689/oj#art_43').
provenance(covered_by_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_43').
provenance(applied_harmonised_standards/2, 'celex:32024R1689/oj#art_43').
provenance(applied_common_specifications/2, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standards_exist/1, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_available/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_published_with_restriction/1, 'celex:32024R1689/oj#art_43').
provenance(restricted_part_of_standard/2, 'celex:32024R1689/oj#art_43').
provenance(intended_for_law_enforcement/1, 'celex:32024R1689/oj#art_43').
provenance(intended_for_immigration_or_asylum/1, 'celex:32024R1689/oj#art_43').
provenance(intended_for_union_institutions/1, 'celex:32024R1689/oj#art_43').
provenance(market_surveillance_authority_acts_as_notified_body/1, 'celex:32024R1689/oj#art_43').
provenance(conformity_assessment_internal_control/1, 'celex:32024R1689/oj#art_43').
provenance(conformity_assessment_with_notified_body/1, 'celex:32024R1689/oj#art_43').
provenance(conformity_assessment_relevant_procedure/1, 'celex:32024R1689/oj#art_43').
provenance(notified_body_entitled_to_control_conformity/2, 'celex:32024R1689/oj#art_43').
provenance(notified_body_compliance_assessed/2, 'celex:32024R1689/oj#art_43').
provenance(product_manufacturer_opt_out_available/1, 'celex:32024R1689/oj#art_43').
provenance(manufacturer_applied_all_harmonised_standards/2, 'celex:32024R1689/oj#art_43').
provenance(manufacturer_applied_standards_covering_chapter_3_section_2/2, 'celex:32024R1689/oj#art_43').
provenance(new_conformity_assessment_required/1, 'celex:32024R1689/oj#art_43').
provenance(predetermined_change/2, 'celex:32024R1689/oj#art_43').
provenance(change_in_technical_documentation/2, 'celex:32024R1689/oj#art_43').
provenance(must_follow_conformity_assessment_procedure/3, 'celex:32024R1689/oj#art_43').
provenance(permitted_opt_out_from_third_party_assessment/2, 'celex:32024R1689/oj#art_43').

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
