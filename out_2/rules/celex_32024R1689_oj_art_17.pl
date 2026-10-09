% unit       : celex:32024R1689/oj#art_17
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 4c3c5f0801ffb9d4125aa64670a2973aca5856cde661b1eb06980a365ebd73cf
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4b36a4a2d13b60d1e11f3a8f55cb7c2d6215166ff35d495171f60d9b34047baf
% cached     : False
% title      : Quality management system
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_17').
:- pred financial_institution/1, gloss('provider that is a financial institution'), source('celex:32024R1689/oj#art_17').
:- pred required_aspect/1, gloss('aspect that must be included in the quality management system'), source('celex:32024R1689/oj#art_17').

must_establish(P, quality_management_system) :-
    provider(P),
    high_risk_ai_system(_),
    \+ financial_institution(P).

must_document(P, quality_management_system) :-
    provider(P),
    high_risk_ai_system(_),
    \+ financial_institution(P).

include_aspect(P, A) :-
    provider(P),
    high_risk_ai_system(_),
    \+ financial_institution(P),
    required_aspect(A).

must_ensure(P, proportionate_implementation) :-
    provider(P),
    high_risk_ai_system(_).

must_respect(P, degree_of_rigour_and_level_of_protection) :-
    provider(P),
    high_risk_ai_system(_).

exempt_quality_management_system(P) :-
    provider(P),
    financial_institution(P).

required_aspect(strategy_for_regulatory_compliance).
required_aspect(design_control_and_verification).
required_aspect(development_quality_control).
required_aspect(examination_test_validation).
required_aspect(technical_specifications).
required_aspect(data_management_systems).
required_aspect(risk_management_system).
required_aspect(post_market_monitoring_system).
required_aspect(serious_incident_reporting).
required_aspect(communication_handling).
required_aspect(record_keeping_systems).
required_aspect(resource_management).
required_aspect(accountability_framework).

provenance(must_establish/2, 'celex:32024R1689/oj#art_17').
provenance(must_document/2, 'celex:32024R1689/oj#art_17').
provenance(include_aspect/2, 'celex:32024R1689/oj#art_17').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_17').
provenance(must_respect/2, 'celex:32024R1689/oj#art_17').
provenance(exempt_quality_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(required_aspect/1, 'celex:32024R1689/oj#art_17').

references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_g').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_i').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_40').
