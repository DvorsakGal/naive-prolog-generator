% unit       : celex:32024R1689/oj#art_27
% title      : Fundamental rights impact assessment for high-risk AI systems
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : c4f27f2d0eed32f67771348b530a6cc6f10143ace7c448d767e54a9c772bc1db
% model      : gpt-oss:120b-cloud
% prompt sha : 7cccffa6a24295b2f7c469a0eefabccbf750a61fda8c466575872a0ac1a978e4
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_27').
:- pred public_law_body/1, gloss('deployer that is a body governed by public law'), source('celex:32024R1689/oj#art_27').
:- pred private_entity_public_service/1, gloss('private entity providing public services'), source('celex:32024R1689/oj#art_27').
:- pred excluded_intended_use_area/1, gloss('high‑risk AI system intended to be used in the excluded area'), source('celex:32024R1689/oj#art_27').
:- pred previous_assessment_available/2, gloss('previous fundamental rights impact assessment is available for the deployer and system'), source('celex:32024R1689/oj#art_27').
:- pred element_changed/2, gloss('deployer considers an element of the assessment has changed or is outdated'), source('celex:32024R1689/oj#art_27').
:- pred case_art_46_par_1_applies/2, gloss('the case listed in art 46 paragraph 1 applies to the deployer and system'), source('celex:32024R1689/oj#art_27').
:- pred must_assess_fundamental_rights_impact/2, gloss('deployer must perform a fundamental rights impact assessment'), source('celex:32024R1689/oj#art_27').
:- pred permitted_rely_on_previous_assessment/2, gloss('deployer may rely on a previously conducted assessment'), source('celex:32024R1689/oj#art_27').
:- pred must_update_fundamental_rights_assessment/2, gloss('deployer must update the fundamental rights impact assessment'), source('celex:32024R1689/oj#art_27').
:- pred must_notify_market_surveillance_authority/2, gloss('deployer must notify the market surveillance authority of the assessment results'), source('celex:32024R1689/oj#art_27').
:- pred exempt_notify_market_surveillance_authority/2, gloss('deployer is exempt from the notification obligation'), source('celex:32024R1689/oj#art_27').
:- pred must_develop_template/2, gloss('AI Office must develop a template questionnaire'), source('celex:32024R1689/oj#art_27').

must_assess_fundamental_rights_impact(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    (   public_law_body(Deployer)
    ;   private_entity_public_service(Deployer)
    ),
    \+ excluded_intended_use_area(System).

permitted_rely_on_previous_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    previous_assessment_available(Deployer, System).

must_update_fundamental_rights_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    element_changed(Deployer, System).

must_notify_market_surveillance_authority(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    \+ exempt_notify_market_surveillance_authority(Deployer, System).

exempt_notify_market_surveillance_authority(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    case_art_46_par_1_applies(Deployer, System).

must_develop_template(ai_office, fundamental_rights_impact_assessment_template).

provenance(must_assess_fundamental_rights_impact/2, 'celex:32024R1689/oj#art_27').
provenance(permitted_rely_on_previous_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fundamental_rights_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').
provenance(exempt_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').
provenance(must_develop_template/2, 'celex:32024R1689/oj#art_27').

references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_b').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1/unp_1/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_5').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').
