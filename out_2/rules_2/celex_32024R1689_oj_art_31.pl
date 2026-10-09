% unit       : celex:32024R1689/oj#art_31
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : ec754106daa7ead8deb29d5bb9a0dd14c2abfe980c7dba560ba0d1b3bb024f9d
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 9f8cf55d5a145d6d902f2dc5c23ef2d205b2ed511062731b0c128af295974441
% cached     : False
% title      : Requirements relating to notified bodies
:- pred must_be_established/2, gloss('notified body must be established under national law of a member state'), source('celex:32024R1689/oj#art_31').
:- pred must_have_legal_personality/2, gloss('notified body must have legal personality'), source('celex:32024R1689/oj#art_31').
:- pred must_satisfy/2, gloss('notified body must satisfy specified requirements'), source('celex:32024R1689/oj#art_31').
:- pred must_ensure/2, gloss('notified body must ensure confidence in performance and conformity assessment'), source('celex:32024R1689/oj#art_31').
:- pred must_be_independent_of/2, gloss('notified body must be independent of specified parties'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_direct_involvement/1, gloss('notified body must not be directly involved in design, development, marketing or use of high‑risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_representation/1, gloss('notified body must not represent parties engaged in design, development, marketing or use'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_conflict_of_interest/1, gloss('notified body must not engage in activities that could conflict with independence or integrity'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_consultancy_services/1, gloss('notified body must not provide consultancy services'), source('celex:32024R1689/oj#art_31').
:- pred must_safeguard/2, gloss('notified body must safeguard independence, objectivity and impartiality'), source('celex:32024R1689/oj#art_31').
:- pred must_document_and_implement/2, gloss('notified body must document and implement structures and procedures to safeguard impartiality'), source('celex:32024R1689/oj#art_31').
:- pred must_have_confidentiality_procedures/1, gloss('notified body must have documented procedures to maintain confidentiality'), source('celex:32024R1689/oj#art_31').
:- pred must_observe_professional_secrecy/1, gloss('notified body staff must observe professional secrecy'), source('celex:32024R1689/oj#art_31').
:- pred must_have_procedures_considering/2, gloss('notified body must have procedures taking account of provider size, sector, structure and AI system complexity'), source('celex:32024R1689/oj#art_31').
:- pred must_have/2, gloss('notified body must have specified element'), source('celex:32024R1689/oj#art_31').
:- pred must_participate_in_coordination/1, gloss('notified body must participate in coordination activities'), source('celex:32024R1689/oj#art_31').

must_be_established(NB, establishment_under_national_law(MS)) :-
    notified_body(NB),
    member_state(MS).

must_have_legal_personality(NB, legal_personality) :-
    notified_body(NB).

must_satisfy(NB, organisational_requirements) :-
    notified_body(NB).

must_satisfy(NB, quality_management_requirements) :-
    notified_body(NB).

must_satisfy(NB, resources_requirements) :-
    notified_body(NB).

must_satisfy(NB, process_requirements) :-
    notified_body(NB).

must_satisfy(NB, cybersecurity_requirements) :-
    notified_body(NB).

must_ensure(NB, confidence_in_performance_and_conformity_assessment) :-
    notified_body(NB).

must_be_independent_of(NB, Provider) :-
    notified_body(NB),
    provider(Provider),
    high_risk_ai_system(_).

must_be_independent_of(NB, Operator) :-
    notified_body(NB),
    operator(Operator),
    high_risk_ai_system(_).

must_be_independent_of(NB, Competitor) :-
    notified_body(NB),
    provider(Competitor),
    high_risk_ai_system(_).

prohibited_direct_involvement(NB) :-
    notified_body(NB).

prohibited_representation(NB) :-
    notified_body(NB).

prohibited_conflict_of_interest(NB) :-
    notified_body(NB).

prohibited_consultancy_services(NB) :-
    notified_body(NB).

must_safeguard(NB, independence_objectivity_impartiality) :-
    notified_body(NB).

must_document_and_implement(NB, impartiality_structure_and_procedures) :-
    notified_body(NB).

must_have_confidentiality_procedures(NB) :-
    notified_body(NB).

must_observe_professional_secrecy(NB) :-
    notified_body(NB).

must_have_procedures_considering(NB, provider_characteristics) :-
    notified_body(NB).

must_have(NB, liability_insurance) :-
    notified_body(NB).

must_have(NB, professional_integrity_and_competence) :-
    notified_body(NB).

must_have(NB, sufficient_internal_competences) :-
    notified_body(NB).

must_participate_in_coordination(NB) :-
    notified_body(NB).

provenance(must_be_established/2, 'celex:32024R1689/oj#art_31').
provenance(must_have_legal_personality/2, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy/2, 'celex:32024R1689/oj#art_31').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of/2, 'celex:32024R1689/oj#art_31').
provenance(prohibited_direct_involvement/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_representation/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_conflict_of_interest/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_consultancy_services/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_31').
provenance(must_document_and_implement/2, 'celex:32024R1689/oj#art_31').
provenance(must_have_confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(must_observe_professional_secrecy/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_procedures_considering/2, 'celex:32024R1689/oj#art_31').
provenance(must_have/2, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_coordination/1, 'celex:32024R1689/oj#art_31').

references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').
