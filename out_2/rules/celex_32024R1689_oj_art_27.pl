% unit       : celex:32024R1689/oj#art_27
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : c4f27f2d0eed32f67771348b530a6cc6f10143ace7c448d767e54a9c772bc1db
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7fd9213170b7c9091983a4ba5eff71731244bbccb2e1f6b1a6eba346fa1cb1c2
% cached     : False
% title      : Fundamental rights impact assessment for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk under the Regulation'), source('celex:32024R1689/oj#art_27').
:- pred case_art_46_par_1/1, gloss('situation defined in art_46/par_1 giving exemption from notification'), source('celex:32024R1689/oj#art_46/par_1').
:- pred assessment_changed/2, gloss('assessment elements have changed or are no longer up to date'), source('celex:32024R1689/oj#art_27').

:- pred must_perform_fundamental_rights_impact_assessment/2, gloss('deployer must assess impact on fundamental rights of high‑risk AI system'), source('celex:32024R1689/oj#art_27').
:- pred must_notify/2, gloss('deployer must notify the market surveillance authority of assessment results'), source('celex:32024R1689/oj#art_27').
:- pred permitted_notify/2, gloss('deployer may be exempt from the notification obligation'), source('celex:32024R1689/oj#art_27').
:- pred must_update_information/2, gloss('deployer must update assessment information when elements have changed'), source('celex:32024R1689/oj#art_27').
:- pred must_develop/2, gloss('AI Office shall develop a template questionnaire'), source('celex:32024R1689/oj#art_27').

must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

must_notify(D, market_surveillance_authority) :-
    deployer(D),
    high_risk_ai_system(S),
    must_perform_fundamental_rights_impact_assessment(D, S),
    \+ permitted_notify(D, market_surveillance_authority).

permitted_notify(D, market_surveillance_authority) :-
    case_art_46_par_1(D).

must_update_information(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    assessment_changed(D, S).

must_develop(ai_office, template).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_27').
provenance(case_art_46_par_1/1, 'celex:32024R1689/oj#art_46/par_1').
provenance(assessment_changed/2, 'celex:32024R1689/oj#art_27').
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify/2, 'celex:32024R1689/oj#art_27').
provenance(permitted_notify/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_information/2, 'celex:32024R1689/oj#art_27').
provenance(must_develop/2, 'celex:32024R1689/oj#art_27').

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
references('celex:32024R1689/oj#art_27', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').
