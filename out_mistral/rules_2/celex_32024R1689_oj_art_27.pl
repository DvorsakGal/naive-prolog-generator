% unit       : celex:32024R1689/oj#art_27
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : c4f27f2d0eed32f67771348b530a6cc6f10143ace7c448d767e54a9c772bc1db
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : a2914c1b7c2539871e82352679116d4c73c56f6282db35a9a201287788a03ec4
% cached     : False
% title      : Fundamental rights impact assessment for high-risk AI systems
:- pred fundamental_rights_impact_assessment/1, gloss('assessment of the impact on fundamental rights that the use of a high-risk AI system may produce'), source('celex:32024R1689/oj#art_27').
:- pred fundamental_rights_impact_assessment_element/1, gloss('element of the fundamental rights impact assessment'), source('celex:32024R1689/oj#art_27').
:- pred deployer_processes_description/1, gloss('description of the deployer processes in which the high-risk AI system will be used in line with its intended purpose'), source('celex:32024R1689/oj#art_27').
:- pred use_period_and_frequency_description/1, gloss('description of the period of time within which and the frequency with which each high-risk AI system is intended to be used'), source('celex:32024R1689/oj#art_27').
:- pred affected_persons_categories/1, gloss('categories of natural persons and groups likely to be affected by its use in the specific context'), source('celex:32024R1689/oj#art_27').
:- pred specific_risks_of_harm/1, gloss('specific risks of harm likely to have an impact on the categories of natural persons or groups identified'), source('celex:32024R1689/oj#art_27').
:- pred human_oversight_measures_description/1, gloss('description of the implementation of human oversight measures according to the instructions for use'), source('celex:32024R1689/oj#art_27').
:- pred risk_materialisation_measures/1, gloss('measures to be taken in the case of the materialisation of those risks including arrangements for internal governance and complaint mechanisms'), source('celex:32024R1689/oj#art_27').
:- pred must_perform_fundamental_rights_impact_assessment/2, gloss('deployer must perform fundamental rights impact assessment for system'), source('celex:32024R1689/oj#art_27').
:- pred must_update_fundamental_rights_impact_assessment/2, gloss('deployer must update fundamental rights impact assessment when elements have changed or are no longer up to date'), source('celex:32024R1689/oj#art_27').
:- pred must_notify_market_surveillance_authority_of_assessment/2, gloss('deployer must notify market surveillance authority of results of fundamental rights impact assessment'), source('celex:32024R1689/oj#art_27').
:- pred exempt_from_notification/2, gloss('deployer exempt from obligation to notify market surveillance authority'), source('celex:32024R1689/oj#art_27').
:- pred fundamental_rights_impact_assessment_complements_dpia/1, gloss('fundamental rights impact assessment complements data protection impact assessment'), source('celex:32024R1689/oj#art_27').
:- pred ai_office_must_develop_template/1, gloss('AI Office must develop template for questionnaire to facilitate deployers'), source('celex:32024R1689/oj#art_27').
:- pred deployer_obligation_applies_to_first_use/1, gloss('obligation applies to the first use of the high-risk AI system'), source('celex:32024R1689/oj#art_27').
:- pred may_rely_on_previous_assessment/2, gloss('deployer may rely on previously conducted fundamental rights impact assessments or existing impact assessments carried out by provider in similar cases'), source('celex:32024R1689/oj#art_27').

fundamental_rights_impact_assessment_element(deployer_processes_description).
fundamental_rights_impact_assessment_element(use_period_and_frequency_description).
fundamental_rights_impact_assessment_element(affected_persons_categories).
fundamental_rights_impact_assessment_element(specific_risks_of_harm).
fundamental_rights_impact_assessment_element(human_oversight_measures_description).
fundamental_rights_impact_assessment_element(risk_materialisation_measures).

must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    high_risk_ai_system_referred_to_in_article_6_par_2(S),
    \+ high_risk_ai_system_intended_for_area_in_annex_3_point_2(S),
    body_governed_by_public_law_or_private_entity_providing_public_services(D).

must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    high_risk_ai_system_referred_to_in_article_6_par_2(S),
    \+ high_risk_ai_system_intended_for_area_in_annex_3_point_2(S),
    high_risk_ai_system_referred_to_in_annex_3_point_5_b(S).

must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    high_risk_ai_system_referred_to_in_article_6_par_2(S),
    \+ high_risk_ai_system_intended_for_area_in_annex_3_point_2(S),
    high_risk_ai_system_referred_to_in_annex_3_point_5_c(S).

must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    before_putting_into_service(S),
    must_perform_fundamental_rights_impact_assessment_on_first_use(D, S).

must_perform_fundamental_rights_impact_assessment_on_first_use(D, S) :-
    must_perform_fundamental_rights_impact_assessment(D, S),
    deployer_obligation_applies_to_first_use(S).

fundamental_rights_impact_assessment(FRIA) :-
    deployer_processes_description(FRIA).

fundamental_rights_impact_assessment(FRIA) :-
    use_period_and_frequency_description(FRIA).

fundamental_rights_impact_assessment(FRIA) :-
    affected_persons_categories(FRIA).

fundamental_rights_impact_assessment(FRIA) :-
    specific_risks_of_harm(FRIA).

fundamental_rights_impact_assessment(FRIA) :-
    human_oversight_measures_description(FRIA).

fundamental_rights_impact_assessment(FRIA) :-
    risk_materialisation_measures(FRIA).

must_perform_fundamental_rights_impact_assessment(D, S) :-
    must_perform_fundamental_rights_impact_assessment(D, S),
    fundamental_rights_impact_assessment(FRIA),
    includes_element(FRIA, deployer_processes_description),
    includes_element(FRIA, use_period_and_frequency_description),
    includes_element(FRIA, affected_persons_categories),
    includes_element(FRIA, specific_risks_of_harm),
    includes_element(FRIA, human_oversight_measures_description),
    includes_element(FRIA, risk_materialisation_measures).

specific_risks_of_harm(FRIA) :-
    fundamental_rights_impact_assessment(FRIA),
    takes_into_account(FRIA, information_given_by_provider_pursuant_to_article_13).

human_oversight_measures_description(FRIA) :-
    fundamental_rights_impact_assessment(FRIA),
    according_to_instructions_for_use(FRIA).

may_rely_on_previous_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    similar_cases(D, S),
    previously_conducted_fundamental_rights_impact_assessment(FRIA),
    or_existing_impact_assessment_carried_out_by_provider(FRIA).

must_update_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    during_use_of_high_risk_ai_system(D, S),
    element_changed_or_no_longer_up_to_date(D, S),
    must_take_necessary_steps(D, update_information).

must_notify_market_surveillance_authority_of_assessment(D, MSA) :-
    deployer(D),
    market_surveillance_authority(MSA),
    fundamental_rights_impact_assessment_performed(D),
    submits_filled_out_template(D, MSA),
    template_referred_to_in_article_27_par_5(template).

exempt_from_notification(D, notify_market_surveillance_authority) :-
    deployer(D),
    case_referred_to_in_article_46_par_1(D).

fundamental_rights_impact_assessment_complements_dpia(FRIA) :-
    fundamental_rights_impact_assessment(FRIA),
    data_protection_impact_assessment_conducted_pursuant_to_gdpr_article_35(DPIA),
    or_data_protection_impact_assessment_conducted_pursuant_to_led_article_27(DPIA),
    obligations_already_met_through_dpia(DPIA),
    complements(FRIA, DPIA).

ai_office_must_develop_template(ai_office) :-
    ai_office(AIO),
    develops_template_for_questionnaire(AIO),
    includes_automated_tool(AIO),
    facilitates_deployers_in_complying_with_obligations_under_article_27(AIO).

deployer_obligation_applies_to_first_use(S) :-
    high_risk_ai_system(S),
    first_use(S).

provenance(fundamental_rights_impact_assessment/1, 'celex:32024R1689/oj#art_27').
provenance(fundamental_rights_impact_assessment_element/1, 'celex:32024R1689/oj#art_27').
provenance(deployer_processes_description/1, 'celex:32024R1689/oj#art_27').
provenance(use_period_and_frequency_description/1, 'celex:32024R1689/oj#art_27').
provenance(affected_persons_categories/1, 'celex:32024R1689/oj#art_27').
provenance(specific_risks_of_harm/1, 'celex:32024R1689/oj#art_27').
provenance(human_oversight_measures_description/1, 'celex:32024R1689/oj#art_27').
provenance(risk_materialisation_measures/1, 'celex:32024R1689/oj#art_27').
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority_of_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_notification/2, 'celex:32024R1689/oj#art_27').
provenance(fundamental_rights_impact_assessment_complements_dpia/1, 'celex:32024R1689/oj#art_27').
provenance(ai_office_must_develop_template/1, 'celex:32024R1689/oj#art_27').
provenance(deployer_obligation_applies_to_first_use/1, 'celex:32024R1689/oj#art_27').
provenance(may_rely_on_previous_assessment/2, 'celex:32024R1689/oj#art_27').

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
