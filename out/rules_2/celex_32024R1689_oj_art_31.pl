% unit       : celex:32024R1689/oj#art_31
% title      : Requirements relating to notified bodies
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : ec754106daa7ead8deb29d5bb9a0dd14c2abfe980c7dba560ba0d1b3bb024f9d
% model      : gpt-oss:120b-cloud
% prompt sha : 5cd75ed586b905fe9b855accabc5012a3c6b1ef7a240a8a821f4c86415d12ad6
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_establishment_under_national_law/1, gloss('notified body must be established under national law of a Member State'), source('celex:32024R1689/oj#art_31').
:- pred required_legal_personality/1, gloss('notified body must have legal personality'), source('celex:32024R1689/oj#art_31').
:- pred required_organisational_requirements/1, gloss('notified body must satisfy organisational requirements necessary to fulfil its tasks'), source('celex:32024R1689/oj#art_31').
:- pred required_quality_management_requirements/1, gloss('notified body must satisfy quality management requirements necessary to fulfil its tasks'), source('celex:32024R1689/oj#art_31').
:- pred required_resources_requirements/1, gloss('notified body must satisfy resources requirements necessary to fulfil its tasks'), source('celex:32024R1689/oj#art_31').
:- pred required_process_requirements/1, gloss('notified body must satisfy process requirements necessary to fulfil its tasks'), source('celex:32024R1689/oj#art_31').
:- pred required_cybersecurity_requirements/1, gloss('notified body must satisfy suitable cybersecurity requirements'), source('celex:32024R1689/oj#art_31').
:- pred required_confidence_in_performance/1, gloss('organisational structure of notified body must ensure confidence in its performance'), source('celex:32024R1689/oj#art_31').
:- pred required_confidence_in_assessment_results/1, gloss('organisational structure of notified body must ensure confidence in conformity assessment results'), source('celex:32024R1689/oj#art_31').
:- pred required_independence_from_provider/2, gloss('notified body must be independent of the provider of a high‑risk AI system'), source('celex:32024R1689/oj#art_31').
:- pred required_independence_from_operator/2, gloss('notified body must be independent of any operator having an economic interest in high‑risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred required_independence_from_competitor/2, gloss('notified body must be independent of any competitor of the provider'), source('celex:32024R1689/oj#art_31').
:- pred exempt_use_of_assessed_system_for_operations/2, gloss('use of assessed high‑risk AI system necessary for the operations of the notified body is exempt from independence restriction'), source('celex:32024R1689/oj#art_31').
:- pred exempt_use_of_assessed_system_for_personal_purposes/2, gloss('use of assessed high‑risk AI system for personal purposes is exempt from independence restriction'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_involvement_in_design_development_marketing_use/1, gloss('notified body and its personnel shall not be involved in design, development, marketing or use of high‑risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_conflict_of_interest/1, gloss('notified body shall not engage in any activity that might conflict with its independence or integrity'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_consultancy_services/1, gloss('notified body shall not provide consultancy services that could affect its independence'), source('celex:32024R1689/oj#art_31').
:- pred required_safeguard_independence_objectivity_impartiality/1, gloss('notified body must safeguard independence, objectivity and impartiality of its activities'), source('celex:32024R1689/oj#art_31').
:- pred required_documented_impartiality_procedures/1, gloss('notified body must document and implement procedures to safeguard impartiality'), source('celex:32024R1689/oj#art_31').
:- pred required_confidentiality_procedures/1, gloss('notified body must have documented procedures to maintain confidentiality of information'), source('celex:32024R1689/oj#art_31').
:- pred required_professional_secrecy/1, gloss('staff of notified body must observe professional secrecy'), source('celex:32024R1689/oj#art_31').
:- pred exempt_disclosure_when_required_by_law/1, gloss('confidentiality may be breached when disclosure is required by law'), source('celex:32024R1689/oj#art_31').
:- pred required_procedures_accounting_for_provider_characteristics/1, gloss('notified body must have procedures that take account of provider size, sector, structure and AI system complexity'), source('celex:32024R1689/oj#art_31').
:- pred required_liability_insurance/1, gloss('notified body must take out appropriate liability insurance for its conformity assessment activities'), source('celex:32024R1689/oj#art_31').
:- pred exempt_liability_insurance_when_state_assumes/1, gloss('liability insurance not required when liability is assumed by the Member State'), source('celex:32024R1689/oj#art_31').
:- pred required_capability_with_integrity_and_competence/1, gloss('notified body must be capable of performing tasks with highest professional integrity and requisite competence'), source('celex:32024R1689/oj#art_31').
:- pred required_sufficient_internal_competences/1, gloss('notified body must have sufficient internal competences and permanent availability of qualified personnel'), source('celex:32024R1689/oj#art_31').
:- pred required_participation_in_coordination/1, gloss('notified body must participate in coordination activities'), source('celex:32024R1689/oj#art_31').
:- pred required_engagement_in_standardisation/1, gloss('notified body must take part in European standardisation organisations or stay up‑to‑date with relevant standards'), source('celex:32024R1689/oj#art_31').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_31').

required_establishment_under_national_law(NB) :-
    notified_body(NB).

required_legal_personality(NB) :-
    notified_body(NB).

required_organisational_requirements(NB) :-
    notified_body(NB).

required_quality_management_requirements(NB) :-
    notified_body(NB).

required_resources_requirements(NB) :-
    notified_body(NB).

required_process_requirements(NB) :-
    notified_body(NB).

required_cybersecurity_requirements(NB) :-
    notified_body(NB).

required_confidence_in_performance(NB) :-
    notified_body(NB).

required_confidence_in_assessment_results(NB) :-
    notified_body(NB).

required_independence_from_provider(NB, P) :-
    notified_body(NB),
    provider(P).

required_independence_from_operator(NB, O) :-
    notified_body(NB),
    operator(O).

required_independence_from_competitor(NB, C) :-
    notified_body(NB),
    provider(C).

exempt_use_of_assessed_system_for_operations(NB, S) :-
    notified_body(NB),
    high_risk_ai_system(S).

exempt_use_of_assessed_system_for_personal_purposes(NB, S) :-
    notified_body(NB),
    high_risk_ai_system(S).

prohibited_involvement_in_design_development_marketing_use(NB) :-
    notified_body(NB).

prohibited_conflict_of_interest(NB) :-
    notified_body(NB).

prohibited_consultancy_services(NB) :-
    notified_body(NB).

required_safeguard_independence_objectivity_impartiality(NB) :-
    notified_body(NB).

required_documented_impartiality_procedures(NB) :-
    notified_body(NB).

required_confidentiality_procedures(NB) :-
    notified_body(NB).

required_professional_secrecy(NB) :-
    notified_body(NB).

exempt_disclosure_when_required_by_law(NB) :-
    notified_body(NB).

required_procedures_accounting_for_provider_characteristics(NB) :-
    notified_body(NB).

required_liability_insurance(NB) :-
    notified_body(NB).

exempt_liability_insurance_when_state_assumes(NB) :-
    notified_body(NB).

required_capability_with_integrity_and_competence(NB) :-
    notified_body(NB).

required_sufficient_internal_competences(NB) :-
    notified_body(NB).

required_participation_in_coordination(NB) :-
    notified_body(NB).

required_engagement_in_standardisation(NB) :-
    notified_body(NB).

provenance(required_establishment_under_national_law/1, 'celex:32024R1689/oj#art_31').
provenance(required_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(required_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_quality_management_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_resources_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_process_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_confidence_in_performance/1, 'celex:32024R1689/oj#art_31').
provenance(required_confidence_in_assessment_results/1, 'celex:32024R1689/oj#art_31').
provenance(required_independence_from_provider/2, 'celex:32024R1689/oj#art_31').
provenance(required_independence_from_operator/2, 'celex:32024R1689/oj#art_31').
provenance(required_independence_from_competitor/2, 'celex:32024R1689/oj#art_31').
provenance(exempt_use_of_assessed_system_for_operations/2, 'celex:32024R1689/oj#art_31').
provenance(exempt_use_of_assessed_system_for_personal_purposes/2, 'celex:32024R1689/oj#art_31').
provenance(prohibited_involvement_in_design_development_marketing_use/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_conflict_of_interest/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_consultancy_services/1, 'celex:32024R1689/oj#art_31').
provenance(required_safeguard_independence_objectivity_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(required_documented_impartiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(required_confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(required_professional_secrecy/1, 'celex:32024R1689/oj#art_31').
provenance(exempt_disclosure_when_required_by_law/1, 'celex:32024R1689/oj#art_31').
provenance(required_procedures_accounting_for_provider_characteristics/1, 'celex:32024R1689/oj#art_31').
provenance(required_liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(exempt_liability_insurance_when_state_assumes/1, 'celex:32024R1689/oj#art_31').
provenance(required_capability_with_integrity_and_competence/1, 'celex:32024R1689/oj#art_31').
provenance(required_sufficient_internal_competences/1, 'celex:32024R1689/oj#art_31').
provenance(required_participation_in_coordination/1, 'celex:32024R1689/oj#art_31').
provenance(required_engagement_in_standardisation/1, 'celex:32024R1689/oj#art_31').

references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
