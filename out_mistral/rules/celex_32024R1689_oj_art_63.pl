% unit       : celex:32024R1689/oj#art_63
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : d94dfd8865e8ac74711c203a1e3f75f2e8430431377dc8c40bff16418e24d26e
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d5d9553cc7f11bab7e210b9204ef6759bfc9d7ca14daa4143b993a23fdb6ee14
% cached     : False
% title      : Derogations for specific operators
:- pred microenterprise/1, gloss('microenterprise within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred partner_enterprise/1, gloss('partner enterprise within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred linked_enterprise/1, gloss('linked enterprise within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred simplified_quality_management_compliance/1, gloss('compliance with certain elements of quality management system in a simplified manner'), source('celex:32024R1689/oj#art_63').
:- pred exempt_from_requirement/2, gloss('operator exempt from fulfilling a specific requirement'), source('celex:32024R1689/oj#art_63').

simplified_quality_management_compliance(O) :-
    microenterprise(O),
    provider(O),
    \+ has_partner_enterprise(O),
    \+ has_linked_enterprise(O).

has_partner_enterprise(O) :-
    microenterprise(O),
    partner_enterprise(P),
    enterprise_relation(O, P).

has_linked_enterprise(O) :-
    microenterprise(O),
    linked_enterprise(L),
    enterprise_relation(O, L).

enterprise_relation(_O, _E).

exempt_from_requirement(O, quality_management_system_elements) :-
    simplified_quality_management_compliance(O).

must_comply(O, other_requirements) :-
    simplified_quality_management_compliance(O).

must_comply(O, requirements(art_9)) :-
    simplified_quality_management_compliance(O).

must_comply(O, requirements(art_10)) :-
    simplified_quality_management_compliance(O).

must_comply(O, requirements(art_11)) :-
    simplified_quality_management_compliance(O).

must_comply(O, requirements(art_12)) :-
    simplified_quality_management_compliance(O).

must_comply(O, requirements(art_13)) :-
    simplified_quality_management_compliance(O).

must_comply(O, requirements(art_14)) :-
    simplified_quality_management_compliance(O).

must_comply(O, requirements(art_15)) :-
    simplified_quality_management_compliance(O).

must_comply(O, requirements(art_72)) :-
    simplified_quality_management_compliance(O).

must_comply(O, requirements(art_73)) :-
    simplified_quality_management_compliance(O).

must_develop_guidelines(ai_office, simplified_quality_management_elements(microenterprise)).

provenance(microenterprise/1, 'celex:32024R1689/oj#art_63').
provenance(partner_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(linked_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(simplified_quality_management_compliance/1, 'celex:32024R1689/oj#art_63').
provenance(exempt_from_requirement/2, 'celex:32024R1689/oj#art_63').
provenance(has_partner_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(has_linked_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(enterprise_relation/2, 'celex:32024R1689/oj#art_63').
provenance(must_comply/2, 'celex:32024R1689/oj#art_63').
provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_63').

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
