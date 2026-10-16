% unit       : celex:32024R1689/oj#art_27
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : c4f27f2d0eed32f67771348b530a6cc6f10143ace7c448d767e54a9c772bc1db
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 597712f4664f1a7da78c4091ed408d10ffe5abf450384e7523fce6aa05bf0ccd
% cached     : False
% title      : Fundamental rights impact assessment for high-risk AI systems
:- pred high_risk_ai_system_referred_to_in_art_6_par_2/1, gloss('high-risk AI system referred to in Article 6(2)'), source('celex:32024R1689/oj#art_27').
:- pred intended_for_annex_3_point_2/1, gloss('AI system intended for use in area listed in Annex III point 2'), source('celex:32024R1689/oj#art_27').
:- pred body_governed_by_public_law/1, gloss('deployer that is a body governed by public law'), source('celex:32024R1689/oj#art_27').
:- pred private_entity_providing_public_services/1, gloss('private entity providing public services'), source('celex:32024R1689/oj#art_27').
:- pred high_risk_ai_system_referred_to_in_annex_3_point_5_b_or_c/1, gloss('high-risk AI system referred to in Annex III point 5(b) or 5(c)'), source('celex:32024R1689/oj#art_27').
:- pred fundamental_rights_impact_assessment_performed/1, gloss('fundamental rights impact assessment has been performed for the system'), source('celex:32024R1689/oj#art_27').
:- pred exempt_from_notification_obligation/1, gloss('deployer exempt from obligation to notify market surveillance authority'), source('celex:32024R1689/oj#art_27').
:- pred data_protection_impact_assessment_conducted/1, gloss('data protection impact assessment conducted pursuant to GDPR or LED'), source('celex:32024R1689/oj#art_27').
:- pred must_perform_fundamental_rights_impact_assessment/2, gloss('deployer must perform FRIA for high-risk AI system'), source('celex:32024R1689/oj#art_27').
:- pred must_notify_market_surveillance_authority/2, gloss('deployer must notify MSA of FRIA results'), source('celex:32024R1689/oj#art_27').
:- pred must_update_fundamental_rights_impact_assessment/2, gloss('deployer must update FRIA when elements change'), source('celex:32024R1689/oj#art_27').
:- pred must_complement_data_protection_impact_assessment/2, gloss('FRIA must complement existing DPIA'), source('celex:32024R1689/oj#art_27').

% Scope conditions for Article 27(1)
in_scope_of_art_27(S) :-
    high_risk_ai_system_referred_to_in_art_6_par_2(S),
    \+ intended_for_annex_3_point_2(S).

deployer_subject_to_art_27(D) :-
    deployer(D),
    body_governed_by_public_law(D).

deployer_subject_to_art_27(D) :-
    deployer(D),
    private_entity_providing_public_services(D).

system_subject_to_art_27_regardless_of_deployer(S) :-
    high_risk_ai_system_referred_to_in_annex_3_point_5_b_or_c(S).

% Core obligation: perform FRIA
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    in_scope_of_art_27(S),
    deployer_subject_to_art_27(D).

must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    system_subject_to_art_27_regardless_of_deployer(S).

% Notification obligation
must_notify_market_surveillance_authority(D, results(fundamental_rights_impact_assessment(S))) :-
    deployer(D),
    fundamental_rights_impact_assessment_performed(S),
    \+ exempt_from_notification_obligation(D).

% Update obligation
must_update_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    fundamental_rights_impact_assessment_performed(S),
    element_changed_or_outdated(S).

% Complementarity with DPIA
must_complement_data_protection_impact_assessment(D, S) :-
    deployer(D),
    data_protection_impact_assessment_conducted(S),
    must_perform_fundamental_rights_impact_assessment(D, S).

% Helper for update condition (placeholder for concrete change detection)
element_changed_or_outdated(_S) :- fail.

% Provenance
provenance(high_risk_ai_system_referred_to_in_art_6_par_2/1, 'celex:32024R1689/oj#art_27').
provenance(intended_for_annex_3_point_2/1, 'celex:32024R1689/oj#art_27').
provenance(body_governed_by_public_law/1, 'celex:32024R1689/oj#art_27').
provenance(private_entity_providing_public_services/1, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_referred_to_in_annex_3_point_5_b_or_c/1, 'celex:32024R1689/oj#art_27').
provenance(fundamental_rights_impact_assessment_performed/1, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_notification_obligation/1, 'celex:32024R1689/oj#art_27').
provenance(data_protection_impact_assessment_conducted/1, 'celex:32024R1689/oj#art_27').
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_complement_data_protection_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(in_scope_of_art_27/1, 'celex:32024R1689/oj#art_27').
provenance(deployer_subject_to_art_27/1, 'celex:32024R1689/oj#art_27').
provenance(system_subject_to_art_27_regardless_of_deployer/1, 'celex:32024R1689/oj#art_27').
provenance(element_changed_or_outdated/1, 'celex:32024R1689/oj#art_27').

% References
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_b').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1/unp_1/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_5').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').
