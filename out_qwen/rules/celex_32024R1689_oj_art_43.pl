% unit       : celex:32024R1689/oj#art_43
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 3d81842d82f36e4eb7f39db83a386bb02d49563b011276a1ee3f9621654176c1
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f9096b428e07b5da42a8f5dbc20ff7f1b9e6114d9019dc5145be96d378be727f
% cached     : False
% title      : Conformity assessment
:- pred high_risk_ai_system_annex_3_point_1/1, gloss('high-risk AI system listed in Annex III point 1'), source('celex:32024R1689/oj#art_43').
:- pred high_risk_ai_system_annex_3_points_2_to_8/1, gloss('high-risk AI system referred to in Annex III points 2 to 8'), source('celex:32024R1689/oj#art_43').
:- pred covered_by_union_harmonisation_legislation/1, gloss('high-risk AI system covered by Union harmonisation legislation listed in Annex I Section A'), source('celex:32024R1689/oj#art_43').
:- pred applied_harmonised_standard/2, gloss('provider has applied a harmonised standard for the system'), source('celex:32024R1689/oj#art_43').
:- pred applied_common_specification/2, gloss('provider has applied a common specification for the system'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standard_exists_for_requirements/1, gloss('harmonised standards exist for demonstrating compliance with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_43').
:- pred common_specification_available_for_requirements/1, gloss('common specifications are available for demonstrating compliance with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_43').
:- pred intended_for_law_enforcement_or_asylum/1, gloss('system intended to be put into service by law enforcement, immigration or asylum authorities or Union institutions'), source('celex:32024R1689/oj#art_43').
:- pred continues_to_learn_after_market_placement/1, gloss('AI system that continues to learn after being placed on the market or put into service'), source('celex:32024R1689/oj#art_43').
:- pred change_predetermined_in_technical_documentation/2, gloss('change to system performance was predetermined by provider at initial conformity assessment and documented in technical documentation'), source('celex:32024R1689/oj#art_43').
:- pred must_follow_conformity_assessment_procedure/2, gloss('provider must follow a specific conformity assessment procedure for a system'), source('celex:32024R1689/oj#art_43').
:- pred must_undergo_new_conformity_assessment/2, gloss('system must undergo new conformity assessment due to substantial modification'), source('celex:32024R1689/oj#art_43').

% Article 43(1) - Choice of procedure for Annex III point 1 systems with standards/specs applied
must_follow_conformity_assessment_procedure(P, internal_control(S)) :-
    provider(P),
    high_risk_ai_system_annex_3_point_1(S),
    (applied_harmonised_standard(P, S) ; applied_common_specification(P, S)).

must_follow_conformity_assessment_procedure(P, quality_management_and_technical_documentation_with_notified_body(S)) :-
    provider(P),
    high_risk_ai_system_annex_3_point_1(S),
    (applied_harmonised_standard(P, S) ; applied_common_specification(P, S)).

% Article 43(1) second subparagraph - Mandatory Annex VII procedure
must_follow_conformity_assessment_procedure(P, quality_management_and_technical_documentation_with_notified_body(S)) :-
    provider(P),
    high_risk_ai_system_annex_3_point_1(S),
    \+ harmonised_standard_exists_for_requirements(S),
    \+ common_specification_available_for_requirements(S).

must_follow_conformity_assessment_procedure(P, quality_management_and_technical_documentation_with_notified_body(S)) :-
    provider(P),
    high_risk_ai_system_annex_3_point_1(S),
    \+ applied_harmonised_standard(P, S),
    \+ applied_common_specification(P, S).

must_follow_conformity_assessment_procedure(P, quality_management_and_technical_documentation_with_notified_body(S)) :-
    provider(P),
    high_risk_ai_system_annex_3_point_1(S),
    common_specification_available_for_requirements(S),
    \+ applied_common_specification(P, S).

% Article 43(2) - Internal control for Annex III points 2-8
must_follow_conformity_assessment_procedure(P, internal_control(S)) :-
    provider(P),
    high_risk_ai_system_annex_3_points_2_to_8(S).

% Article 43(3) - Union harmonisation legislation
must_follow_conformity_assessment_procedure(P, relevant_union_harmonisation_procedure(S)) :-
    provider(P),
    covered_by_union_harmonisation_legislation(S).

% Article 43(4) - Substantial modification requires new assessment
must_undergo_new_conformity_assessment(S, substantial_modification) :-
    high_risk_ai_system_annex_3_point_1(S),
    substantial_modification(S).

must_undergo_new_conformity_assessment(S, substantial_modification) :-
    high_risk_ai_system_annex_3_points_2_to_8(S),
    substantial_modification(S).

must_undergo_new_conformity_assessment(S, substantial_modification) :-
    covered_by_union_harmonisation_legislation(S),
    substantial_modification(S).

% Article 43(4) second subparagraph - Exception for pre-determined changes in learning systems
exempt_substantial_modification(S) :-
    continues_to_learn_after_market_placement(S),
    change_predetermined_in_technical_documentation(S, _Change).

% Provenance
provenance(high_risk_ai_system_annex_3_point_1/1, 'celex:32024R1689/oj#art_43').
provenance(high_risk_ai_system_annex_3_points_2_to_8/1, 'celex:32024R1689/oj#art_43').
provenance(covered_by_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_43').
provenance(applied_harmonised_standard/2, 'celex:32024R1689/oj#art_43').
provenance(applied_common_specification/2, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_exists_for_requirements/1, 'celex:32024R1689/oj#art_43').
provenance(common_specification_available_for_requirements/1, 'celex:32024R1689/oj#art_43').
provenance(intended_for_law_enforcement_or_asylum/1, 'celex:32024R1689/oj#art_43').
provenance(continues_to_learn_after_market_placement/1, 'celex:32024R1689/oj#art_43').
provenance(change_predetermined_in_technical_documentation/2, 'celex:32024R1689/oj#art_43').
provenance(must_follow_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(must_undergo_new_conformity_assessment/2, 'celex:32024R1689/oj#art_43').

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
