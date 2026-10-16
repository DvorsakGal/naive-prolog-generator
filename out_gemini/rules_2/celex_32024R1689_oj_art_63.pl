% unit       : celex:32024R1689/oj#art_63
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : d94dfd8865e8ac74711c203a1e3f75f2e8430431377dc8c40bff16418e24d26e
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : bc3b7d6df35adc479dd59e188ffc1e5bdc4f8168d24a0f4d1618dbea0b9bc545
% cached     : False
% title      : Derogations for specific operators
:- pred microenterprise/1, gloss('enterprise is a microenterprise within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred partner_enterprise/1, gloss('enterprise has partner enterprises within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred linked_enterprise/1, gloss('enterprise has linked enterprises within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred permitted_simplified_compliance/2, gloss('operator may comply with elements of quality management system in a simplified manner'), source('celex:32024R1689/oj#art_63').
:- pred quality_management_system_element/1, gloss('element of the quality management system eligible for simplified compliance'), source('celex:32024R1689/oj#art_63').
:- pred must_develop/2, gloss('actor must develop specified measure or instrument'), source('celex:32024R1689/oj#art_63').

% Article 63(1): Microenterprises may comply with certain elements of the
% quality management system in a simplified manner, provided they do not have
% partner enterprises or linked enterprises.
permitted_simplified_compliance(Operator, quality_management_system(Element)) :-
    microenterprise(Operator),
    \+ partner_enterprise(Operator),
    \+ linked_enterprise(Operator),
    quality_management_system_element(Element).

% Commission shall develop guidelines on the elements of the quality management system
% which may be complied with in a simplified manner.
must_develop(Commission, guidelines(simplified_compliance_quality_management_system)) :-
    commission(Commission).

% Article 63(2): Paragraph 1 does not exempt operators from fulfilling other requirements
% or obligations (specifically, Articles 9 to 15, 72, 73).
must_comply(Operator, requirement(risk_management_system)) :-
    permitted_simplified_compliance(Operator, _).

must_comply(Operator, requirement(data_and_governance)) :-
    permitted_simplified_compliance(Operator, _).

must_comply(Operator, requirement(technical_documentation)) :-
    permitted_simplified_compliance(Operator, _).

must_comply(Operator, requirement(record_keeping)) :-
    permitted_simplified_compliance(Operator, _).

must_comply(Operator, requirement(transparency_and_information)) :-
    permitted_simplified_compliance(Operator, _).

must_comply(Operator, requirement(human_oversight)) :-
    permitted_simplified_compliance(Operator, _).

must_comply(Operator, requirement(accuracy_robustness_cybersecurity)) :-
    permitted_simplified_compliance(Operator, _).

must_comply(Operator, requirement(post_market_monitoring)) :-
    permitted_simplified_compliance(Operator, _).

must_comply(Operator, requirement(reporting_serious_incidents)) :-
    permitted_simplified_compliance(Operator, _).

% Provenance facts
provenance(permitted_simplified_compliance/2, 'celex:32024R1689/oj#art_63').
provenance(must_develop/2, 'celex:32024R1689/oj#art_63').
provenance(must_comply/2, 'celex:32024R1689/oj#art_63').

% Cross-references
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
