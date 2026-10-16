% unit       : celex:32024R1689/oj#art_43
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 3d81842d82f36e4eb7f39db83a386bb02d49563b011276a1ee3f9621654176c1
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3072b7589ad187e491652ecab08334a460041f6fa6d2c9299dbc0eafd9c71cdc
% cached     : False
% title      : Conformity assessment
:- pred must_conformity_assessment/2, gloss('provider shall follow conformity assessment procedure'), source('celex:32024R1689/oj#art_43').

% Article 43(1) - high-risk AI systems listed in Annex 3 point 1
must_conformity_assessment(Provider, assessment(S, Procedure)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_point_1(S),
    harmonised_standards_applied(S),
    provider_chooses_procedure(Provider, S, Procedure),
    conformity_assessment_procedure(Procedure).

must_conformity_assessment(Provider, assessment(S, Procedure)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_point_1(S),
    common_specifications_applied(S),
    provider_chooses_procedure(Provider, S, Procedure),
    conformity_assessment_procedure(Procedure).

% Article 43(1) second paragraph - mandatory Annex 7 procedure
must_conformity_assessment(Provider, assessment(S, annex_7)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_point_1(S),
    \+ harmonised_standards_exist(S),
    \+ common_specifications_available(S).

must_conformity_assessment(Provider, assessment(S, annex_7)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_point_1(S),
    harmonised_standards_exist(S),
    \+ harmonised_standards_applied(S).

must_conformity_assessment(Provider, assessment(S, annex_7)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_point_1(S),
    harmonised_standards_applied_partially(S).

must_conformity_assessment(Provider, assessment(S, annex_7)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_point_1(S),
    common_specifications_exist(S),
    \+ common_specifications_applied(S).

must_conformity_assessment(Provider, assessment(S, annex_7)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_point_1(S),
    harmonised_standard_published_with_restriction(S, RestrictedPart),
    \+ applied_restricted_part(S, RestrictedPart).

% Article 43(1) third paragraph - market surveillance authority as notified body
notified_body_for_assessment(Authority, S) :-
    high_risk_ai_system_annex_3_point_1(S),
    intended_for_law_enforcement_immigration_asylum_or_union_institutions(S),
    market_surveillance_authority(Authority).

% Article 43(2) - high-risk AI systems listed in Annex 3 points 2-8
must_conformity_assessment(Provider, assessment(S, internal_control)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_points_2_to_8(S).

% Article 43(3) - high-risk AI systems covered by Union harmonisation legislation
must_conformity_assessment(Provider, assessment(S, union_harmonisation_procedure)) :-
    provider(Provider),
    high_risk_ai_system_union_harmonisation_legislation(S).

notified_body_entitled_control(Body, S) :-
    high_risk_ai_system_union_harmonisation_legislation(S),
    notified_body(Body),
    notified_under_union_harmonisation_legislation(Body),
    compliance_with_art_31_assessed(Body).

% Article 43(3) second paragraph - opt-out from third-party assessment
permitted_opt_out_third_party_assessment(Manufacturer, S) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system_union_harmonisation_legislation(S),
    union_harmonisation_legislation_allows_opt_out(S),
    all_harmonised_standards_applied(Manufacturer, S),
    all_requirements_covered_by_standards_or_common_specifications(Manufacturer, S).

% Article 43(4) - substantial modification triggers new assessment
must_conformity_assessment(_Provider, new_assessment(S)) :-
    high_risk_ai_system(S),
    previously_conformity_assessed(S),
    substantial_modification(S).

exempt_substantial_modification(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_placement(S),
    predetermined_changes(S),
    changes_documented_in_technical_documentation(S).

% New predicates needed for this provision
:- pred high_risk_ai_system_annex_3_point_1/1, gloss('high-risk AI system listed in Annex 3 point 1'), source('celex:32024R1689/oj#art_43').
:- pred high_risk_ai_system_annex_3_points_2_to_8/1, gloss('high-risk AI system listed in Annex 3 points 2-8'), source('celex:32024R1689/oj#art_43').
:- pred high_risk_ai_system_union_harmonisation_legislation/1, gloss('high-risk AI system covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standards_applied/1, gloss('provider has applied harmonised standards'), source('celex:32024R1689/oj#art_43').
:- pred common_specifications_applied/1, gloss('provider has applied common specifications'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standards_exist/1, gloss('harmonised standards referred to in Article 40 exist'), source('celex:32024R1689/oj#art_43').
:- pred common_specifications_available/1, gloss('common specifications referred to in Article 41 are available'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standards_applied_partially/1, gloss('provider has applied only part of harmonised standard'), source('celex:32024R1689/oj#art_43').
:- pred common_specifications_exist/1, gloss('common specifications exist'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standard_published_with_restriction/2, gloss('harmonised standard published with restriction on part'), source('celex:32024R1689/oj#art_43').
:- pred applied_restricted_part/2, gloss('provider has applied restricted part of standard'), source('celex:32024R1689/oj#art_43').
:- pred intended_for_law_enforcement_immigration_asylum_or_union_institutions/1, gloss('system intended for law enforcement, immigration, asylum or Union institutions'), source('celex:32024R1689/oj#art_43').
:- pred provider_chooses_procedure/3, gloss('provider chooses conformity assessment procedure'), source('celex:32024R1689/oj#art_43').
:- pred conformity_assessment_procedure/1, gloss('valid conformity assessment procedure'), source('celex:32024R1689/oj#art_43').
:- pred notified_under_union_harmonisation_legislation/1, gloss('notified body notified under Union harmonisation legislation'), source('celex:32024R1689/oj#art_43').
:- pred compliance_with_art_31_assessed/1, gloss('compliance with Article 31 requirements assessed'), source('celex:32024R1689/oj#art_43').
:- pred union_harmonisation_legislation_allows_opt_out/1, gloss('Union harmonisation legislation allows opt-out from third-party assessment'), source('celex:32024R1689/oj#art_43').
:- pred all_harmonised_standards_applied/2, gloss('all harmonised standards covering relevant requirements applied'), source('celex:32024R1689/oj#art_43').
:- pred all_requirements_covered_by_standards_or_common_specifications/2, gloss('all Chapter 3 Section 2 requirements covered by standards or common specifications'), source('celex:32024R1689/oj#art_43').
:- pred previously_conformity_assessed/1, gloss('AI system has been subject to conformity assessment'), source('celex:32024R1689/oj#art_43').
:- pred continues_to_learn_after_placement/1, gloss('AI system continues to learn after being placed on market'), source('celex:32024R1689/oj#art_43').
:- pred predetermined_changes/1, gloss('changes were pre-determined by provider at initial assessment'), source('celex:32024R1689/oj#art_43').
:- pred changes_documented_in_technical_documentation/1, gloss('changes are part of technical documentation'), source('celex:32024R1689/oj#art_43').

% Facts for valid procedures
conformity_assessment_procedure(internal_control).
conformity_assessment_procedure(annex_7).
conformity_assessment_procedure(union_harmonisation_procedure).

% Provenance
provenance(must_conformity_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(notified_body_for_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_opt_out_third_party_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(exempt_substantial_modification/1, 'celex:32024R1689/oj#art_43').
provenance(high_risk_ai_system_annex_3_point_1/1, 'celex:32024R1689/oj#art_43').
provenance(high_risk_ai_system_annex_3_points_2_to_8/1, 'celex:32024R1689/oj#art_43').
provenance(high_risk_ai_system_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standards_applied/1, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_applied/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standards_exist/1, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_available/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standards_applied_partially/1, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_exist/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_published_with_restriction/2, 'celex:32024R1689/oj#art_43').
provenance(applied_restricted_part/2, 'celex:32024R1689/oj#art_43').
provenance(intended_for_law_enforcement_immigration_asylum_or_union_institutions/1, 'celex:32024R1689/oj#art_43').
provenance(provider_chooses_procedure/3, 'celex:32024R1689/oj#art_43').
provenance(conformity_assessment_procedure/1, 'celex:32024R1689/oj#art_43').
provenance(notified_under_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_43').
provenance(compliance_with_art_31_assessed/1, 'celex:32024R1689/oj#art_43').
provenance(union_harmonisation_legislation_allows_opt_out/1, 'celex:32024R1689/oj#art_43').
provenance(all_harmonised_standards_applied/2, 'celex:32024R1689/oj#art_43').
provenance(all_requirements_covered_by_standards_or_common_specifications/2, 'celex:32024R1689/oj#art_43').
provenance(previously_conformity_assessed/1, 'celex:32024R1689/oj#art_43').
provenance(continues_to_learn_after_placement/1, 'celex:32024R1689/oj#art_43').
provenance(predetermined_changes/1, 'celex:32024R1689/oj#art_43').
provenance(changes_documented_in_technical_documentation/1, 'celex:32024R1689/oj#art_43').

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
