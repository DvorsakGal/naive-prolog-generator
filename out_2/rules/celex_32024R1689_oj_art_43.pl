% unit       : celex:32024R1689/oj#art_43
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 3d81842d82f36e4eb7f39db83a386bb02d49563b011276a1ee3f9621654176c1
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2455d8f079a6d689d109b61c6f6c44df78af34632911f73756af782aa7841963
% cached     : False
% title      : Conformity assessment
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_43').
:- pred listed_in_annex3_point1/1, gloss('high‑risk AI system listed in annex 3 point 1'), source('celex:32024R1689/oj#art_43').
:- pred listed_in_annex3_points2to8/1, gloss('high‑risk AI system listed in annex 3 points 2‑8'), source('celex:32024R1689/oj#art_43').
:- pred listed_in_union_harmonisation_legislation/1, gloss('high‑risk AI system covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_43').
:- pred applied_harmonised_standard/2, gloss('provider has applied the harmonised standard to the AI system'), source('celex:32024R1689/oj#art_43').
:- pred applied_common_specification/2, gloss('provider has applied the common specification to the AI system'), source('celex:32024R1689/oj#art_43').
:- pred exists_harmonised_standard/1, gloss('harmonised standard exists for the AI system'), source('celex:32024R1689/oj#art_43').
:- pred exists_common_specification/1, gloss('common specification exists for the AI system'), source('celex:32024R1689/oj#art_43').
:- pred applied_partial_harmonised_standard/2, gloss('provider has applied only part of the harmonised standard'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standard_restricted/1, gloss('harmonised standard has been published with a restriction'), source('celex:32024R1689/oj#art_43').
:- pred applied_only_restricted_part/2, gloss('provider has applied only the restricted part of the harmonised standard'), source('celex:32024R1689/oj#art_43').
:- pred pre_determined_change/1, gloss('change has been pre‑determined by the provider and documented in the technical documentation'), source('celex:32024R1689/oj#art_43').
:- pred compliance_assessed/1, gloss('notified body compliance has been assessed in the notification procedure'), source('celex:32024R1689/oj#art_43').

must_choose_conformity_assessment_procedure(Provider, System, internal_control) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_point1(System),
    (   applied_harmonised_standard(Provider, System)
    ;   applied_common_specification(Provider, System)
    ).

must_choose_conformity_assessment_procedure(Provider, System, notified_body_assessment) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_point1(System),
    (   applied_harmonised_standard(Provider, System)
    ;   applied_common_specification(Provider, System)
    ).

must_choose_conformity_assessment_procedure(Provider, System, internal_control) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_points2to8(System).

must_follow_notified_body_assessment(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_point1(System),
    (   \+ exists_harmonised_standard(System), \+ exists_common_specification(System)
    ;   \+ applied_harmonised_standard(Provider, System)
    ;   applied_partial_harmonised_standard(Provider, System)
    ;   exists_common_specification(System), \+ applied_common_specification(Provider, System)
    ;   harmonised_standard_restricted(System), applied_only_restricted_part(Provider, System)
    ).

must_follow_legal_act_procedure(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_union_harmonisation_legislation(System).

permitted_notified_body(Body) :-
    notified_body(Body),
    compliance_assessed(Body).

must_conduct_new_assessment(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    substantial_modification(System),
    \+ pre_determined_change(System).

provenance(must_choose_conformity_assessment_procedure/3, 'celex:32024R1689/oj#art_43').
provenance(must_follow_notified_body_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(must_follow_legal_act_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_notified_body/1, 'celex:32024R1689/oj#art_43').
provenance(must_conduct_new_assessment/2, 'celex:32024R1689/oj#art_43').

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
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_4/pnt_2/pnt_f').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_2').
