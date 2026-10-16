% unit       : celex:32024R1689/oj#art_63
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : d94dfd8865e8ac74711c203a1e3f75f2e8430431377dc8c40bff16418e24d26e
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : f7201b0d5278ba8386455cfc0d2ed7573d7c786b1c5fe21f4f55729ecd09e7e5
% cached     : False
% title      : Derogations for specific operators
:- pred microenterprise/1, gloss('microenterprise within the meaning of Commission Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred partner_or_linked_enterprise/1, gloss('partner enterprise or linked enterprise within the meaning of Commission Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred simplified_quality_management_system_applies/1, gloss('quality management system may be complied with in a simplified manner'), source('celex:32024R1689/oj#art_63').

simplified_quality_management_system_applies(M) :-
    microenterprise(M),
    \+ partner_or_linked_enterprise(M).

must_adopt_implementing_acts(commission, guidelines(simplified_quality_management_system_elements, microenterprise_needs)) :-
    true.

provenance(simplified_quality_management_system_applies/1, 'celex:32024R1689/oj#art_63').
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_63').

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
