% unit       : celex:32024R1689/oj#art_63
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : d94dfd8865e8ac74711c203a1e3f75f2e8430431377dc8c40bff16418e24d26e
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 1a5514b8a1a006e1a45dc719bbff3a30acdaa39ea6b71277c85aa88fb2e2b4eb
% cached     : False
% title      : Derogations for specific operators
:- pred microenterprise/1, gloss('microenterprise within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred has_partner_or_linked_enterprise/1, gloss('has partner enterprises or linked enterprises within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred permitted_simplified_quality_management_compliance/1, gloss('permitted to comply with certain elements of the quality management system in a simplified manner'), source('celex:32024R1689/oj#art_63').

permitted_simplified_quality_management_compliance(O) :-
    microenterprise(O),
    \+ has_partner_or_linked_enterprise(O).

provenance(microenterprise/1, 'celex:32024R1689/oj#art_63').
provenance(has_partner_or_linked_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(permitted_simplified_quality_management_compliance/1, 'celex:32024R1689/oj#art_63').

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
