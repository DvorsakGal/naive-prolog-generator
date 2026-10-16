% unit       : celex:32024R1689/oj#art_27
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : c4f27f2d0eed32f67771348b530a6cc6f10143ace7c448d767e54a9c772bc1db
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : eb16b7bc0c531fb65958e9eadf29522f68b5393740a8d0a92b3b95dc29b93586
% cached     : False
% title      : Fundamental rights impact assessment for high-risk AI systems
:- pred must_perform_fundamental_rights_impact_assessment/2, gloss('deployer must perform a fundamental rights impact assessment for a high-risk AI system'), source('celex:32024R1689/oj#art_27').
:- pred must_notify_market_surveillance_authority/2, gloss('deployer must notify the market surveillance authority of the results of the fundamental rights impact assessment'), source('celex:32024R1689/oj#art_27').
:- pred exempt_from_notification/2, gloss('deployer is exempt from the obligation to notify the market surveillance authority'), source('celex:32024R1689/oj#art_27').
:- pred must_update_fundamental_rights_impact_assessment/2, gloss('deployer must update the fundamental rights impact assessment when elements change'), source('celex:32024R1689/oj#art_27').
:- pred fundamental_rights_impact_assessment_complements_data_protection_impact_assessment/2, gloss('the fundamental rights impact assessment complements the data protection impact assessment'), source('celex:32024R1689/oj#art_27').

% Paragraph 1: Obligation to perform the assessment
must_perform_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    referred_to_in_art_6_par_2(System),
    \+ intended_for_area_in_anx_3_pnt_2(System),
    (   body_governed_by_public_law(Deployer)
    ;   private_entity_providing_public_services(Deployer)
    ;   deployer_of_system_referred_to_in_anx_3_pnt_5_b_c(Deployer, System)
    ),
    assessment_consists_of_required_elements(Deployer, System).

assessment_consists_of_required_elements(Deployer, System) :-
    description_of_deployer_processes(Deployer, System),
    description_of_period_and_frequency_of_use(Deployer, System),
    categories_of_affected_persons(Deployer, System),
    specific_risks_of_harm(Deployer, System),
    description_of_human_oversight_measures(Deployer, System),
    measures_in_case_of_materialisation_of_risks(Deployer, System).

% Paragraph 2: First use, reliance on prior assessments, and updating
must_perform_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    first_use(System),
    \+ previously_conducted_assessment_applies(Deployer, System).

previously_conducted_assessment_applies(Deployer, System) :-
    similar_case(System),
    (   previously_conducted_fundamental_rights_impact_assessment(Deployer, System)
    ;   existing_impact_assessment_by_provider(Deployer, System)
    ).

must_update_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    during_use(System),
    element_of_paragraph_1_changed_or_outdated(Deployer, System).

% Paragraph 3: Notification to market surveillance authority
must_notify_market_surveillance_authority(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    must_perform_fundamental_rights_impact_assessment(Deployer, System),
    assessment_performed(Deployer, System),
    \+ exempt_from_notification(Deployer, System).

exempt_from_notification(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    case_referred_to_in_art_46_par_1(Deployer, System).

% Paragraph 4: Complementarity with data protection impact assessment
fundamental_rights_impact_assessment_complements_data_protection_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    obligation_met_through_data_protection_impact_assessment(Deployer, System),
    must_perform_fundamental_rights_impact_assessment(Deployer, System).

obligation_met_through_data_protection_impact_assessment(Deployer, System) :-
    data_protection_impact_assessment_conducted_pursuant_to_art_35_gdpr(Deployer, System).
obligation_met_through_data_protection_impact_assessment(Deployer, System) :-
    data_protection_impact_assessment_conducted_pursuant_to_art_27_led(Deployer, System).

% Provenance
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_notification/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(fundamental_rights_impact_assessment_complements_data_protection_impact_assessment/2, 'celex:32024R1689/oj#art_27').

% References
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_b').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1/unp_1/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_5').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_27', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').
