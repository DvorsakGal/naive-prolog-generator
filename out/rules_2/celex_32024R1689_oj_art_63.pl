% unit       : celex:32024R1689/oj#art_63
% title      : Derogations for specific operators
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : d94dfd8865e8ac74711c203a1e3f75f2e8430431377dc8c40bff16418e24d26e
% model      : gpt-oss:120b-cloud
% prompt sha : d03572bbc62cccf3f0a95bdffa4fe078fcbcc04855003a7ccbf5eff625265362
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred microenterprise/1, gloss('microenterprise operator'), source('celex:32024R1689/oj#art_63').
:- pred partner_enterprise/1, gloss('partner enterprise of a microenterprise'), source('celex:32024R1689/oj#art_63').
:- pred linked_enterprise/1, gloss('linked enterprise of a microenterprise'), source('celex:32024R1689/oj#art_63').
:- pred qms_element/1, gloss('element of the quality management system'), source('celex:32024R1689/oj#art_63').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_63').

:- pred considering_needs_of_microenterprises/1, gloss('consideration of microenterprise needs'), source('celex:32024R1689/oj#art_63').
:- pred without_affecting_protection/1, gloss('no impact on level of protection'), source('celex:32024R1689/oj#art_63').
:- pred without_affecting_high_risk_requirements/1, gloss('no impact on high‑risk AI system requirements'), source('celex:32024R1689/oj#art_63').

:- pred permitted_simplified_compliance/2, gloss('permission for microenterprises to comply with QMS elements in a simplified manner'), source('celex:32024R1689/oj#art_63').
:- pred must_develop_guidelines/2, gloss('obligation for the Commission to develop guidelines for simplified QMS compliance'), source('celex:32024R1689/oj#art_63').
:- pred prohibited_exemption_from_other_requirements/1, gloss('prohibition of exemption from other regulatory obligations'), source('celex:32024R1689/oj#art_63').

permitted_simplified_compliance(O, E) :-
    microenterprise(O),
    qms_element(E),
    qms_element(E),
    \+ partner_enterprise(O),
    \+ linked_enterprise(O).

must_develop_guidelines(C, simplified_qms_elements) :-
    commission(C),
    considering_needs_of_microenterprises(C),
    without_affecting_protection(C),
    without_affecting_high_risk_requirements(C).

prohibited_exemption_from_other_requirements(O) :-
    microenterprise(O),
    microenterprise(O).

considering_needs_of_microenterprises(C) :-
    commission(C),
    commission(C).

without_affecting_protection(C) :-
    commission(C),
    commission(C).

without_affecting_high_risk_requirements(C) :-
    commission(C),
    commission(C).

provenance(permitted_simplified_compliance/2, 'celex:32024R1689/oj#art_63').
provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_63').
provenance(prohibited_exemption_from_other_requirements/1, 'celex:32024R1689/oj#art_63').
provenance(considering_needs_of_microenterprises/1, 'celex:32024R1689/oj#art_63').
provenance(without_affecting_protection/1, 'celex:32024R1689/oj#art_63').
provenance(without_affecting_high_risk_requirements/1, 'celex:32024R1689/oj#art_63').

references('celex:32024R1689/oj#art_63', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_63/par_1').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_10').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_73').
