% unit       : celex:32024R1689/oj#art_63
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : d94dfd8865e8ac74711c203a1e3f75f2e8430431377dc8c40bff16418e24d26e
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f8fdc0bc8f5a73aa6b9ac8c65a111cf8977d93a90abd23a49bfb568946e41e1d
% cached     : False
% title      : Derogations for specific operators
:- pred microenterprise/1, gloss('enterprise qualifying as a microenterprise'), source('celex:32024R1689/oj#art_63').
:- pred partner_enterprise/1, gloss('enterprise having partner enterprises'), source('celex:32024R1689/oj#art_63').
:- pred linked_enterprise/1, gloss('enterprise having linked enterprises'), source('celex:32024R1689/oj#art_63').
:- pred permitted_simplified_compliance/2, gloss('operator may comply with quality management system elements in a simplified manner'), source('celex:32024R1689/oj#art_63').
:- pred must_develop/2, gloss('an entity is obliged to develop something'), source('celex:32024R1689/oj#art_63').
:- pred commission/1, gloss('the European Commission'), source('celex:32024R1689/oj#art_63').

permitted_simplified_compliance(Operator, quality_management_system) :-
    microenterprise(Operator),
    \+ partner_enterprise(Operator),
    \+ linked_enterprise(Operator).

must_develop(commission, guidelines(simplified_quality_management_system)).

provenance(permitted_simplified_compliance/2, 'celex:32024R1689/oj#art_63').
provenance(must_develop/2, 'celex:32024R1689/oj#art_63').

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
