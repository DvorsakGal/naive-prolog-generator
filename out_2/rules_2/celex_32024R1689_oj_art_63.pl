% unit       : celex:32024R1689/oj#art_63
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : d94dfd8865e8ac74711c203a1e3f75f2e8430431377dc8c40bff16418e24d26e
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 4aefaf94ad6a578c23fe6cad94c3e62fdc8d3c780f6523f130c8f7a3b14f7b73
% cached     : False
% title      : Derogations for specific operators
:- pred microenterprise/1, gloss('microenterprise as defined in the Union regulation'), source('celex:32003H0361/oj').
:- pred partner_enterprise_applies/1, gloss('operator has a partner enterprise'), source('derived').
:- pred linked_enterprise_applies/1, gloss('operator has a linked enterprise'), source('derived').
:- pred commission/1, gloss('European Commission'), source('derived').

permitted_simplified_quality_management_compliance(Operator) :-
    microenterprise(Operator),
    \+ partner_enterprise_applies(Operator),
    \+ linked_enterprise_applies(Operator).

must_develop(CommissionActor, guidelines(simplified_quality_management_elements)) :-
    commission(CommissionActor).

prohibited_exemption_from_other_requirements(Operator) :-
    microenterprise(Operator).

provenance(permitted_simplified_quality_management_compliance/1, 'celex:32024R1689/oj#art_63').
provenance(must_develop/2, 'celex:32024R1689/oj#art_63').
provenance(prohibited_exemption_from_other_requirements/1, 'celex:32024R1689/oj#art_63').

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
