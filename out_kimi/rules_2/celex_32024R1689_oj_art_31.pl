% unit       : celex:32024R1689/oj#art_31
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : ec754106daa7ead8deb29d5bb9a0dd14c2abfe980c7dba560ba0d1b3bb024f9d
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : a05f1ce0879ddf0b1ced1f2a9c8029791fe44bc525757d9c39efba2b252efdf9
% cached     : False
% title      : Requirements relating to notified bodies
:- pred established_notified_body/1, gloss('notified body established under national law with legal personality'), source('celex:32024R1689/oj#art_31').
:- pred satisfies_requirements/1, gloss('notified body satisfies organisational, quality management, resources, process and cybersecurity requirements'), source('celex:32024R1689/oj#art_31').
:- pred ensures_confidence/1, gloss('notified body structure ensures confidence in performance and results'), source('celex:32024R1689/oj#art_31').
:- pred independent_of_provider/2, gloss('notified body is independent of provider for assessed system'), source('celex:32024R1689/oj#art_31').
:- pred independent_of_interested_operators/1, gloss('notified body is independent of operators with economic interest or competitors'), source('celex:32024R1689/oj#art_31').
:- pred permitted_use_of_assessed_system/1, gloss('notified body may use assessed systems for operations or personal purposes'), source('celex:32024R1689/oj#art_31').
:- pred no_conflict_of_interest/1, gloss('no direct involvement in design, development, marketing or use of high-risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred no_consultancy_conflict/1, gloss('no consultancy services that conflict with independence'), source('celex:32024R1689/oj#art_31').
:- pred safeguards_impartiality/1, gloss('notified body safeguards independence, objectivity and impartiality'), source('celex:32024R1689/oj#art_31').
:- pred documented_impartiality_procedures/1, gloss('notified body documents and implements impartiality structure and procedures'), source('celex:32024R1689/oj#art_31').
:- pred confidentiality_procedures/1, gloss('notified body has documented confidentiality procedures'), source('celex:32024R1689/oj#art_31').
:- pred professional_secrecy_obligation/1, gloss('staff bound to professional secrecy'), source('celex:32024R1689/oj#art_31').
:- pred disclosure_required_by_law/1, gloss('confidentiality exception when disclosure required by law'), source('celex:32024R1689/oj#art_31').
:- pred exception_for_notifying_authority/1, gloss('professional secrecy exception for notifying authorities'), source('celex:32024R1689/oj#art_31').
:- pred proportionate_procedures/1, gloss('procedures take account of provider size, sector, structure and system complexity'), source('celex:32024R1689/oj#art_31').
:- pred liability_insurance/1, gloss('notified body has appropriate liability insurance'), source('celex:32024R1689/oj#art_31').
:- pred member_state_liability_assumption/1, gloss('Member State assumes liability or is directly responsible'), source('celex:32024R1689/oj#art_31').
:- pred professional_integrity_and_competence/1, gloss('notified body carries out tasks with highest professional integrity and requisite competence'), source('celex:32024R1689/oj#art_31').
:- pred internal_competences_for_external_evaluation/1, gloss('notified body has sufficient internal competences to evaluate external tasks'), source('celex:32024R1689/oj#art_31').
:- pred sufficient_personnel/1, gloss('notified body has permanent availability of sufficient administrative, technical, legal and scientific personnel'), source('celex:32024R1689/oj#art_31').
:- pred relevant_experience_and_knowledge/1, gloss('personnel possess experience and knowledge relating to relevant AI systems, data, computing and requirements'), source('celex:32024R1689/oj#art_31').
:- pred participates_in_coordination/1, gloss('notified body participates in coordination activities under Article 38'), source('celex:32024R1689/oj#art_31').
:- pred participates_in_standardisation/1, gloss('notified body participates in European standardisation organisations'), source('celex:32024R1689/oj#art_31').
:- pred aware_of_relevant_standards/1, gloss('notified body ensures awareness and up-to-date knowledge of relevant standards'), source('celex:32024R1689/oj#art_31').

established_notified_body(B) :-
    notified_body(B),
    established_under_national_law(B).

satisfies_requirements(B) :-
    notified_body(B),
    organisational_requirements_met(B),
    quality_management_requirements_met(B),
    resources_requirements_met(B),
    process_requirements_met(B),
    suitable_cybersecurity_requirements_met(B).

ensures_confidence(B) :-
    notified_body(B),
    organisational_structure_ensures_confidence(B),
    allocation_of_responsibilities_ensures_confidence(B),
    reporting_lines_ensure_confidence(B),
    operation_ensures_confidence(B).

independent_of_provider(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    conformity_assessment_activity(A),
    carried_out_by(B, A),
    \+ economic_interest_in(B, S).

independent_of_interested_operators(B) :-
    notified_body(B),
    \+ (operator(O), economic_interest_in(O, S), high_risk_ai_system(S), assessed_by(B, S), O \= B),
    \+ (provider(P), high_risk_ai_system(S), assessed_by(B, S), competitor_of(P, C), C = B).

permitted_use_of_assessed_system(B) :-
    notified_body(B),
    high_risk_ai_system(S),
    assessed_by(B, S),
    necessary_for_operations(S, B).
permitted_use_of_assessed_system(B) :-
    notified_body(B),
    high_risk_ai_system(S),
    assessed_by(B, S),
    used_for_personal_purposes(S, _Person).

no_conflict_of_interest(B) :-
    notified_body(B),
    \+ directly_involved_in_design(B, _S),
    \+ directly_involved_in_development(B, _S),
    \+ directly_involved_in_marketing(B, _S),
    \+ directly_involved_in_use(B, _S),
    \+ represents_parties_engaged_in_activities(B, _S).

no_consultancy_conflict(B) :-
    notified_body(B),
    \+ (activity(A), conflicts_with_independence(A, B), consultancy_service(A)).

safeguards_impartiality(B) :-
    notified_body(B),
    organised_for_independence(B),
    operated_for_objectivity(B),
    operated_for_impartiality(B).

documented_impartiality_procedures(B) :-
    notified_body(B),
    documented_structure_for_impartiality(B),
    documented_procedures_for_impartiality(B),
    promotes_impartiality(B),
    applies_impartiality_principles(B, organisation),
    applies_impartiality_principles(B, personnel),
    applies_impartiality_principles(B, assessment_activities).

confidentiality_procedures(B) :-
    notified_body(B),
    documented_procedures(B, confidentiality),
    personnel_maintain_confidentiality(B),
    committees_maintain_confidentiality(B),
    subsidiaries_maintain_confidentiality(B),
    subcontractors_maintain_confidentiality(B),
    associated_bodies_maintain_confidentiality(B),
    external_bodies_personnel_maintain_confidentiality(B),
    must_ensure_confidentiality(B).

professional_secrecy_obligation(B) :-
    notified_body(B),
    staff_bound_by_professional_secrecy(B),
    information_obtained_under_regulation(B, _Info).

disclosure_required_by_law(_Info).

exception_for_notifying_authority(B) :-
    notified_body(B),
    notifying_authority(A),
    activities_carried_out_in_member_state(B, MS),
    notifying_authority_of(A, MS).

proportionate_procedures(B) :-
    notified_body(B),
    documented_procedures(B, performance_of_activities),
    takes_account_of(B, size_of_provider),
    takes_account_of(B, sector_of_provider),
    takes_account_of(B, structure_of_provider),
    takes_account_of(B, complexity_of_ai_system).

liability_insurance(B) :-
    notified_body(B),
    appropriate_liability_insurance(B, conformity_assessment_activities).

member_state_liability_assumption(B) :-
    notified_body(B),
    established_in_member_state(B, MS),
    liability_assumed_by_state(MS, B).
member_state_liability_assumption(B) :-
    notified_body(B),
    established_in_member_state(B, MS),
    member_state_directly_responsible(MS, conformity_assessment).

professional_integrity_and_competence(B) :-
    notified_body(B),
    capable_of_carrying_out_tasks(B),
    highest_degree_of_professional_integrity(B),
    requisite_competence(B, specific_field),
    tasks_carried_out_by(B, _A).
professional_integrity_and_competence(B) :-
    notified_body(B),
    capable_of_carrying_out_tasks(B),
    highest_degree_of_professional_integrity(B),
    requisite_competence(B, specific_field),
    tasks_carried_out_on_behalf_of(B, _A),
    under_responsibility(B, _A).

internal_competences_for_external_evaluation(B) :-
    notified_body(B),
    sufficient_internal_competences(B),
    effectively_evaluate_external_tasks(B, _A).

sufficient_personnel(B) :-
    notified_body(B),
    permanent_availability(B, administrative_personnel),
    permanent_availability(B, technical_personnel),
    permanent_availability(B, legal_personnel),
    permanent_availability(B, scientific_personnel),
    sufficient_quantity(B, administrative_personnel),
    sufficient_quantity(B, technical_personnel),
    sufficient_quantity(B, legal_personnel),
    sufficient_quantity(B, scientific_personnel).

relevant_experience_and_knowledge(B) :-
    notified_body(B),
    personnel_experience_and_knowledge_of(B, ai_systems),
    personnel_experience_and_knowledge_of(B, data),
    personnel_experience_and_knowledge_of(B, data_computing),
    personnel_experience_and_knowledge_of(B, requirements_chapter_3_section_2).

participates_in_coordination(B) :-
    notified_body(B),
    coordination_activities(A),
    referred_to_in(A, 'celex:32024R1689/oj#art_38'),
    participates_in(B, A).

participates_in_standardisation(B) :-
    notified_body(B),
    european_standardisation_organisation(O),
    (participates_directly(B, O); represented_in(B, O)).

aware_of_relevant_standards(B) :-
    notified_body(B),
    ensures_awareness(B, relevant_standards),
    ensures_up_to_date(B, relevant_standards).

% Provenance facts
provenance(established_notified_body/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(ensures_confidence/1, 'celex:32024R1689/oj#art_31').
provenance(independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(independent_of_interested_operators/1, 'celex:32024R1689/oj#art_31').
provenance(permitted_use_of_assessed_system/1, 'celex:32024R1689/oj#art_31').
provenance(no_conflict_of_interest/1, 'celex:32024R1689/oj#art_31').
provenance(no_consultancy_conflict/1, 'celex:32024R1689/oj#art_31').
provenance(safeguards_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(documented_impartiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(professional_secrecy_obligation/1, 'celex:32024R1689/oj#art_31').
provenance(disclosure_required_by_law/1, 'celex:32024R1689/oj#art_31').
provenance(exception_for_notifying_authority/1, 'celex:32024R1689/oj#art_31').
provenance(proportionate_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(member_state_liability_assumption/1, 'celex:32024R1689/oj#art_31').
provenance(professional_integrity_and_competence/1, 'celex:32024R1689/oj#art_31').
provenance(internal_competences_for_external_evaluation/1, 'celex:32024R1689/oj#art_31').
provenance(sufficient_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(relevant_experience_and_knowledge/1, 'celex:32024R1689/oj#art_31').
provenance(participates_in_coordination/1, 'celex:32024R1689/oj#art_31').
provenance(participates_in_standardisation/1, 'celex:32024R1689/oj#art_31').
provenance(aware_of_relevant_standards/1, 'celex:32024R1689/oj#art_31').

% References
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').
