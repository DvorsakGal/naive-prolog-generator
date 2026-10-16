% unit       : celex:32024R1689/oj#art_63
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : d94dfd8865e8ac74711c203a1e3f75f2e8430431377dc8c40bff16418e24d26e
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a464148385cf6615c33671fd7d57e2e872a0a52692961b6dd2c823631e05497e
% cached     : False
% title      : Derogations for specific operators
:- pred microenterprise/1, gloss('microenterprise within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred partner_enterprise/1, gloss('partner enterprise within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred linked_enterprise/1, gloss('linked enterprise within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred quality_management_system_simplified_compliance/1, gloss('simplified compliance with certain elements of the quality management system'), source('celex:32024R1689/oj#art_63').

quality_management_system_simplified_compliance(M) :-
    microenterprise(M),
    \+ partner_enterprise(M),
    \+ linked_enterprise(M).

provenance(quality_management_system_simplified_compliance/1, 'celex:32024R1689/oj#art_63').

references('celex:32024R1689/oj#art_63', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_63/par_1').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_10').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_73').
