% unit       : celex:32024R1689/oj#art_27
% title      : Fundamental rights impact assessment for high-risk AI systems
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : c4f27f2d0eed32f67771348b530a6cc6f10143ace7c448d767e54a9c772bc1db
% model      : gpt-oss:120b-cloud
% prompt sha : aa8828fa8ee83834f2a99f6a014ba5b140b29144362dc7a53a7f512114728597
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_fundamental_rights_impact_assessment/2, gloss('deployer must perform fundamental rights impact assessment before deploying a high‑risk AI system'), source('celex:32024R1689/oj#art_27').
:- pred public_law_body/1, gloss('deployer is a body governed by public law'), source('celex:32024R1689/oj#art_27').
:- pred private_entity_providing_public_services/1, gloss('deployer is a private entity providing public services'), source('celex:32024R1689/oj#art_27').
:- pred deployer_of_annex3_pnt5/2, gloss('deployer of a high‑risk AI system referred to in annex 3 point 5'), source('celex:32024R1689/oj#art_27').
:- pred exempt_fundamental_rights_impact_assessment/1, gloss('high‑risk AI system is exempt from the fundamental rights impact assessment'), source('celex:32024R1689/oj#art_27').
:- pred intended_use_in_exempt_area/1, gloss('high‑risk AI system is intended to be used in the area listed in annex 3 point 2'), source('celex:32024R1689/oj#art_27').

required_fundamental_rights_impact_assessment(Deployer, System) :-
    high_risk_ai_system(System),
    deployer(Deployer),
    (   public_law_body(Deployer)
    ;   private_entity_providing_public_services(Deployer)
    ;   deployer_of_annex3_pnt5(Deployer, System)
    ),
    putting_into_service(System),
    \+ exempt_fundamental_rights_impact_assessment(System).

exempt_fundamental_rights_impact_assessment(System) :-
    high_risk_ai_system(System),
    intended_use_in_exempt_area(System).

provenance(required_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').

:- pred required_update_fundamental_rights_impact_assessment/2, gloss('deployer must update the fundamental rights impact assessment when any element changes during use'), source('celex:32024R1689/oj#art_27').
:- pred element_changed/2, gloss('an element of the assessment has changed or is no longer up to date'), source('celex:32024R1689/oj#art_27').

required_update_fundamental_rights_impact_assessment(Deployer, System) :-
    high_risk_ai_system(System),
    deployer(Deployer),
    putting_into_service(System),
    element_changed(Deployer, System).

provenance(required_update_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').

:- pred must_notify_market_surveillance_authority/2, gloss('deployer must notify the market surveillance authority of the assessment results'), source('celex:32024R1689/oj#art_27').
:- pred assessment_performed/2, gloss('fundamental rights impact assessment has been performed'), source('celex:32024R1689/oj#art_27').
:- pred exempt_notify_market_surveillance_authority/2, gloss('deployer is exempt from the notification obligation'), source('celex:32024R1689/oj#art_27').

assessment_performed(Deployer, System) :-
    required_fundamental_rights_impact_assessment(Deployer, System).

must_notify_market_surveillance_authority(Deployer, System) :-
    high_risk_ai_system(System),
    deployer(Deployer),
    assessment_performed(Deployer, System),
    market_surveillance_authority(_),
    \+ exempt_notify_market_surveillance_authority(Deployer, System).

provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').

:- pred required_template_for_fundamental_rights_impact_assessment/1, gloss('AI Office must develop a template questionnaire to facilitate compliance'), source('celex:32024R1689/oj#art_27').

required_template_for_fundamental_rights_impact_assessment(Office) :-
    ai_office(Office).

provenance(required_template_for_fundamental_rights_impact_assessment/1, 'celex:32024R1689/oj#art_27').

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
