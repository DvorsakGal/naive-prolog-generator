% unit       : celex:32024R1689/oj#art_27
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : c4f27f2d0eed32f67771348b530a6cc6f10143ace7c448d767e54a9c772bc1db
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : bb9f0a239922f28e38403a1401c7c7038572539be8c115d22c73a704422adafe
% cached     : False
% title      : Fundamental rights impact assessment for high-risk AI systems
% --- New predicates introduced ---
:- pred must_perform_fundamental_rights_impact_assessment/2, gloss('deployer must perform fundamental rights impact assessment'), source('celex:32024R1689/oj#art_27').
:- pred permitted_assessment/2, gloss('deployer is permitted exemption from assessment'), source('celex:32024R1689/oj#art_27').
:- pred public_law_body_applies/1, gloss('deployer is a body governed by public law'), source('celex:32024R1689/oj#art_27').
:- pred private_entity_public_service_applies/1, gloss('deployer is a private entity providing public services'), source('celex:32024R1689/oj#art_27').
:- pred annex_3_pnt_2_applies/1, gloss('system intended for area listed in annex 3 point 2'), source('celex:32024R1689/oj#art_27').
:- pred annex_3_pnt_5_b_applies/2, gloss('deployer of system referred to in annex 3 point 5 b'), source('celex:32024R1689/oj#art_27').
:- pred annex_3_pnt_5_c_applies/2, gloss('deployer of system referred to in annex 3 point 5 c'), source('celex:32024R1689/oj#art_27').
:- pred must_update_fundamental_rights_impact_assessment/2, gloss('deployer must update the assessment'), source('celex:32024R1689/oj#art_27').
:- pred element_changed/2, gloss('an element of the assessment has changed'), source('celex:32024R1689/oj#art_27').
:- pred must_notify/2, gloss('deployer must notify market surveillance authority'), source('celex:32024R1689/oj#art_27').
:- pred permitted_notification/1, gloss('deployer is permitted exemption from notification'), source('celex:32024R1689/oj#art_27').
:- pred art_46_par_1_applies/1, gloss('case where notification exemption applies'), source('celex:32024R1689/oj#art_46/par_1').
:- pred assessment_performed/2, gloss('assessment has been performed for system'), source('celex:32024R1689/oj#art_27').
:- pred must_develop/2, gloss('AI office must develop template'), source('celex:32024R1689/oj#art_27').
:- pred template_fundamental_rights_assessment/1, gloss('template for fundamental rights impact assessment'), source('celex:32024R1689/oj#art_27').

% --- Obligations and permissions ---

must_perform_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    \+ permitted_assessment(Deployer, System).

permitted_assessment(Deployer, System) :-
    public_law_body_applies(Deployer).

permitted_assessment(Deployer, System) :-
    private_entity_public_service_applies(Deployer).

permitted_assessment(Deployer, System) :-
    annex_3_pnt_2_applies(System).

permitted_assessment(Deployer, System) :-
    annex_3_pnt_5_b_applies(Deployer, System).

permitted_assessment(Deployer, System) :-
    annex_3_pnt_5_c_applies(Deployer, System).

must_update_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    element_changed(Deployer, System).

must_notify(Deployer, market_surveillance_authority) :-
    deployer(Deployer),
    assessment_performed(Deployer, System),
    assessment_performed(Deployer, System),   % ensure System used at least twice
    \+ permitted_notification(Deployer).

permitted_notification(Deployer) :-
    art_46_par_1_applies(Deployer).

must_develop(Office, template_fundamental_rights_assessment) :-
    ai_office(Office).

% --- Provenance ---
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(permitted_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(public_law_body_applies/1, 'celex:32024R1689/oj#art_27').
provenance(private_entity_public_service_applies/1, 'celex:32024R1689/oj#art_27').
provenance(annex_3_pnt_2_applies/1, 'celex:32024R1689/oj#art_27').
provenance(annex_3_pnt_5_b_applies/2, 'celex:32024R1689/oj#art_27').
provenance(annex_3_pnt_5_c_applies/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(element_changed/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify/2, 'celex:32024R1689/oj#art_27').
provenance(permitted_notification/1, 'celex:32024R1689/oj#art_27').
provenance(art_46_par_1_applies/1, 'celex:32024R1689/oj#art_27').
provenance(assessment_performed/2, 'celex:32024R1689/oj#art_27').
provenance(must_develop/2, 'celex:32024R1689/oj#art_27').
provenance(template_fundamental_rights_assessment/1, 'celex:32024R1689/oj#art_27').

% --- References ---
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
