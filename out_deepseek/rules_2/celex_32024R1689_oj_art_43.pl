% unit       : celex:32024R1689/oj#art_43
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 3d81842d82f36e4eb7f39db83a386bb02d49563b011276a1ee3f9621654176c1
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 56bd58bfc24e7f70b6c1077863d73f8f2aa447342ea46d3ab4c15b51e2ada76e
% cached     : False
% title      : Conformity assessment
:- pred conformity_assessment_procedure/2, gloss('conformity assessment procedure applicable to a high-risk AI system'), source('celex:32024R1689/oj#art_43').
:- pred must_follow_conformity_assessment/2, gloss('provider must follow a specific conformity assessment procedure'), source('celex:32024R1689/oj#art_43').
:- pred must_undergo_new_conformity_assessment/1, gloss('high-risk AI system must undergo a new conformity assessment'), source('celex:32024R1689/oj#art_43').
:- pred substantial_modification_occurred/1, gloss('a substantial modification has occurred'), source('celex:32024R1689/oj#art_43').
:- pred pre_determined_change/1, gloss('change pre-determined by the provider at initial conformity assessment'), source('celex:32024R1689/oj#art_43').
:- pred applied_harmonised_standards/1, gloss('provider applied harmonised standards'), source('celex:32024R1689/oj#art_43').
:- pred applied_common_specifications/1, gloss('provider applied common specifications'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standards_exist/0, gloss('harmonised standards exist'), source('celex:32024R1689/oj#art_43').
:- pred common_specifications_available/0, gloss('common specifications are available'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standard_published_with_restriction/1, gloss('harmonised standard published with a restriction'), source('celex:32024R1689/oj#art_43').
:- pred intended_for_law_enforcement_immigration_asylum_or_union/1, gloss('intended to be put into service by law enforcement, immigration, asylum authorities or Union institutions'), source('celex:32024R1689/oj#art_43').
:- pred covered_by_union_harmonisation_legislation/1, gloss('covered by Union harmonisation legislation listed in Annex I Section A'), source('celex:32024R1689/oj#art_43').
:- pred manufacturer_opt_out_allowed/1, gloss('legal act enables manufacturer to opt out from third-party conformity assessment'), source('celex:32024R1689/oj#art_43').
:- pred applied_all_harmonised_standards/1, gloss('manufacturer applied all harmonised standards covering all relevant requirements'), source('celex:32024R1689/oj#art_43').
:- pred applied_all_common_specifications/1, gloss('manufacturer applied common specifications covering all requirements'), source('celex:32024R1689/oj#art_43').

% Paragraph 1: Annex III point 1 systems with harmonised standards or common specifications
conformity_assessment_procedure(S, internal_control) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    applied_harmonised_standards(S).
conformity_assessment_procedure(S, internal_control) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    applied_common_specifications(S).
conformity_assessment_procedure(S, annex_7_with_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    applied_harmonised_standards(S).
conformity_assessment_procedure(S, annex_7_with_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    applied_common_specifications(S).

% Paragraph 1 subparagraph 2: mandatory Annex VII procedure
conformity_assessment_procedure(S, annex_7_with_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    \+ harmonised_standards_exist,
    \+ common_specifications_available.
conformity_assessment_procedure(S, annex_7_with_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    \+ applied_harmonised_standards(S).
conformity_assessment_procedure(S, annex_7_with_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    common_specifications_available,
    \+ applied_common_specifications(S).
conformity_assessment_procedure(S, annex_7_with_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    harmonised_standard_published_with_restriction(HS),
    \+ applied_harmonised_standards(S).

% Paragraph 1 subparagraph 3: choice of notified body, special rule for law enforcement etc.
must_follow_conformity_assessment(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    conformity_assessment_procedure(S, annex_7_with_notified_body),
    \+ intended_for_law_enforcement_immigration_asylum_or_union(S).
must_follow_conformity_assessment(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    conformity_assessment_procedure(S, annex_7_with_notified_body),
    intended_for_law_enforcement_immigration_asylum_or_union(S).

% Paragraph 2: Annex III points 2-8 systems, internal control only
conformity_assessment_procedure(S, internal_control) :-
    high_risk_ai_system(S),
    annex_3_point_2_system(S).

% Paragraph 3: systems covered by Union harmonisation legislation
must_follow_conformity_assessment(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).

% Paragraph 3 subparagraph 3: manufacturer opt-out
conformity_assessment_procedure(S, internal_control) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    manufacturer_opt_out_allowed(S),
    applied_all_harmonised_standards(S).
conformity_assessment_procedure(S, internal_control) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    manufacturer_opt_out_allowed(S),
    applied_all_common_specifications(S).

% Paragraph 4: substantial modification triggers new conformity assessment
must_undergo_new_conformity_assessment(S) :-
    high_risk_ai_system(S),
    substantial_modification_occurred(S),
    \+ pre_determined_change(S).

% Provenance
provenance(conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(must_follow_conformity_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(must_undergo_new_conformity_assessment/1, 'celex:32024R1689/oj#art_43').
provenance(substantial_modification_occurred/1, 'celex:32024R1689/oj#art_43').
provenance(pre_determined_change/1, 'celex:32024R1689/oj#art_43').
provenance(applied_harmonised_standards/1, 'celex:32024R1689/oj#art_43').
provenance(applied_common_specifications/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standards_exist/0, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_available/0, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_published_with_restriction/1, 'celex:32024R1689/oj#art_43').
provenance(intended_for_law_enforcement_immigration_asylum_or_union/1, 'celex:32024R1689/oj#art_43').
provenance(covered_by_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_43').
provenance(manufacturer_opt_out_allowed/1, 'celex:32024R1689/oj#art_43').
provenance(applied_all_harmonised_standards/1, 'celex:32024R1689/oj#art_43').
provenance(applied_all_common_specifications/1, 'celex:32024R1689/oj#art_43').

% References
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_7').
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
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_1/unp_2/pnt_a').
