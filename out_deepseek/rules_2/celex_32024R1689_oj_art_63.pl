% unit       : celex:32024R1689/oj#art_63
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : d94dfd8865e8ac74711c203a1e3f75f2e8430431377dc8c40bff16418e24d26e
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : e0a2da1e7b9f36f7097d5c98b77e460bb64f6b941715f93e216310a33ff3c738
% cached     : False
% title      : Derogations for specific operators
:- pred microenterprise/1, gloss('microenterprise within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred has_partner_or_linked_enterprise/1, gloss('has partner enterprises or linked enterprises within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred simplified_quality_management_permitted/1, gloss('may comply with quality management system elements in a simplified manner'), source('celex:32024R1689/oj#art_63').
:- pred must_develop_guidelines/2, gloss('Commission shall develop guidelines on simplified quality management elements'), source('celex:32024R1689/oj#art_63').

simplified_quality_management_permitted(M) :-
    microenterprise(M),
    \+ has_partner_or_linked_enterprise(M).

must_develop_guidelines(Commission, simplified_quality_management) :-
    ai_office(Commission).

provenance(simplified_quality_management_permitted/1, 'celex:32024R1689/oj#art_63').
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
