% unit       : celex:32024R1689/oj#art_43
% title      : Conformity assessment
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 3d81842d82f36e4eb7f39db83a386bb02d49563b011276a1ee3f9621654176c1
% model      : gpt-oss:120b-cloud
% prompt sha : bded65e4423637ff422ea844713284813b5f4b5e0568c278e2c1b10ca06a086e
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_conformity_assessment_procedure/3, gloss('provider must select a conformity assessment procedure for a high‑risk AI system'), source('celex:32024R1689/oj#art_43').
:- pred internal_control/1, gloss('internal‑control conformity‑assessment procedure'), source('celex:32024R1689/oj#art_43').
:- pred notified_body_assessment/1, gloss('conformity‑assessment procedure involving a notified body'), source('celex:32024R1689/oj#art_43').
:- pred listed_in_annex3_pnt1/1, gloss('high‑risk AI system listed in annex III point 1'), source('celex:32024R1689/oj#anx_3/pnt_1').
:- pred listed_in_annex3_pnt2_8/1, gloss('high‑risk AI system listed in annex III points 2‑8'), source('celex:32024R1689/oj#anx_3/pnt_2').
:- pred harmonised_standard_applied/2, gloss('provider has applied a harmonised standard to the AI system'), source('celex:32024R1689/oj#art_40').
:- pred common_specification_applied/2, gloss('provider has applied a common specification to the AI system'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_exists/1, gloss('harmonised standards referred to in art 40 exist for the AI system'), source('celex:32024R1689/oj#art_40').
:- pred common_specification_available/1, gloss('common specifications referred to in art 41 are available for the AI system'), source('celex:32024R1689/oj#art_41').
:- pred provider_not_fully_applied_harmonised_standard/2, gloss('provider has not applied, or has only partially applied, the harmonised standard'), source('celex:32024R1689/oj#art_43').
:- pred provider_not_applied_common_specification/2, gloss('provider has not applied the common specification'), source('celex:32024R1689/oj#art_43').
:- pred restricted_harmonised_standard_partially_applied/2, gloss('a harmonised standard is published with a restriction and only the restricted part has been applied'), source('celex:32024R1689/oj#art_43').
:- pred substantial_modification/1, gloss('change to an AI system after market placement affecting compliance'), source('celex:32024R1689/oj#anx_3').
:- pred pre_determined_change/1, gloss('change pre‑determined by the provider and documented in the technical documentation'), source('celex:32024R1689/oj#anx_4/pnt_2/pnt_f').
:- pred notified_body/1, gloss('conformity assessment body notified in accordance with the regulation'), source('celex:32024R1689/oj#art_22').
:- pred notified_body_compliance_assessed/1, gloss('compliance of the notified body with the requirements of art 31 has been assessed'), source('celex:32024R1689/oj#art_31').
:- pred permitted_control_conformity/2, gloss('notified body is entitled to control conformity of the high‑risk AI system'), source('celex:32024R1689/oj#art_43').

%--- Requirement: provider must choose a conformity‑assessment procedure (internal control or notified‑body) when harmonised standards or common specifications have been applied
required_conformity_assessment_procedure(Provider, System, Procedure) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_pnt1(System),
    (   harmonised_standard_applied(Provider, System)
    ;   common_specification_applied(Provider, System)
    ),
    (   Procedure = internal_control
    ;   Procedure = notified_body_assessment
    ).

%--- Requirement: when any of the conditions (a)–(d) hold, the provider must use the notified‑body assessment procedure
required_conformity_assessment_procedure(Provider, System, notified_body_assessment) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_pnt1(System),
    \+ harmonised_standard_exists(System),
    \+ common_specification_available(System).

required_conformity_assessment_procedure(Provider, System, notified_body_assessment) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_pnt1(System),
    provider_not_fully_applied_harmonised_standard(Provider, System).

required_conformity_assessment_procedure(Provider, System, notified_body_assessment) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_pnt1(System),
    common_specification_available(System),
    provider_not_applied_common_specification(Provider, System).

required_conformity_assessment_procedure(Provider, System, notified_body_assessment) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_pnt1(System),
    restricted_harmonised_standard_partially_applied(Provider, System).

%--- Requirement: for systems listed in annex III points 2‑8 the internal‑control procedure must be used
required_conformity_assessment_procedure(Provider, System, internal_control) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_pnt2_8(System).

%--- Requirement: a new conformity‑assessment procedure is required after a substantial modification
required_new_conformity_assessment(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    substantial_modification(System),
    \+ pre_determined_change(System).

%--- Permission: notified bodies that have been assessed as compliant may control conformity
permitted_control_conformity(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    notified_body_compliance_assessed(Body).

%--- Provenance
provenance(required_conformity_assessment_procedure/3, 'celex:32024R1689/oj#art_43').
provenance(internal_control/1, 'celex:32024R1689/oj#art_43').
provenance(notified_body_assessment/1, 'celex:32024R1689/oj#art_43').
provenance(listed_in_annex3_pnt1/1, 'celex:32024R1689/oj#art_43').
provenance(listed_in_annex3_pnt2_8/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_applied/2, 'celex:32024R1689/oj#art_43').
provenance(common_specification_applied/2, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_exists/1, 'celex:32024R1689/oj#art_43').
provenance(common_specification_available/1, 'celex:32024R1689/oj#art_43').
provenance(provider_not_fully_applied_harmonised_standard/2, 'celex:32024R1689/oj#art_43').
provenance(provider_not_applied_common_specification/2, 'celex:32024R1689/oj#art_43').
provenance(restricted_harmonised_standard_partially_applied/2, 'celex:32024R1689/oj#art_43').
provenance(required_new_conformity_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_control_conformity/2, 'celex:32024R1689/oj#art_43').

%--- References
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
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_4/pnt_2/pnt_f').
