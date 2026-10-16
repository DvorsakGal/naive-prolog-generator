% unit       : celex:32024R1689/oj#art_63
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : d94dfd8865e8ac74711c203a1e3f75f2e8430431377dc8c40bff16418e24d26e
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 95c2b4085c8c209e54ac8ea4336b5d0c68ab1e43cc5b9939bff2d8fd089d088f
% cached     : False
% title      : Derogations for specific operators
:- pred microenterprise/1, gloss('enterprise within the meaning of Commission Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred partner_or_linked_enterprise/1, gloss('partner enterprise or linked enterprise within the meaning of Commission Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred simplified_quality_management_system/1, gloss('quality management system complied with in a simplified manner'), source('celex:32024R1689/oj#art_63').
:- pred must_develop_guidelines/2, gloss('Commission shall develop guidelines'), source('celex:32024R1689/oj#art_63').

simplified_quality_management_system_applies(O) :-
    microenterprise(O),
    \+ partner_or_linked_enterprise(O).

must_comply_with_quality_management_system(O, simplified) :-
    microenterprise(O),
    \+ partner_or_linked_enterprise(O).

must_develop_guidelines(commission, quality_management_system_elements_for_microenterprises).

provenance(microenterprise/1, 'celex:32024R1689/oj#art_63').
provenance(partner_or_linked_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(simplified_quality_management_system_applies/1, 'celex:32024R1689/oj#art_63').
provenance(must_comply_with_quality_management_system/2, 'celex:32024R1689/oj#art_63').
provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_63').

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
