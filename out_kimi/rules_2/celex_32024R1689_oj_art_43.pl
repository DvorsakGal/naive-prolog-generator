% unit       : celex:32024R1689/oj#art_43
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 3d81842d82f36e4eb7f39db83a386bb02d49563b011276a1ee3f9621654176c1
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : e48ec14dcc434b50ebc3f6d0f1f432170328b1327e3af97c9048e36a986bc282
% cached     : False
% title      : Conformity assessment
:- pred must_follow_conformity_assessment_procedure/2, gloss('provider must follow specified conformity assessment procedure'), source('celex:32024R1689/oj#art_43').
:- pred conformity_assessment_procedure_option/2, gloss('available conformity assessment procedure option for provider'), source('celex:32024R1689/oj#art_43').
:- pred must_use_annex_7_procedure/1, gloss('provider must use Annex VII conformity assessment procedure'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standards_applied/1, gloss('provider has applied harmonised standards'), source('celex:32024R1689/oj#art_43').
:- pred common_specifications_applied/1, gloss('provider has applied common specifications'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standards_do_not_exist/1, gloss('harmonised standards do not exist for high-risk AI system'), source('celex:32024R1689/oj#art_43').
:- pred common_specifications_not_available/1, gloss('common specifications are not available for high-risk AI system'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standard_not_fully_applied/1, gloss('provider has not applied or has applied only part of harmonised standard'), source('celex:32024R1689/oj#art_43').
:- pred common_specifications_not_applied/1, gloss('common specifications exist but provider has not applied them'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standard_with_restriction/1, gloss('harmonised standard published with restriction'), source('celex:32024R1689/oj#art_43').
:- pred market_surveillance_authority_as_notified_body/1, gloss('market surveillance authority shall act as notified body'), source('celex:32024R1689/oj#art_43').
:- pred intended_for_sensitive_authority/1, gloss('high-risk AI system intended for law enforcement, immigration, asylum, or Union institutions'), source('celex:32024R1689/oj#art_43').
:- pred new_conformity_assessment_required/1, gloss('new conformity assessment required due to substantial modification'), source('celex:32024R1689/oj#art_43').
:- pred not_substantial_modification/1, gloss('change does not constitute substantial modification'), source('celex:32024R1689/oj#art_43').
:- pred predetermined_change/1, gloss('change was pre-determined by provider at initial conformity assessment'), source('celex:32024R1689/oj#art_43').
:- pred documented_in_technical_documentation/1, gloss('change is part of information in technical documentation'), source('celex:32024R1689/oj#art_43').
:- pred power_to_adopt_delegated_acts_amend_annexes/0, gloss('Commission empowered to adopt delegated acts to amend Annexes VI and VII'), source('celex:32024R1689/oj#art_43').
:- pred power_to_adopt_delegated_acts_subject_to_annex_7/0, gloss('Commission empowered to adopt delegated acts to subject certain systems to Annex VII procedure'), source('celex:32024R1689/oj#art_43').

% Article 43(1) - First paragraph: provider shall opt for one of two procedures for Annex III point 1 systems
% when harmonised standards or common specifications have been applied
must_follow_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1_applies(S),
    (harmonised_standards_applied(S); common_specifications_applied(S)),
    conformity_assessment_procedure_option(S, annex_6).
    
must_follow_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1_applies(S),
    (harmonised_standards_applied(S); common_specifications_applied(S)),
    conformity_assessment_procedure_option(S, annex_7).

% Article 43(1) - Second paragraph: must use Annex VII procedure in specific circumstances
must_use_annex_7_procedure(S) :-
    high_risk_ai_system(S),
    harmonised_standards_do_not_exist(S),
    common_specifications_not_available(S).

must_use_annex_7_procedure(S) :-
    high_risk_ai_system(S),
    harmonised_standard_not_fully_applied(S).

must_use_annex_7_procedure(S) :-
    high_risk_ai_system(S),
    common_specifications_not_applied(S).

must_use_annex_7_procedure(S) :-
    high_risk_ai_system(S),
    harmonised_standard_with_restriction(S).

% When Annex VII is required, provider must follow it
must_follow_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    must_use_annex_7_procedure(S),
    conformity_assessment_procedure_option(S, annex_7).

% Article 43(1) - Third paragraph: market surveillance authority acts as notified body for sensitive authorities
market_surveillance_authority_as_notified_body(S) :-
    high_risk_ai_system(S),
    intended_for_sensitive_authority(S).

intended_for_sensitive_authority(S) :-
    high_risk_ai_system(S),
    law_enforcement_immigration_asylum_authority(S).

intended_for_sensitive_authority(S) :-
    high_risk_ai_system(S),
    union_institution(S).

% Article 43(2) - Annex III points 2-8: internal control only (Annex VI)
must_follow_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    \+ annex_3_point_1_applies(S),
    conformity_assessment_procedure_option(S, annex_6).

% Article 43(3) - Union harmonisation legislation: follow relevant procedure, Chapter 3 Section 2 applies
must_follow_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    union_harmonisation_legislation(L),
    conformity_assessment_procedure_under_legislation(S, L).

% Article 43(3) - notified bodies under existing legislation may control conformity with Chapter 3 Section 2
notified_body_may_control_conformity(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    notified_under_legislation(B, L),
    union_harmonisation_legislation(L),
    compliance_with_notification_requirements(B).

% Article 43(3) - opt-out from third-party assessment only if harmonised standards or common specifications cover all Chapter 3 Section 2 requirements
may_opt_out_third_party_assessment(M, S) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    legal_act_allows_opt_out(L),
    union_harmonisation_legislation(L),
    harmonised_standards_cover_all_requirements(S),
    common_specifications_cover_all_requirements(S).

harmonised_standards_cover_all_requirements(S) :-
    high_risk_ai_system(S),
    harmonised_standards_applied(S),
    covers_all_chapter_3_section_2_requirements(S).

common_specifications_cover_all_requirements(S) :-
    high_risk_ai_system(S),
    common_specifications_applied(S),
    covers_all_chapter_3_section_2_requirements(S).

% Article 43(4) - new conformity assessment for substantial modification
new_conformity_assessment_required(S) :-
    high_risk_ai_system(S),
    substantial_modification(S).

% Article 43(4) - exceptions: pre-determined changes documented in technical documentation
not_substantial_modification(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_placement(S),
    predetermined_change(S),
    documented_in_technical_documentation(S).

% Article 43(5) - Commission empowered to adopt delegated acts to amend Annexes VI and VII
power_to_adopt_delegated_acts_amend_annexes.

% Article 43(6) - Commission empowered to adopt delegated acts to subject Annex III points 2-8 to Annex VII
power_to_adopt_delegated_acts_subject_to_annex_7.

% Provenance
provenance(must_follow_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(conformity_assessment_procedure_option/2, 'celex:32024R1689/oj#art_43').
provenance(must_use_annex_7_procedure/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standards_applied/1, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_applied/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standards_do_not_exist/1, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_not_available/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_not_fully_applied/1, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_not_applied/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_with_restriction/1, 'celex:32024R1689/oj#art_43').
provenance(market_surveillance_authority_as_notified_body/1, 'celex:32024R1689/oj#art_43').
provenance(intended_for_sensitive_authority/1, 'celex:32024R1689/oj#art_43').
provenance(new_conformity_assessment_required/1, 'celex:32024R1689/oj#art_43').
provenance(not_substantial_modification/1, 'celex:32024R1689/oj#art_43').
provenance(predetermined_change/1, 'celex:32024R1689/oj#art_43').
provenance(documented_in_technical_documentation/1, 'celex:32024R1689/oj#art_43').
provenance(power_to_adopt_delegated_acts_amend_annexes/0, 'celex:32024R1689/oj#art_43').
provenance(power_to_adopt_delegated_acts_subject_to_annex_7/0, 'celex:32024R1689/oj#art_43').

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
