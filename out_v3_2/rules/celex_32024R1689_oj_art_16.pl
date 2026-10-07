% unit      : celex:32024R1689/oj#art_16
% source    : celex:32024R1689%2Foj#art_16.xml
% model     : gpt-oss:120b-cloud
% prompt sha: 68b197e2c4501af219104703860e7a439dcf36ed5cdbb616e57526c31d022fec
% signature: 5a505f3da956f61957e66c01dbcf90e9fc05776918032a15a3fc75b49d8c5e61
% cached    : False
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk under the Regulation'), source('derived').

high_risk_ai_system(S) :-
    ai_system(S).

required_compliance_with_requirements(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

provenance(required_compliance_with_requirements/2, 'celex:32024R1689/oj#art_16').

required_indication_of_contact_details(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

provenance(required_indication_of_contact_details/2, 'celex:32024R1689/oj#art_16').

required_quality_management_system(Provider) :-
    provider(Provider).

provenance(required_quality_management_system/1, 'celex:32024R1689/oj#art_16').

required_keeping_of_documentation(Provider) :-
    provider(Provider).

provenance(required_keeping_of_documentation/1, 'celex:32024R1689/oj#art_16').

required_keeping_of_logs(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

provenance(required_keeping_of_logs/2, 'celex:32024R1689/oj#art_16').

required_conformity_assessment_before_market(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

provenance(required_conformity_assessment_before_market/2, 'celex:32024R1689/oj#art_16').

required_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

provenance(required_declaration_of_conformity/2, 'celex:32024R1689/oj#art_16').

required_affix_ce_marking(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

provenance(required_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').

required_registration_obligations(Provider) :-
    provider(Provider).

provenance(required_registration_obligations/1, 'celex:32024R1689/oj#art_16').

required_corrective_actions_and_information(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

provenance(required_corrective_actions_and_information/2, 'celex:32024R1689/oj#art_16').

required_demonstration_of_conformity_on_request(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

provenance(required_demonstration_of_conformity_on_request/2, 'celex:32024R1689/oj#art_16').

required_accessibility_compliance(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

provenance(required_accessibility_compliance/2, 'celex:32024R1689/oj#art_16').

%--- References ---
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_16', 'celex:32016L2102/oj').
references('celex:32024R1689/oj#art_16', 'celex:32019L0882/oj').
