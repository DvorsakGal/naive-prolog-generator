% unit       : celex:32024R1689/oj#art_27
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : c4f27f2d0eed32f67771348b530a6cc6f10143ace7c448d767e54a9c772bc1db
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ec5260ccd7d7cf85cf429d89a473c5c99ed8bf7f792dd1ed483d7650b6b96d00
% cached     : False
% title      : Fundamental rights impact assessment for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_27').
:- pred fundamental_rights_impact_assessment/1, gloss('assessment of impact on fundamental rights from use of high-risk AI system'), source('celex:32024R1689/oj#art_27').
:- pred body_governed_by_public_law/1, gloss('deployer that is a body governed by public law'), source('celex:32024R1689/oj#art_27').
:- pred private_entity_providing_public_services/1, gloss('private entity deployer providing public services'), source('celex:32024R1689/oj#art_27').
:- pred high_risk_ai_system_area_anx_3_pnt_2/1, gloss('high-risk AI system intended for use in area listed in Annex III point 2'), source('celex:32024R1689/oj#art_27').
:- pred high_risk_ai_system_anx_3_pnt_5_b/1, gloss('high-risk AI system referred to in Annex III point 5(b)'), source('celex:32024R1689/oj#art_27').
:- pred high_risk_ai_system_anx_3_pnt_5_c/1, gloss('high-risk AI system referred to in Annex III point 5(c)'), source('celex:32024R1689/oj#art_27').
:- pred high_risk_ai_system_art_6_par_2/1, gloss('high-risk AI system referred to in Article 6(2)'), source('celex:32024R1689/oj#art_27').
:- pred first_use/1, gloss('first use of a high-risk AI system'), source('celex:32024R1689/oj#art_27').
:- pred similar_case/1, gloss('case similar to a previous deployment'), source('celex:32024R1689/oj#art_27').
:- pred previously_conducted_fria/1, gloss('fundamental rights impact assessment previously conducted'), source('celex:32024R1689/oj#art_27').
:- pred existing_impact_assessment_by_provider/1, gloss('existing impact assessment carried out by provider'), source('celex:32024R1689/oj#art_27').
:- pred fria_element_changed/1, gloss('element of fundamental rights impact assessment has changed or is no longer up to date'), source('celex:32024R1689/oj#art_27').
:- pred filled_out_template/1, gloss('filled-out template for fundamental rights impact assessment notification'), source('celex:32024R1689/oj#art_27').
:- pred data_protection_impact_assessment/1, gloss('data protection impact assessment conducted under GDPR Article 35 or LED Article 27'), source('celex:32024R1689/oj#art_27').
:- pred case_art_46_par_1/1, gloss('case referred to in Article 46(1)'), source('celex:32024R1689/oj#art_27').
:- pred questionnaire_template/1, gloss('template for questionnaire developed by AI Office'), source('celex:32024R1689/oj#art_27').

must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system_art_6_par_2(S),
    \+ high_risk_ai_system_area_anx_3_pnt_2(S),
    body_governed_by_public_law(D),
    before_deploying(D, S).

must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system_art_6_par_2(S),
    \+ high_risk_ai_system_area_anx_3_pnt_2(S),
    private_entity_providing_public_services(D),
    before_deploying(D, S).

must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system_anx_3_pnt_5_b(S),
    before_deploying(D, S).

must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system_anx_3_pnt_5_c(S),
    before_deploying(D, S).

fundamental_rights_impact_assessment(A) :-
    must_perform_fundamental_rights_impact_assessment(_D, S),
    assessment_includes_description_of_processes(A, S),
    assessment_includes_description_of_period_and_frequency(A, S),
    assessment_includes_categories_of_affected_persons(A, S),
    assessment_includes_specific_risks_of_harm(A, S),
    assessment_includes_human_oversight_measures(A, S),
    assessment_includes_measures_for_materialised_risks(A, S).

assessment_includes_description_of_processes(A, S) :-
    fundamental_rights_impact_assessment(A),
    describes_processes_in_intended_purpose(A, S).

assessment_includes_description_of_period_and_frequency(A, S) :-
    fundamental_rights_impact_assessment(A),
    describes_period_and_frequency(A, S).

assessment_includes_categories_of_affected_persons(A, S) :-
    fundamental_rights_impact_assessment(A),
    describes_categories_of_natural_persons_and_groups(A, S).

assessment_includes_specific_risks_of_harm(A, S) :-
    fundamental_rights_impact_assessment(A),
    describes_specific_risks_of_harm(A, S),
    takes_into_account_provider_information(A, S).

assessment_includes_human_oversight_measures(A, S) :-
    fundamental_rights_impact_assessment(A),
    describes_human_oversight_implementation(A, S),
    according_to_instructions_for_use(A, S).

assessment_includes_measures_for_materialised_risks(A, S) :-
    fundamental_rights_impact_assessment(A),
    describes_measures_for_materialised_risks(A, S),
    includes_internal_governance_and_complaint_mechanisms(A, S).

obligation_applies_to_first_use(D, S) :-
    must_perform_fundamental_rights_impact_assessment(D, S),
    first_use(S).

may_rely_on_previous_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    similar_case(S),
    previously_conducted_fria(A),
    fundamental_rights_impact_assessment(A).

may_rely_on_existing_provider_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    similar_case(S),
    existing_impact_assessment_by_provider(A),
    fundamental_rights_impact_assessment(A).

must_update_fria_information(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    fundamental_rights_impact_assessment(A),
    performed_by_deployer(A, D),
    during_use(S),
    fria_element_changed(A).

must_notify_market_surveillance_authority(D, A) :-
    deployer(D),
    fundamental_rights_impact_assessment(A),
    performed_by_deployer(A, D),
    market_surveillance_authority(M),
    notify(D, M, results(A)),
    submit_filled_out_template(D, A).

exempt_from_notification_obligation(D) :-
    deployer(D),
    case_art_46_par_1(D).

fria_complements_dpia(A, DPIA) :-
    fundamental_rights_impact_assessment(A),
    data_protection_impact_assessment(DPIA),
    obligations_already_met_through_dpia(A, DPIA).

must_develop_questionnaire_template(ai_office) :-
    ai_office(ai_office).

questionnaire_template(T) :-
    must_develop_questionnaire_template(ai_office),
    developed_by_ai_office(T),
    includes_automated_tool(T),
    facilitates_simplified_compliance(T).

before_deploying(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    \+ deployed(D, S).

deployed(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    deployment_has_occurred(D, S).

performed_by_deployer(A, D) :-
    fundamental_rights_impact_assessment(A),
    deployer(D),
    performed_by(A, D).

during_use(S) :-
    high_risk_ai_system(S),
    in_use(S).

notify(D, M, results(A)) :-
    deployer(D),
    market_surveillance_authority(M),
    fundamental_rights_impact_assessment(A).

submit_filled_out_template(D, A) :-
    deployer(D),
    fundamental_rights_impact_assessment(A),
    filled_out_template(T),
    submitted_by(D, T).

obligations_already_met_through_dpia(A, DPIA) :-
    fundamental_rights_impact_assessment(A),
    data_protection_impact_assessment(DPIA),
    covers_same_obligations(A, DPIA).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_27').
provenance(fundamental_rights_impact_assessment/1, 'celex:32024R1689/oj#art_27').
provenance(body_governed_by_public_law/1, 'celex:32024R1689/oj#art_27').
provenance(private_entity_providing_public_services/1, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_area_anx_3_pnt_2/1, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_anx_3_pnt_5_b/1, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_anx_3_pnt_5_c/1, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_art_6_par_2/1, 'celex:32024R1689/oj#art_27').
provenance(first_use/1, 'celex:32024R1689/oj#art_27').
provenance(similar_case/1, 'celex:32024R1689/oj#art_27').
provenance(previously_conducted_fria/1, 'celex:32024R1689/oj#art_27').
provenance(existing_impact_assessment_by_provider/1, 'celex:32024R1689/oj#art_27').
provenance(fria_element_changed/1, 'celex:32024R1689/oj#art_27').
provenance(filled_out_template/1, 'celex:32024R1689/oj#art_27').
provenance(data_protection_impact_assessment/1, 'celex:32024R1689/oj#art_27').
provenance(case_art_46_par_1/1, 'celex:32024R1689/oj#art_27').
provenance(questionnaire_template/1, 'celex:32024R1689/oj#art_27').
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(fundamental_rights_impact_assessment/1, 'celex:32024R1689/oj#art_27').
provenance(obligation_applies_to_first_use/2, 'celex:32024R1689/oj#art_27').
provenance(may_rely_on_previous_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(may_rely_on_existing_provider_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fria_information/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_notification_obligation/1, 'celex:32024R1689/oj#art_27').
provenance(fria_complements_dpia/2, 'celex:32024R1689/oj#art_27').
provenance(must_develop_questionnaire_template/1, 'celex:32024R1689/oj#art_27').

references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_b').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1/unp_1/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_5').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27').
