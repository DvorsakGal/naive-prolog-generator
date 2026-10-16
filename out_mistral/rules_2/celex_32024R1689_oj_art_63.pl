% unit       : celex:32024R1689/oj#art_63
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : d94dfd8865e8ac74711c203a1e3f75f2e8430431377dc8c40bff16418e24d26e
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : c79929b3c11000f305c4160422316ca1cdee9380bb97efcbd02b4014997cef1f
% cached     : False
% title      : Derogations for specific operators
:- pred microenterprise/1, gloss('microenterprise within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred partner_enterprise/1, gloss('partner enterprise within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred linked_enterprise/1, gloss('linked enterprise within the meaning of Recommendation 2003/361/EC'), source('celex:32024R1689/oj#art_63').
:- pred has_partner_or_linked_enterprise/1, gloss('operator has partner enterprises or linked enterprises'), source('celex:32024R1689/oj#art_63').
:- pred simplified_quality_management_compliance/1, gloss('operator may comply with certain elements of quality management system in simplified manner'), source('celex:32024R1689/oj#art_63').
:- pred commission_guidelines_simplified_qms/1, gloss('Commission guidelines on simplified quality management system elements for microenterprises'), source('celex:32024R1689/oj#art_63').
:- pred derogation_does_not_exempt_other_obligations/1, gloss('derogation does not exempt operator from other requirements or obligations'), source('celex:32024R1689/oj#art_63').

has_partner_or_linked_enterprise(O) :-
    partner_enterprise(O).
has_partner_or_linked_enterprise(O) :-
    linked_enterprise(O).

simplified_quality_management_compliance(O) :-
    microenterprise(O),
    \+ has_partner_or_linked_enterprise(O).

commission_guidelines_simplified_qms(G) :-
    guidelines_on_simplified_quality_management_elements(G),
    considers_needs_of_microenterprises(G),
    does_not_affect_level_of_protection(G),
    does_not_affect_need_for_compliance_high_risk(G).

derogation_does_not_exempt_other_obligations(O) :-
    simplified_quality_management_compliance(O).

:- pred guidelines_on_simplified_quality_management_elements/1, gloss('guidelines on elements of quality management system complied with in simplified manner'), source('celex:32024R1689/oj#art_63').
:- pred considers_needs_of_microenterprises/1, gloss('guidelines consider needs of microenterprises'), source('celex:32024R1689/oj#art_63').
:- pred does_not_affect_level_of_protection/1, gloss('guidelines do not affect level of protection'), source('celex:32024R1689/oj#art_63').
:- pred does_not_affect_need_for_compliance_high_risk/1, gloss('guidelines do not affect need for compliance with high-risk AI system requirements'), source('celex:32024R1689/oj#art_63').

must_develop_guidelines(ai_office, simplified_quality_management_for_microenterprises).

must_develop_guidelines(ai_office, simplified_quality_management_for_microenterprises) :-
    commission_guidelines_simplified_qms(_G).

provenance(microenterprise/1, 'celex:32024R1689/oj#art_63').
provenance(partner_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(linked_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(has_partner_or_linked_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(simplified_quality_management_compliance/1, 'celex:32024R1689/oj#art_63').
provenance(commission_guidelines_simplified_qms/1, 'celex:32024R1689/oj#art_63').
provenance(derogation_does_not_exempt_other_obligations/1, 'celex:32024R1689/oj#art_63').
provenance(guidelines_on_simplified_quality_management_elements/1, 'celex:32024R1689/oj#art_63').
provenance(considers_needs_of_microenterprises/1, 'celex:32024R1689/oj#art_63').
provenance(does_not_affect_level_of_protection/1, 'celex:32024R1689/oj#art_63').
provenance(does_not_affect_need_for_compliance_high_risk/1, 'celex:32024R1689/oj#art_63').
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
