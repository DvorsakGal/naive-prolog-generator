% unit       : celex:32024R1689/oj#art_27
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : c4f27f2d0eed32f67771348b530a6cc6f10143ace7c448d767e54a9c772bc1db
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 75640e7cd165ac64f6718790aa1050c0efbbe8a8cd4c85264cb5910f87f254fa
% cached     : False
% title      : Fundamental rights impact assessment for high-risk AI systems
:- pred must_perform_fundamental_rights_impact_assessment/2, gloss('deployer must perform fundamental rights impact assessment before deploying high-risk AI system'), source('celex:32024R1689/oj#art_27/par_1').
:- pred may_rely_on_existing_assessment/2, gloss('deployer may rely on previously conducted impact assessments in similar cases'), source('celex:32024R1689/oj#art_27/par_2').
:- pred must_update_assessment/2, gloss('deployer must update assessment when elements change'), source('celex:32024R1689/oj#art_27/par_2').
:- pred must_notify_market_surveillance_authority/2, gloss('deployer must notify market surveillance authority of assessment results'), source('celex:32024R1689/oj#art_27/par_3').
:- pred exempt_from_notification/1, gloss('deployer exempt from notification obligation in certain cases'), source('celex:32024R1689/oj#art_27/par_3').
:- pred assessment_complements_data_protection_impact_assessment/1, gloss('fundamental rights impact assessment complements existing data protection impact assessment'), source('celex:32024R1689/oj#art_27/par_4').
:- pred body_governed_by_public_law/1, gloss('entity governed by public law'), source('celex:32024R1689/oj#art_27/par_1').
:- pred private_entity_providing_public_services/1, gloss('private entity providing public services'), source('celex:32024R1689/oj#art_27/par_1').
:- pred deployer_of_high_risk_ai_system_referred_in_annex_3_point_5_b_or_c/2, gloss('deployer of high-risk AI system referred to in Annex III point 5(b) or 5(c)'), source('celex:32024R1689/oj#art_27/par_1').
:- pred high_risk_ai_system_referred_in_article_6_par_2/1, gloss('high-risk AI system referred to in Article 6(2)'), source('celex:32024R1689/oj#art_27/par_1').
:- pred high_risk_ai_system_intended_for_use_in_annex_3_point_2/1, gloss('high-risk AI system intended for use in area listed in Annex III point 2'), source('celex:32024R1689/oj#art_27/par_1').
:- pred first_use_of_high_risk_ai_system/2, gloss('first use of high-risk AI system by deployer'), source('celex:32024R1689/oj#art_27/par_2').
:- pred similar_case/2, gloss('similar case to previous deployment allowing reliance on existing assessment'), source('celex:32024R1689/oj#art_27/par_2').
:- pred previously_conducted_fundamental_rights_impact_assessment/2, gloss('previously conducted fundamental rights impact assessment'), source('celex:32024R1689/oj#art_27/par_2').
:- pred existing_impact_assessment_by_provider/2, gloss('existing impact assessment carried out by provider'), source('celex:32024R1689/oj#art_27/par_2').
:- pred element_changed_or_no_longer_up_to_date/2, gloss('element of assessment has changed or is no longer up to date'), source('celex:32024R1689/oj#art_27/par_2').
:- pred assessment_performed/2, gloss('fundamental rights impact assessment has been performed'), source('celex:32024R1689/oj#art_27/par_3').
:- pred data_protection_impact_assessment_conducted/1, gloss('data protection impact assessment has been conducted'), source('celex:32024R1689/oj#art_27/par_4').

% Article 27(1): Core obligation to perform fundamental rights impact assessment
must_perform_fundamental_rights_impact_assessment(Deployer, assessment(S)) :-
    deployer(Deployer),
    high_risk_ai_system_referred_in_article_6_par_2(S),
    \+ high_risk_ai_system_intended_for_use_in_annex_3_point_2(S),
    (body_governed_by_public_law(Deployer) ; private_entity_providing_public_services(Deployer)).

must_perform_fundamental_rights_impact_assessment(Deployer, assessment(S)) :-
    deployer(Deployer),
    deployer_of_high_risk_ai_system_referred_in_annex_3_point_5_b_or_c(Deployer, S).

% Article 27(2): First use requirement and reliance on existing assessments
must_perform_fundamental_rights_impact_assessment(Deployer, assessment(S)) :-
    deployer(Deployer),
    first_use_of_high_risk_ai_system(Deployer, S),
    \+ may_rely_on_existing_assessment(Deployer, S).

may_rely_on_existing_assessment(Deployer, S) :-
    deployer(Deployer),
    similar_case(Deployer, S),
    (previously_conducted_fundamental_rights_impact_assessment(Deployer, S) ; existing_impact_assessment_by_provider(_Provider, S)).

must_update_assessment(Deployer, S) :-
    deployer(Deployer),
    assessment_performed(Deployer, S),
    element_changed_or_no_longer_up_to_date(Deployer, S).

% Article 27(3): Notification obligation and exemption
must_notify_market_surveillance_authority(Deployer, results(assessment(S))) :-
    deployer(Deployer),
    assessment_performed(Deployer, S),
    \+ exempt_from_notification(Deployer).

% Article 27(4): Complementarity with data protection impact assessments
assessment_complements_data_protection_impact_assessment(assessment(S)) :-
    must_perform_fundamental_rights_impact_assessment(_Deployer, assessment(S)),
    data_protection_impact_assessment_conducted(S).

% Provenance
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(may_rely_on_existing_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_notification/1, 'celex:32024R1689/oj#art_27').
provenance(assessment_complements_data_protection_impact_assessment/1, 'celex:32024R1689/oj#art_27').
provenance(body_governed_by_public_law/1, 'celex:32024R1689/oj#art_27').
provenance(private_entity_providing_public_services/1, 'celex:32024R1689/oj#art_27').
provenance(deployer_of_high_risk_ai_system_referred_in_annex_3_point_5_b_or_c/2, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_referred_in_article_6_par_2/1, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_intended_for_use_in_annex_3_point_2/1, 'celex:32024R1689/oj#art_27').
provenance(first_use_of_high_risk_ai_system/2, 'celex:32024R1689/oj#art_27').
provenance(similar_case/2, 'celex:32024R1689/oj#art_27').
provenance(previously_conducted_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(existing_impact_assessment_by_provider/2, 'celex:32024R1689/oj#art_27').
provenance(element_changed_or_no_longer_up_to_date/2, 'celex:32024R1689/oj#art_27').
provenance(assessment_performed/2, 'celex:32024R1689/oj#art_27').
provenance(data_protection_impact_assessment_conducted/1, 'celex:32024R1689/oj#art_27').

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
