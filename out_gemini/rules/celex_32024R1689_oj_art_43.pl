% unit       : celex:32024R1689/oj#art_43
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 3d81842d82f36e4eb7f39db83a386bb02d49563b011276a1ee3f9621654176c1
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ba905951292e57724f0a46664a14cb087bed15ae15cf644fc09138ed12413c24
% cached     : False
% title      : Conformity assessment
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_43').
:- pred annex_3_point_1_system/1, gloss('high-risk AI system listed in Annex III point 1'), source('celex:32024R1689/oj#art_43').
:- pred annex_3_points_2_to_8_system/1, gloss('high-risk AI system listed in Annex III points 2 to 8'), source('celex:32024R1689/oj#art_43').
:- pred annex_1_section_a_system/1, gloss('high-risk AI system covered by Union legislation listed in Annex I Section A'), source('celex:32024R1689/oj#art_43').
:- pred applies_harmonised_standards/1, gloss('provider applies relevant harmonised standards'), source('celex:32024R1689/oj#art_43').
:- pred applies_common_specifications/1, gloss('provider applies relevant common specifications'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standard_restricted/1, gloss('harmonised standard was published with a restriction'), source('celex:32024R1689/oj#art_43').
:- pred intended_deployer_law_enforcement_or_institution/1, gloss('intended deployer is law enforcement, immigration, asylum authority, or EU institution/body'), source('celex:32024R1689/oj#art_43').
:- pred pre_determined_learning_change/1, gloss('change to AI system pre-determined and documented in technical documentation'), source('celex:32024R1689/oj#art_43').
:- pred must_follow_procedure/2, gloss('actor must follow a specific conformity assessment procedure for a system'), source('celex:32024R1689/oj#art_43').
:- pred permitted_procedure/2, gloss('actor is permitted to follow a conformity assessment procedure for a system'), source('celex:32024R1689/oj#art_43').
:- pred required_notified_body/2, gloss('notified body role is assigned to a specific entity for a system'), source('celex:32024R1689/oj#art_43').
:- pred exempt_substantial_modification/1, gloss('change is exempt from being considered a substantial modification'), source('celex:32024R1689/oj#art_43').
:- pred required_new_conformity_assessment/1, gloss('system must undergo a new conformity assessment procedure'), source('celex:32024R1689/oj#art_43').

% Paragraph 1: Annex III point 1 systems
% If provider has not fully applied harmonised standards / common specifications, Annex VII procedure is mandatory.
must_follow_procedure(P, procedure(annex_7, S)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    \+ applies_harmonised_standards(S),
    \+ applies_common_specifications(S).

must_follow_procedure(P, procedure(annex_7, S)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    harmonised_standard_restricted(S).

% Otherwise, provider may choose between Annex VI (internal control) and Annex VII (quality management/technical documentation).
permitted_procedure(P, procedure(annex_6, S)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    applies_harmonised_standards(S),
    \+ harmonised_standard_restricted(S).

permitted_procedure(P, procedure(annex_6, S)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    applies_common_specifications(S),
    \+ harmonised_standard_restricted(S).

permitted_procedure(P, procedure(annex_7, S)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1_system(S).

% Paragraph 1, third subparagraph: Notified body for law enforcement / EU institutions
required_notified_body(market_surveillance_authority, S) :-
    high_risk_ai_system(S),
    intended_deployer_law_enforcement_or_institution(S).

% Paragraph 2: High-risk AI systems in Annex III points 2 to 8
must_follow_procedure(P, procedure(annex_6, S)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_points_2_to_8_system(S).

% Paragraph 3: High-risk AI systems covered by Annex I Section A legislation
must_follow_procedure(P, procedure(sectoral_legislation, S)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_1_section_a_system(S).

permitted_procedure(M, opt_out_third_party_assessment(S)) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    annex_1_section_a_system(S),
    applies_harmonised_standards(S).

permitted_procedure(M, opt_out_third_party_assessment(S)) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    annex_1_section_a_system(S),
    applies_common_specifications(S).

% Paragraph 4: Substantial modification triggers new conformity assessment
required_new_conformity_assessment(S) :-
    high_risk_ai_system(S),
    substantial_modification(S).

exempt_substantial_modification(Change) :-
    pre_determined_learning_change(Change).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_43').
provenance(annex_3_point_1_system/1, 'celex:32024R1689/oj#art_43').
provenance(annex_3_points_2_to_8_system/1, 'celex:32024R1689/oj#art_43').
provenance(annex_1_section_a_system/1, 'celex:32024R1689/oj#art_43').
provenance(applies_harmonised_standards/1, 'celex:32024R1689/oj#art_43').
provenance(applies_common_specifications/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_restricted/1, 'celex:32024R1689/oj#art_43').
provenance(intended_deployer_law_enforcement_or_institution/1, 'celex:32024R1689/oj#art_43').
provenance(pre_determined_learning_change/1, 'celex:32024R1689/oj#art_43').
provenance(must_follow_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(required_notified_body/2, 'celex:32024R1689/oj#art_43').
provenance(exempt_substantial_modification/1, 'celex:32024R1689/oj#art_43').
provenance(required_new_conformity_assessment/1, 'celex:32024R1689/oj#art_43').

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
