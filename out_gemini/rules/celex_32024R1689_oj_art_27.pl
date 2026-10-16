% unit       : celex:32024R1689/oj#art_27
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : c4f27f2d0eed32f67771348b530a6cc6f10143ace7c448d767e54a9c772bc1db
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 142587003d09df7773ee8ac702d3650e6407d2b3f6884a74fb2370ea00e5b139
% cached     : False
% title      : Fundamental rights impact assessment for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_27').
:- pred body_governed_by_public_law/1, gloss('entity governed by public law'), source('celex:32024R1689/oj#art_27').
:- pred private_entity_providing_public_services/1, gloss('private entity providing public services'), source('celex:32024R1689/oj#art_27').
:- pred critical_infrastructure_area/1, gloss('AI system intended to be used in critical infrastructure area under Annex III point 2'), source('celex:32024R1689/oj#art_27').
:- pred credit_scoring_or_creditworthiness_system/1, gloss('system under Annex III point 5(b) for credit scoring or creditworthiness assessment'), source('celex:32024R1689/oj#art_27').
:- pred risk_assessment_or_pricing_life_health_insurance_system/1, gloss('system under Annex III point 5(c) for risk assessment and pricing in life and health insurance'), source('celex:32024R1689/oj#art_27').
:- pred required_fundamental_rights_impact_assessment/2, gloss('deployer is required to perform a fundamental rights impact assessment for the AI system'), source('celex:32024R1689/oj#art_27').
:- pred first_use/1, gloss('the first use of an AI system'), source('celex:32024R1689/oj#art_27').
:- pred assessment_elements_changed_or_outdated/2, gloss('elements of fundamental rights impact assessment changed or no longer up to date'), source('celex:32024R1689/oj#art_27').
:- pred assessment_performed/2, gloss('fundamental rights impact assessment has been performed by deployer for system'), source('celex:32024R1689/oj#art_27').
:- pred exempt_from_notification/2, gloss('deployer is exempt from notifying assessment results under Article 46(1)'), source('celex:32024R1689/oj#art_27').
:- pred must_perform(Deployer, Object), gloss('deployer must perform fundamental rights impact assessment'), source('celex:32024R1689/oj#art_27').
:- pred must_update(Deployer, Object), gloss('deployer must update fundamental rights impact assessment information'), source('celex:32024R1689/oj#art_27').
:- pred must_notify(Deployer, Object), gloss('deployer must notify authority of assessment results'), source('celex:32024R1689/oj#art_27').
:- pred must_develop(Actor, Object), gloss('AI Office must develop template for questionnaire'), source('celex:32024R1689/oj#art_27').

% Paragraph 1: Scope of high-risk AI systems and deployers subject to fundamental rights impact assessment
required_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    body_governed_by_public_law(Deployer),
    \+ critical_infrastructure_area(System).

required_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    private_entity_providing_public_services(Deployer),
    \+ critical_infrastructure_area(System).

required_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    credit_scoring_or_creditworthiness_system(System).

required_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    risk_assessment_or_pricing_life_health_insurance_system(System).

% Paragraph 1 & 2: Obligation to perform the assessment prior to first use
must_perform(Deployer, assessment(fundamental_rights_impact, System)) :-
    required_fundamental_rights_impact_assessment(Deployer, System),
    first_use(System).

% Paragraph 2: Obligation to update information if elements change or become outdated
must_update(Deployer, assessment(fundamental_rights_impact, System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    assessment_elements_changed_or_outdated(Deployer, System).

% Paragraph 3: Obligation to notify results to market surveillance authority (unless exempted under Art 46(1))
must_notify(Deployer, results(assessment(fundamental_rights_impact, System), market_surveillance_authority)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    assessment_performed(Deployer, System),
    \+ exempt_from_notification(Deployer, System).

% Paragraph 5: AI Office duty to develop template questionnaire
must_develop(ai_office, template(questionnaire, fundamental_rights_impact_assessment)).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_27').
provenance(body_governed_by_public_law/1, 'celex:32024R1689/oj#art_27').
provenance(private_entity_providing_public_services/1, 'celex:32024R1689/oj#art_27').
provenance(critical_infrastructure_area/1, 'celex:32024R1689/oj#art_27').
provenance(credit_scoring_or_creditworthiness_system/1, 'celex:32024R1689/oj#art_27').
provenance(risk_assessment_or_pricing_life_health_insurance_system/1, 'celex:32024R1689/oj#art_27').
provenance(required_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(first_use/1, 'celex:32024R1689/oj#art_27').
provenance(assessment_elements_changed_or_outdated/2, 'celex:32024R1689/oj#art_27').
provenance(assessment_performed/2, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_notification/2, 'celex:32024R1689/oj#art_27').
provenance(must_perform/2, 'celex:32024R1689/oj#art_27').
provenance(must_update/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify/2, 'celex:32024R1689/oj#art_27').
provenance(must_develop/2, 'celex:32024R1689/oj#art_27').

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
references('celex:32024R1689/oj#art_27', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27').
