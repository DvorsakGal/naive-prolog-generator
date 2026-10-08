% unit       : celex:32024R1689/oj#art_17
% title      : Quality management system
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 4c3c5f0801ffb9d4125aa64670a2973aca5856cde661b1eb06980a365ebd73cf
% model      : gpt-oss:120b-cloud
% prompt sha : 183aace8aa47662d3237bd3ede05c3856f0633e6f6eb965421e768e5e6ff8fad
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred quality_management_system/1, gloss('quality management system'), source('celex:32024R1689/oj#art_17').
:- pred required_quality_management_system/2, gloss('obligation for provider to have quality management system'), source('celex:32024R1689/oj#art_17').
:- pred required_quality_management_aspect/2, gloss('aspect that must be included in quality management system'), source('celex:32024R1689/oj#art_17').
:- pred proportionate_to_size_applies/1, gloss('implementation proportionate to size of provider'), source('celex:32024R1689/oj#art_17').
:- pred financial_institution/1, gloss('provider that is a financial institution'), source('celex:32024R1689/oj#art_17').
:- pred exempt_quality_management_system/1, gloss('exemption from quality management system requirement'), source('celex:32024R1689/oj#art_17').
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_17').

% generic placeholder for any quality management system
quality_management_system(_).

% any high‑risk AI system (placeholder)
high_risk_ai_system(_).

% proportionate implementation applies to all providers
proportionate_to_size_applies(P) :-
    provider(P).

% exemption for financial institutions
exempt_quality_management_system(P) :-
    financial_institution(P).

% core duty: providers of high‑risk AI systems must have a QMS, unless exempt
required_quality_management_system(P, QMS) :-
    provider(P),
    high_risk_ai_system(_),
    \+ exempt_quality_management_system(P),
    quality_management_system(QMS),
    proportionate_to_size_applies(P).

% required aspects of a quality management system
required_quality_management_aspect(QMS, strategy_for_regulatory_compliance) :-
    quality_management_system(QMS).

required_quality_management_aspect(QMS, design_control_and_verification) :-
    quality_management_system(QMS).

required_quality_management_aspect(QMS, development_quality_control_and_assurance) :-
    quality_management_system(QMS).

required_quality_management_aspect(QMS, examination_test_validation) :-
    quality_management_system(QMS).

required_quality_management_aspect(QMS, technical_specifications) :-
    quality_management_system(QMS).

required_quality_management_aspect(QMS, data_management_systems) :-
    quality_management_system(QMS).

required_quality_management_aspect(QMS, risk_management_system) :-
    quality_management_system(QMS).

required_quality_management_aspect(QMS, post_market_monitoring_system) :-
    quality_management_system(QMS).

required_quality_management_aspect(QMS, serious_incident_reporting) :-
    quality_management_system(QMS).

required_quality_management_aspect(QMS, communication_handling) :-
    quality_management_system(QMS).

required_quality_management_aspect(QMS, record_keeping) :-
    quality_management_system(QMS).

required_quality_management_aspect(QMS, resource_management) :-
    quality_management_system(QMS).

required_quality_management_aspect(QMS, accountability_framework) :-
    quality_management_system(QMS).

% provenance
provenance(quality_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(required_quality_management_system/2, 'celex:32024R1689/oj#art_17').
provenance(required_quality_management_aspect/2, 'celex:32024R1689/oj#art_17').
provenance(proportionate_to_size_applies/1, 'celex:32024R1689/oj#art_17').
provenance(financial_institution/1, 'celex:32024R1689/oj#art_17').
provenance(exempt_quality_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_17').

% references
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
