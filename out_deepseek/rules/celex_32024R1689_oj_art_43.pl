% unit       : celex:32024R1689/oj#art_43
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 3d81842d82f36e4eb7f39db83a386bb02d49563b011276a1ee3f9621654176c1
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a58ae44acb2ed5584b90cb1b1471b99b2493c9ce9b1d9b96152786ec0a69e6a7
% cached     : False
% title      : Conformity assessment
:- pred must_follow_conformity_assessment_procedure/2, gloss('provider must follow a specific conformity assessment procedure for a high-risk AI system'), source('celex:32024R1689/oj#art_43').
:- pred must_undergo_new_conformity_assessment/2, gloss('high-risk AI system must undergo a new conformity assessment procedure after substantial modification'), source('celex:32024R1689/oj#art_43').
:- pred substantial_modification_applies/1, gloss('change constitutes a substantial modification requiring new conformity assessment'), source('celex:32024R1689/oj#art_43').
:- pred pre_determined_change/1, gloss('change pre-determined by the provider and documented in technical documentation'), source('celex:32024R1689/oj#art_43').
:- pred opt_out_from_third_party_assessment/2, gloss('product manufacturer may opt out from third-party conformity assessment under specific conditions'), source('celex:32024R1689/oj#art_43').

% Paragraph 1 – first subparagraph: choice between Annex VI and Annex VII when harmonised standards or common specifications are applied
must_follow_conformity_assessment_procedure(Provider, annex_vi) :-
    provider(Provider),
    high_risk_ai_system(S),
    applies_harmonised_standards_or_common_specifications(Provider, S),
    opts_for_internal_control(Provider).

must_follow_conformity_assessment_procedure(Provider, annex_vii) :-
    provider(Provider),
    high_risk_ai_system(S),
    applies_harmonised_standards_or_common_specifications(Provider, S),
    opts_for_notified_body_assessment(Provider).

applies_harmonised_standards_or_common_specifications(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    (   applied_harmonised_standard(Provider, S)
    ;   applied_common_specification(Provider, S)
    ).

% Paragraph 1 – second subparagraph: mandatory Annex VII when standards/specs are absent or not fully applied
must_follow_conformity_assessment_procedure(Provider, annex_vii) :-
    provider(Provider),
    high_risk_ai_system(S),
    \+ applies_harmonised_standards_or_common_specifications(Provider, S).

must_follow_conformity_assessment_procedure(Provider, annex_vii) :-
    provider(Provider),
    high_risk_ai_system(S),
    applied_partial_harmonised_standard(Provider, S).

must_follow_conformity_assessment_procedure(Provider, annex_vii) :-
    provider(Provider),
    high_risk_ai_system(S),
    common_specification_exists_but_not_applied(Provider, S).

must_follow_conformity_assessment_procedure(Provider, annex_vii) :-
    provider(Provider),
    high_risk_ai_system(S),
    harmonised_standard_published_with_restriction_and_restricted_part_applied(Provider, S).

% Paragraph 1 – third subparagraph: choice of notified body, with special rule for law enforcement etc.
must_act_as_notified_body(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    intended_for_law_enforcement_or_immigration_or_asylum_or_union_institution(S).

% Paragraph 2: Annex VI (internal control) for Annex III points 2-8
must_follow_conformity_assessment_procedure(Provider, annex_vi) :-
    provider(Provider),
    high_risk_ai_system(S),
    annex_iii_point_2_to_8(S).

% Paragraph 3 – first subparagraph: follow sectoral legislation procedure for Annex I Section A systems
must_follow_conformity_assessment_procedure(Provider, sectoral_legislation) :-
    provider(Provider),
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation_annex_i_section_a(S).

% Paragraph 3 – third subparagraph: opt-out from third-party assessment for product manufacturers
opt_out_from_third_party_assessment(Manufacturer, S) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation_annex_i_section_a(S),
    applied_all_harmonised_standards_for_sectoral_requirements(Manufacturer, S),
    applied_all_harmonised_standards_or_common_specifications_for_ai_requirements(Manufacturer, S).

% Paragraph 4: new conformity assessment after substantial modification
must_undergo_new_conformity_assessment(S) :-
    high_risk_ai_system(S),
    substantial_modification_applies(S).

substantial_modification_applies(S) :-
    high_risk_ai_system(S),
    substantial_modification(S),
    \+ pre_determined_change(S).

% Provenance
provenance(must_follow_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(must_undergo_new_conformity_assessment/1, 'celex:32024R1689/oj#art_43').
provenance(substantial_modification_applies/1, 'celex:32024R1689/oj#art_43').
provenance(pre_determined_change/1, 'celex:32024R1689/oj#art_43').
provenance(opt_out_from_third_party_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(must_act_as_notified_body/2, 'celex:32024R1689/oj#art_43').

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
