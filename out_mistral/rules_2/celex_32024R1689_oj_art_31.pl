% unit       : celex:32024R1689/oj#art_31
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : ec754106daa7ead8deb29d5bb9a0dd14c2abfe980c7dba560ba0d1b3bb024f9d
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 73555c095f3e8e22886b8fa6cf7b69ce77f794cd0f906bbfbb61cbf214b8acba
% cached     : False
% title      : Requirements relating to notified bodies
:- pred established_under_national_law/1, gloss('notified body established under national law of a Member State'), source('celex:32024R1689/oj#art_31').
:- pred has_legal_personality/1, gloss('notified body has legal personality'), source('celex:32024R1689/oj#art_31').
:- pred satisfies_organisational_requirements/1, gloss('notified body satisfies organisational, quality management, resources and process requirements'), source('celex:32024R1689/oj#art_31').
:- pred suitable_cybersecurity_requirements/1, gloss('notified body satisfies suitable cybersecurity requirements'), source('celex:32024R1689/oj#art_31').
:- pred structure_ensures_confidence/1, gloss('organisational structure, allocation of responsibilities, reporting lines and operation ensure confidence in performance and results'), source('celex:32024R1689/oj#art_31').
:- pred independent_of_provider/2, gloss('notified body independent of provider of high-risk AI system'), source('celex:32024R1689/oj#art_31').
:- pred independent_of_economic_interest_operator/2, gloss('notified body independent of any other operator having economic interest in assessed high-risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred independent_of_competitors/2, gloss('notified body independent of competitors of the provider'), source('celex:32024R1689/oj#art_31').
:- pred use_of_assessed_systems_permitted/2, gloss('use of assessed high-risk AI systems permitted for operations of conformity assessment body or personal purposes'), source('celex:32024R1689/oj#art_31').
:- pred not_directly_involved_in_design/2, gloss('conformity assessment body, top-level management or personnel not directly involved in design of high-risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred not_directly_involved_in_development/2, gloss('conformity assessment body, top-level management or personnel not directly involved in development of high-risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred not_directly_involved_in_marketing/2, gloss('conformity assessment body, top-level management or personnel not directly involved in marketing of high-risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred not_directly_involved_in_use/2, gloss('conformity assessment body, top-level management or personnel not directly involved in use of high-risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred does_not_represent_parties/2, gloss('conformity assessment body, top-level management or personnel does not represent parties engaged in design, development, marketing or use'), source('celex:32024R1689/oj#art_31').
:- pred no_conflicting_activity/2, gloss('conformity assessment body, top-level management or personnel does not engage in activity conflicting with independence of judgement or integrity'), source('celex:32024R1689/oj#art_31').
:- pred no_consultancy_services/1, gloss('conformity assessment body, top-level management or personnel does not engage in consultancy services'), source('celex:32024R1689/oj#art_31').
:- pred safeguards_independence_objectivity_impartiality/1, gloss('notified body organised and operated to safeguard independence, objectivity and impartiality'), source('celex:32024R1689/oj#art_31').
:- pred documented_impartiality_procedures/1, gloss('notified body documents and implements structure and procedures to safeguard impartiality'), source('celex:32024R1689/oj#art_31').
:- pred confidentiality_procedures/1, gloss('notified body has documented procedures ensuring confidentiality of information'), source('celex:32024R1689/oj#art_31').
:- pred professional_secrecy_observed/1, gloss('staff of notified body bound to observe professional secrecy'), source('celex:32024R1689/oj#art_31').
:- pred procedures_account_for_provider_size/2, gloss('notified body procedures take due account of size of provider, sector, structure and degree of complexity of AI system'), source('celex:32024R1689/oj#art_31').
:- pred liability_insurance_or_state_assumption/1, gloss('notified body has appropriate liability insurance or liability assumed by Member State'), source('celex:32024R1689/oj#art_31').
:- pred highest_professional_integrity/1, gloss('notified body capable of carrying out all tasks with highest degree of professional integrity and requisite competence'), source('celex:32024R1689/oj#art_31').
:- pred sufficient_internal_competences/1, gloss('notified body has sufficient internal competences to evaluate tasks conducted by external parties'), source('celex:32024R1689/oj#art_31').
:- pred permanent_availability_of_personnel/1, gloss('notified body has permanent availability of sufficient administrative, technical, legal and scientific personnel'), source('celex:32024R1689/oj#art_31').
:- pred personnel_experience_knowledge_data/1, gloss('personnel possess experience and knowledge relating to data and data computing'), source('celex:32024R1689/oj#art_31').
:- pred personnel_experience_knowledge_requirements/1, gloss('personnel possess experience and knowledge relating to requirements set out in Chapter III Section 2'), source('celex:32024R1689/oj#art_31').
:- pred participates_in_coordination_activities/1, gloss('notified body participates in coordination activities referred to in Article 38'), source('celex:32024R1689/oj#art_31').
:- pred participates_in_standardisation/1, gloss('notified body takes part directly or is represented in European standardisation organisations'), source('celex:32024R1689/oj#art_31').
:- pred aware_of_relevant_standards/1, gloss('notified body is aware and up to date in respect of relevant standards'), source('celex:32024R1689/oj#art_31').

must_be_established_under_national_law(B, M) :-
    notified_body(B),
    member_state(M),
    established_under_national_law(B).

must_have_legal_personality(B) :-
    notified_body(B),
    has_legal_personality(B).

must_satisfy_organisational_requirements(B) :-
    notified_body(B),
    satisfies_organisational_requirements(B).

must_satisfy_cybersecurity_requirements(B) :-
    notified_body(B),
    suitable_cybersecurity_requirements(B).

must_ensure_confidence_in_performance(B) :-
    notified_body(B),
    structure_ensures_confidence(B).

must_be_independent_of_provider(B, P) :-
    notified_body(B),
    provider(P),
    high_risk_ai_system(S),
    conformity_assessment_activities(B, S),
    independent_of_provider(B, P).

must_be_independent_of_economic_interest_operator(B, O) :-
    notified_body(B),
    operator(O),
    high_risk_ai_system(S),
    conformity_assessment_activities(B, S),
    independent_of_economic_interest_operator(B, O).

must_be_independent_of_competitors(B, P) :-
    notified_body(B),
    provider(P),
    independent_of_competitors(B, P).

permitted_use_of_assessed_systems(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    conformity_assessment_activities(B, S),
    use_of_assessed_systems_permitted(B, S).

permitted_use_of_assessed_systems(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    conformity_assessment_activities(B, S),
    personal_purposes(B, S).

must_not_be_directly_involved_in_design(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    not_directly_involved_in_design(B, S).

must_not_be_directly_involved_in_development(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    not_directly_involved_in_development(B, S).

must_not_be_directly_involved_in_marketing(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    not_directly_involved_in_marketing(B, S).

must_not_be_directly_involved_in_use(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    not_directly_involved_in_use(B, S).

must_not_represent_parties(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    does_not_represent_parties(B, S).

must_not_engage_in_conflicting_activity(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    no_conflicting_activity(B, S).

must_not_provide_consultancy_services(B) :-
    notified_body(B),
    no_consultancy_services(B).

must_safeguard_independence_objectivity_impartiality(B) :-
    notified_body(B),
    safeguards_independence_objectivity_impartiality(B).

must_document_and_implement_impartiality_procedures(B) :-
    notified_body(B),
    documented_impartiality_procedures(B).

must_maintain_confidentiality(B) :-
    notified_body(B),
    confidentiality_procedures(B).

must_observe_professional_secrecy(B) :-
    notified_body(B),
    professional_secrecy_observed(B).

must_take_account_of_provider_size(B, P) :-
    notified_body(B),
    provider(P),
    procedures_account_for_provider_size(B, P).

must_have_liability_insurance_or_state_assumption(B) :-
    notified_body(B),
    liability_insurance_or_state_assumption(B).

must_carry_out_tasks_with_professional_integrity(B) :-
    notified_body(B),
    highest_professional_integrity(B).

must_have_sufficient_internal_competences(B) :-
    notified_body(B),
    sufficient_internal_competences(B).

must_have_permanent_availability_of_personnel(B) :-
    notified_body(B),
    permanent_availability_of_personnel(B).

must_have_personnel_with_experience_knowledge_data(B) :-
    notified_body(B),
    personnel_experience_knowledge_data(B).

must_have_personnel_with_experience_knowledge_requirements(B) :-
    notified_body(B),
    personnel_experience_knowledge_requirements(B).

must_participate_in_coordination_activities(B) :-
    notified_body(B),
    participates_in_coordination_activities(B).

must_participate_in_standardisation_or_be_aware(B) :-
    notified_body(B),
    participates_in_standardisation(B).

must_participate_in_standardisation_or_be_aware(B) :-
    notified_body(B),
    aware_of_relevant_standards(B).

provenance(established_under_national_law/1, 'celex:32024R1689/oj#art_31').
provenance(has_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(suitable_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(structure_ensures_confidence/1, 'celex:32024R1689/oj#art_31').
provenance(independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(independent_of_economic_interest_operator/2, 'celex:32024R1689/oj#art_31').
provenance(independent_of_competitors/2, 'celex:32024R1689/oj#art_31').
provenance(use_of_assessed_systems_permitted/2, 'celex:32024R1689/oj#art_31').
provenance(not_directly_involved_in_design/2, 'celex:32024R1689/oj#art_31').
provenance(not_directly_involved_in_development/2, 'celex:32024R1689/oj#art_31').
provenance(not_directly_involved_in_marketing/2, 'celex:32024R1689/oj#art_31').
provenance(not_directly_involved_in_use/2, 'celex:32024R1689/oj#art_31').
provenance(does_not_represent_parties/2, 'celex:32024R1689/oj#art_31').
provenance(no_conflicting_activity/2, 'celex:32024R1689/oj#art_31').
provenance(no_consultancy_services/1, 'celex:32024R1689/oj#art_31').
provenance(safeguards_independence_objectivity_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(documented_impartiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(professional_secrecy_observed/1, 'celex:32024R1689/oj#art_31').
provenance(procedures_account_for_provider_size/2, 'celex:32024R1689/oj#art_31').
provenance(liability_insurance_or_state_assumption/1, 'celex:32024R1689/oj#art_31').
provenance(highest_professional_integrity/1, 'celex:32024R1689/oj#art_31').
provenance(sufficient_internal_competences/1, 'celex:32024R1689/oj#art_31').
provenance(permanent_availability_of_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(personnel_experience_knowledge_data/1, 'celex:32024R1689/oj#art_31').
provenance(personnel_experience_knowledge_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(participates_in_coordination_activities/1, 'celex:32024R1689/oj#art_31').
provenance(participates_in_standardisation/1, 'celex:32024R1689/oj#art_31').
provenance(aware_of_relevant_standards/1, 'celex:32024R1689/oj#art_31').
provenance(must_be_established_under_national_law/2, 'celex:32024R1689/oj#art_31').
provenance(must_have_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_ensure_confidence_in_performance/1, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_economic_interest_operator/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_competitors/2, 'celex:32024R1689/oj#art_31').
provenance(permitted_use_of_assessed_systems/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved_in_design/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved_in_development/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved_in_marketing/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved_in_use/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_represent_parties/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_engage_in_conflicting_activity/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_provide_consultancy_services/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_independence_objectivity_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(must_document_and_implement_impartiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(must_maintain_confidentiality/1, 'celex:32024R1689/oj#art_31').
provenance(must_observe_professional_secrecy/1, 'celex:32024R1689/oj#art_31').
provenance(must_take_account_of_provider_size/2, 'celex:32024R1689/oj#art_31').
provenance(must_have_liability_insurance_or_state_assumption/1, 'celex:32024R1689/oj#art_31').
provenance(must_carry_out_tasks_with_professional_integrity/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_sufficient_internal_competences/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_permanent_availability_of_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_personnel_with_experience_knowledge_data/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_personnel_with_experience_knowledge_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_coordination_activities/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_standardisation_or_be_aware/1, 'celex:32024R1689/oj#art_31').

references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').
