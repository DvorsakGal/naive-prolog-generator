% unit       : celex:32024R1689/oj#art_63
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : d94dfd8865e8ac74711c203a1e3f75f2e8430431377dc8c40bff16418e24d26e
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3107898e89bc58edab4148ce4e963a38ff2cfe5a610861c8ed223db27db626cc
% cached     : False
% title      : Derogations for specific operators
:- pred microenterprise/1, gloss('microenterprise as defined in the Commission Recommendation'), source('celex:32003H0361/oj').
:- pred partner_enterprise/2, gloss('partner enterprise relationship'), source('celex:32003H0361/oj').
:- pred linked_enterprise/2, gloss('linked enterprise relationship'), source('celex:32003H0361/oj').
:- pred permitted_simplified_quality_management_compliance/1, gloss('permission for a microenterprise to comply with the quality‑management system in a simplified manner'), source('celex:32024R1689/oj#art_63').
:- pred must_develop/2, gloss('obligation to develop something'), source('celex:32024R1689/oj#art_63').
:- pred prohibited_exempting_operators/1, gloss('prohibition of interpreting the provision as exempting operators from other requirements'), source('celex:32024R1689/oj#art_63').

% partner and linked enterprises are defined as always failing (no such relationships)
partner_enterprise(_,_) :- false.
linked_enterprise(_,_) :- false.

permitted_simplified_quality_management_compliance(M) :-
    microenterprise(M),
    \+ partner_enterprise(M,_),
    \+ linked_enterprise(M,_).

must_develop(commission, guidelines(quality_management_system_simplified)).

prohibited_exempting_operators(art_63_par_1).

% Provenance
provenance(microenterprise/1, 'celex:32024R1689/oj#art_63').
provenance(partner_enterprise/2, 'celex:32024R1689/oj#art_63').
provenance(linked_enterprise/2, 'celex:32024R1689/oj#art_63').
provenance(permitted_simplified_quality_management_compliance/1, 'celex:32024R1689/oj#art_63').
provenance(must_develop/2, 'celex:32024R1689/oj#art_63').
provenance(prohibited_exempting_operators/1, 'celex:32024R1689/oj#art_63').

% References
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
