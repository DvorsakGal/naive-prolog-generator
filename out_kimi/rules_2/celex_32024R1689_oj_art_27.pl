% unit       : celex:32024R1689/oj#art_27
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : c4f27f2d0eed32f67771348b530a6cc6f10143ace7c448d767e54a9c772bc1db
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 96db6651bb8440c9ae4bf6b3704cb28bf5f4a4a6ddbade187918a33d57569322
% cached     : False
% title      : Fundamental rights impact assessment for high-risk AI systems
:- pred must_perform_fundamental_rights_impact_assessment/2, gloss('deployer must perform fundamental rights impact assessment before deploying high-risk AI system'), source('celex:32024R1689/oj#art_27').
:- pred fundamental_rights_impact_assessment/2, gloss('fundamental rights impact assessment for deployment of high-risk AI system'), source('celex:32024R1689/oj#art_27').
:- pred deployer_subject_to_fria/1, gloss('deployer that is required to perform fundamental rights impact assessment'), source('celex:32024R1689/oj#art_27').
:- pred first_use_of_high_risk_ai_system/2, gloss('first deployment of high-risk AI system by deployer'), source('celex:32024R1689/oj#art_27').
:- pred may_rely_on_previous_assessment/2, gloss('deployer may rely on previously conducted impact assessment'), source('celex:32024R1689/oj#art_27').
:- pred must_update_fundamental_rights_impact_assessment/2, gloss('deployer must update fundamental rights impact assessment when elements change'), source('celex:32024R1689/oj#art_27').
:- pred must_notify_market_surveillance_authority/2, gloss('deployer must notify market surveillance authority of assessment results'), source('celex:32024R1689/oj#art_27').
:- pred exempt_from_notification/1, gloss('deployer exempt from notification obligation'), source('celex:32024R1689/oj#art_27').
:- pred complements_data_protection_impact_assessment/1, gloss('fundamental rights impact assessment complements data protection impact assessment'), source('celex:32024R1689/oj#art_27').
:- pred must_develop_template/2, gloss('AI Office must develop template for fundamental rights impact assessment questionnaire'), source('celex:32024R1689/oj#art_27').

% Article 27(1): Deployers must perform fundamental rights impact assessment before deploying high-risk AI system
must_perform_fundamental_rights_impact_assessment(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    \+ high_risk_ai_system_referred_in_annex_3_point_2(S),
    deployer_subject_to_fria(Deployer),
    first_use_of_high_risk_ai_system(Deployer, S).

% Deployers subject to FRIA: public bodies, private entities providing public services, or deployers of Annex III point 5(b) or 5(c) systems
deployer_subject_to_fria(Deployer) :-
    deployer(Deployer),
    deployer_public_authority(Deployer).

deployer_subject_to_fria(Deployer) :-
    deployer(Deployer),
    private_entity_providing_public_services(Deployer).

deployer_subject_to_fria(Deployer) :-
    deployer(Deployer),
    deploys_annex_3_point_5_b_or_c_system(Deployer).

% Private entity providing public services
:- pred private_entity_providing_public_services/1, gloss('private entity providing public services'), source('celex:32024R1689/oj#art_27').

% Deployer of Annex III point 5(b) or 5(c) systems
:- pred deploys_annex_3_point_5_b_or_c_system/1, gloss('deployer of high-risk AI system referred to in Annex III point 5(b) or 5(c)'), source('celex:32024R1689/oj#art_27').

% Article 27(2): First use requirement; may rely on previous assessments in similar cases
may_rely_on_previous_assessment(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    fundamental_rights_impact_assessment(Deployer, S),
    similar_case(Deployer, S).

may_rely_on_provider_assessment(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    existing_impact_assessment_by_provider(S).

:- pred similar_case/2, gloss('similar case to previous deployment'), source('celex:32024R1689/oj#art_27').
:- pred existing_impact_assessment_by_provider/1, gloss('existing impact assessment carried out by provider'), source('celex:32024R1689/oj#art_27').

% Article 27(2): Must update when elements change
must_update_fundamental_rights_impact_assessment(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    fundamental_rights_impact_assessment(Deployer, S),
    element_changed_or_no_longer_up_to_date(Deployer, S).

:- pred element_changed_or_no_longer_up_to_date/2, gloss('element listed in Article 27(1) has changed or is no longer up to date'), source('celex:32024R1689/oj#art_27').

% Article 27(3): Must notify market surveillance authority of results
must_notify_market_surveillance_authority(Deployer, results(fundamental_rights_impact_assessment(S))) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    fundamental_rights_impact_assessment(Deployer, S),
    \+ exempt_from_notification(Deployer).

% Exemption from notification for Article 46(1) cases
exempt_from_notification(Deployer) :-
    deployer(Deployer),
    article_46_par_1_applies(Deployer).

:- pred article_46_par_1_applies/1, gloss('case referred to in Article 46(1)'), source('celex:32024R1689/oj#art_27').

% Article 27(4): FRIA complements data protection impact assessment when obligations already met through DPIA
complements_data_protection_impact_assessment(S) :-
    high_risk_ai_system(S),
    data_protection_impact_assessment_conducted(S),
    obligation_met_through_dpia(S).

:- pred data_protection_impact_assessment_conducted/1, gloss('data protection impact assessment conducted pursuant to GDPR Article 35 or Directive 2016/680 Article 27'), source('celex:32024R1689/oj#art_27').
:- pred obligation_met_through_dpia/1, gloss('obligation in Article 27 already met through data protection impact assessment'), source('celex:32024R1689/oj#art_27').

% Article 27(5): AI Office must develop template
must_develop_template(ai_office, questionnaire_template(fundamental_rights_impact_assessment)) :-
    ai_office(AI_Office).

% Provenance
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(deployer_subject_to_fria/1, 'celex:32024R1689/oj#art_27').
provenance(private_entity_providing_public_services/1, 'celex:32024R1689/oj#art_27').
provenance(deploys_annex_3_point_5_b_or_c_system/1, 'celex:32024R1689/oj#art_27').
provenance(may_rely_on_previous_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(existing_impact_assessment_by_provider/1, 'celex:32024R1689/oj#art_27').
provenance(must_update_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(element_changed_or_no_longer_up_to_date/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_notification/1, 'celex:32024R1689/oj#art_27').
provenance(article_46_par_1_applies/1, 'celex:32024R1689/oj#art_27').
provenance(complements_data_protection_impact_assessment/1, 'celex:32024R1689/oj#art_27').
provenance(data_protection_impact_assessment_conducted/1, 'celex:32024R1689/oj#art_27').
provenance(obligation_met_through_dpia/1, 'celex:32024R1689/oj#art_27').
provenance(must_develop_template/2, 'celex:32024R1689/oj#art_27').

% References
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_b').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1/unp_1/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_5').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27').
