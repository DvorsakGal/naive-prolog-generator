% unit       : celex:32024R1689/oj#art_27
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : c4f27f2d0eed32f67771348b530a6cc6f10143ace7c448d767e54a9c772bc1db
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : ed30b76f61bb50569363beaeb358040e27d6f43f26303a23d3de44f83f21e39d
% cached     : False
% title      : Fundamental rights impact assessment for high-risk AI systems
:- pred body_governed_by_public_law/1, gloss('deployer that is a body governed by public law'), source('celex:32024R1689/oj#art_27').
:- pred private_entity_providing_public_services/1, gloss('private entity providing public services'), source('celex:32024R1689/oj#art_27').
:- pred high_risk_ai_system_art_6_par_2/1, gloss('high-risk AI system referred to in Article 6(2)'), source('celex:32024R1689/oj#art_27').
:- pred exempt_from_fria_notification/1, gloss('deployer exempt from obligation to notify FRIA results under Article 46(1)'), source('celex:32024R1689/oj#art_27').
:- pred data_protection_impact_assessment_conducted/1, gloss('data protection impact assessment conducted pursuant to GDPR or LED'), source('celex:32024R1689/oj#art_27').
:- pred must_perform_fundamental_rights_impact_assessment/2, gloss('deployer must perform fundamental rights impact assessment before deploying high-risk AI system'), source('celex:32024R1689/oj#art_27').
:- pred must_notify_fria_results/2, gloss('deployer must notify market surveillance authority of FRIA results using template'), source('celex:32024R1689/oj#art_27').
:- pred must_update_fria/2, gloss('deployer must update FRIA when elements have changed or are no longer up to date'), source('celex:32024R1689/oj#art_27').
:- pred must_complement_dpia_with_fria/2, gloss('FRIA shall complement existing data protection impact assessment'), source('celex:32024R1689/oj#art_27').

body_governed_by_public_law(D) :-
    deployer(D).

private_entity_providing_public_services(D) :-
    deployer(D).

high_risk_ai_system_art_6_par_2(S) :-
    high_risk_ai_system(S).

exempt_from_fria_notification(D) :-
    deployer(D).

data_protection_impact_assessment_conducted(D) :-
    deployer(D).

must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system_art_6_par_2(S),
    before_placing_on_market_or_service(S),
    \+ fria_exempt_system(S),
    fria_subject_deployer(D).

fria_exempt_system(S) :-
    high_risk_ai_system_annex_iii(S).

fria_subject_deployer(D) :-
    body_governed_by_public_law(D).
fria_subject_deployer(D) :-
    private_entity_providing_public_services(D).

must_notify_fria_results(D, S) :-
    deployer(D),
    high_risk_ai_system_art_6_par_2(S),
    \+ exempt_from_fria_notification(D).

must_update_fria(D, S) :-
    deployer(D),
    high_risk_ai_system_art_6_par_2(S),
    fria_element_changed(S).

must_complement_dpia_with_fria(D, S) :-
    deployer(D),
    high_risk_ai_system_art_6_par_2(S),
    data_protection_impact_assessment_conducted(D).

provenance(body_governed_by_public_law/1, 'celex:32024R1689/oj#art_27').
provenance(private_entity_providing_public_services/1, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_art_6_par_2/1, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_fria_notification/1, 'celex:32024R1689/oj#art_27').
provenance(data_protection_impact_assessment_conducted/1, 'celex:32024R1689/oj#art_27').
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_fria_results/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fria/2, 'celex:32024R1689/oj#art_27').
provenance(must_complement_dpia_with_fria/2, 'celex:32024R1689/oj#art_27').

references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_b').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1/unp_1/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_5').
references('celex:32024R1689/oj#art_27', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').
