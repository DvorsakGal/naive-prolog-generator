% unit       : celex:32024R1689/oj#art_27
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : c4f27f2d0eed32f67771348b530a6cc6f10143ace7c448d767e54a9c772bc1db
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 7370e1fe7109d1c0c91f17af8ca146aca5bc9e658e124df9c874b6193ec4c96d
% cached     : False
% title      : Fundamental rights impact assessment for high-risk AI systems
:- pred high_risk_ai_system_art_6_2/1, gloss('AI system referred to in Article 6(2)'), source('celex:32024R1689/oj#art_27').
:- pred body_governed_by_public_law/1, gloss('entity is a body governed by public law'), source('celex:32024R1689/oj#art_27').
:- pred private_entity_providing_public_services/1, gloss('entity is a private entity providing public services'), source('celex:32024R1689/oj#art_27').
:- pred annex_3_point_5_b_c_system/1, gloss('AI system referred to in Annex III point 5(b) or 5(c)'), source('celex:32024R1689/oj#art_27').
:- pred exempt_fundamental_rights_impact_assessment/2, gloss('deployer is exempt from fundamental rights impact assessment for system'), source('celex:32024R1689/oj#art_27').
:- pred derogation_public_security/1, gloss('exceptional case under Article 46(1) for public security derogation'), source('celex:32024R1689/oj#art_27').
:- pred must_notify_results/3, gloss('actor must notify authority of results of an assessment'), source('celex:32024R1689/oj#art_27').
:- pred must_update/2, gloss('actor must update an assessment'), source('celex:32024R1689/oj#art_27').
:- pred elements_changed_or_outdated/2, gloss('elements of impact assessment for system have changed or are no longer up to date'), source('celex:32024R1689/oj#art_27').
:- pred template_developed/2, gloss('entity has developed a template'), source('celex:32024R1689/oj#art_27').
:- pred must_develop/2, gloss('actor must develop a template or tool'), source('celex:32024R1689/oj#art_27').

% Paragraph 1: Scope of deployers and systems for fundamental rights impact assessment
must_comply(Deployer, perform_fundamental_rights_impact_assessment(System)) :-
    deployer(Deployer),
    high_risk_ai_system_art_6_2(System),
    \+ annex_3_point_2_system(System),
    body_governed_by_public_law(Deployer).

must_comply(Deployer, perform_fundamental_rights_impact_assessment(System)) :-
    deployer(Deployer),
    high_risk_ai_system_art_6_2(System),
    \+ annex_3_point_2_system(System),
    private_entity_providing_public_services(Deployer).

must_comply(Deployer, perform_fundamental_rights_impact_assessment(System)) :-
    deployer(Deployer),
    annex_3_point_5_b_c_system(System).

% Paragraph 2: Updating the impact assessment when elements change or are outdated
must_update(Deployer, fundamental_rights_impact_assessment(System)) :-
    deployer(Deployer),
    must_comply(Deployer, perform_fundamental_rights_impact_assessment(System)),
    elements_changed_or_outdated(Deployer, System).

% Paragraph 3: Notification of results to the market surveillance authority
must_notify_results(Deployer, market_surveillance_authority, assessment_results(System)) :-
    deployer(Deployer),
    must_comply(Deployer, perform_fundamental_rights_impact_assessment(System)),
    \+ derogation_public_security(System).

% Paragraph 5: AI Office duty to develop a template
must_develop(Office, questionnaire_template(fundamental_rights_impact_assessment)) :-
    ai_office(Office).

% Provenance
provenance(must_comply/2, 'celex:32024R1689/oj#art_27').
provenance(must_update/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_results/3, 'celex:32024R1689/oj#art_27').
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
