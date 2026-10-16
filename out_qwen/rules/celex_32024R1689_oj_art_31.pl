% unit       : celex:32024R1689/oj#art_31
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : ec754106daa7ead8deb29d5bb9a0dd14c2abfe980c7dba560ba0d1b3bb024f9d
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8649beeab1f0c7a37618e878f007fa02839f4090f155446e2ab05a1cdb4c2f11
% cached     : False
% title      : Requirements relating to notified bodies
:- pred established_under_national_law/1, gloss('notified body established under national law of a Member State'), source('celex:32024R1689/oj#art_31').
:- pred has_legal_personality/1, gloss('notified body possesses legal personality'), source('celex:32024R1689/oj#art_31').
:- pred satisfies_organisational_requirements/1, gloss('notified body satisfies organisational requirements'), source('celex:32024R1689/oj#art_31').
:- pred satisfies_quality_management_requirements/1, gloss('notified body satisfies quality management requirements'), source('celex:32024R1689/oj#art_31').
:- pred satisfies_resource_requirements/1, gloss('notified body satisfies resource requirements'), source('celex:32024R1689/oj#art_31').
:- pred satisfies_process_requirements/1, gloss('notified body satisfies process requirements'), source('celex:32024R1689/oj#art_31').
:- pred satisfies_cybersecurity_requirements/1, gloss('notified body satisfies suitable cybersecurity requirements'), source('celex:32024R1689/oj#art_31').
:- pred ensures_confidence_in_performance/1, gloss('organisational structure ensures confidence in performance and conformity assessment results'), source('celex:32024R1689/oj#art_31').
:- pred independent_of_provider/2, gloss('notified body is independent of the provider of the assessed system'), source('celex:32024R1689/oj#art_31').
:- pred independent_of_operator_with_economic_interest/2, gloss('notified body is independent of operators with economic interest in assessed systems'), source('celex:32024R1689/oj#art_31').
:- pred independent_of_competitor/2, gloss('notified body is independent of competitors of the provider'), source('celex:32024R1689/oj#art_31').
:- pred permitted_use_for_operations/2, gloss('use of assessed high-risk AI system necessary for conformity assessment body operations'), source('celex:32024R1689/oj#art_31').
:- pred permitted_use_for_personal_purposes/2, gloss('use of assessed high-risk AI system for personal purposes'), source('celex:32024R1689/oj#art_31').
:- pred not_involved_in_design/1, gloss('body or personnel not directly involved in design of high-risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred not_involved_in_development/1, gloss('body or personnel not directly involved in development of high-risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred not_involved_in_marketing/1, gloss('body or personnel not directly involved in marketing of high-risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred not_involved_in_use/1, gloss('body or personnel not directly involved in use of high-risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred does_not_represent_parties/1, gloss('body or personnel do not represent parties engaged in design, development, marketing or use'), source('celex:32024R1689/oj#art_31').
:- pred no_conflicting_activity/1, gloss('body or personnel do not engage in activities conflicting with independence or integrity'), source('celex:32024R1689/oj#art_31').
:- pred safeguards_impartiality/1, gloss('notified body safeguards independence, objectivity and impartiality'), source('celex:32024R1689/oj#art_31').
:- pred documents_impartiality_procedures/1, gloss('notified body documents and implements structure and procedures for impartiality'), source('celex:32024R1689/oj#art_31').
:- pred maintains_confidentiality/1, gloss('notified body has procedures ensuring confidentiality of information'), source('celex:32024R1689/oj#art_31').
:- pred bound_by_professional_secrecy/1, gloss('staff of notified body observe professional secrecy'), source('celex:32024R1689/oj#art_31').
:- pred accounts_for_provider_size/1, gloss('procedures take due account of size of provider'), source('celex:32024R1689/oj#art_31').
:- pred accounts_for_sector/1, gloss('procedures take due account of sector in which provider operates'), source('celex:32024R1689/oj#art_31').
:- pred accounts_for_provider_structure/1, gloss('procedures take due account of structure of provider'), source('celex:32024R1689/oj#art_31').
:- pred accounts_for_system_complexity/1, gloss('procedures take due account of degree of complexity of AI system'), source('celex:32024R1689/oj#art_31').
:- pred has_liability_insurance/1, gloss('notified body has appropriate liability insurance for conformity assessment'), source('celex:32024R1689/oj#art_31').
:- pred liability_assumed_by_member_state/1, gloss('liability for conformity assessment assumed by Member State'), source('celex:32024R1689/oj#art_31').
:- pred member_state_directly_responsible/1, gloss('Member State directly responsible for conformity assessment'), source('celex:32024R1689/oj#art_31').
:- pred capable_with_professional_integrity/1, gloss('notified body capable of carrying out tasks with highest degree of professional integrity'), source('celex:32024R1689/oj#art_31').
:- pred has_requisite_competence/1, gloss('notified body has requisite competence in specific field'), source('celex:32024R1689/oj#art_31').
:- pred has_internal_competences_for_evaluation/1, gloss('notified body has sufficient internal competences to evaluate external tasks'), source('celex:32024R1689/oj#art_31').
:- pred has_sufficient_personnel/1, gloss('notified body has permanent availability of sufficient administrative, technical, legal and scientific personnel'), source('celex:32024R1689/oj#art_31').
:- pred participates_in_coordination_activities/1, gloss('notified body participates in coordination activities referred to in Article 38'), source('celex:32024R1689/oj#art_31').
:- pred participates_in_standardisation/1, gloss('notified body takes part in or is represented in European standardisation organisations or is aware of relevant standards'), source('celex:32024R1689/oj#art_31').

must_be_established_under_national_law(B) :-
    notified_body(B),
    established_under_national_law(B).

must_have_legal_personality(B) :-
    notified_body(B),
    has_legal_personality(B).

must_satisfy_organisational_requirements(B) :-
    notified_body(B),
    satisfies_organisational_requirements(B).

must_satisfy_quality_management_requirements(B) :-
    notified_body(B),
    satisfies_quality_management_requirements(B).

must_satisfy_resource_requirements(B) :-
    notified_body(B),
    satisfies_resource_requirements(B).

must_satisfy_process_requirements(B) :-
    notified_body(B),
    satisfies_process_requirements(B).

must_satisfy_cybersecurity_requirements(B) :-
    notified_body(B),
    satisfies_cybersecurity_requirements(B).

must_ensure_confidence_in_performance(B) :-
    notified_body(B),
    ensures_confidence_in_performance(B).

must_be_independent_of_provider(B, S) :-
    notified_body(B),
    ai_system(S),
    independent_of_provider(B, S).

must_be_independent_of_operator_with_economic_interest(B, S) :-
    notified_body(B),
    ai_system(S),
    independent_of_operator_with_economic_interest(B, S).

must_be_independent_of_competitor(B, P) :-
    notified_body(B),
    provider(P),
    independent_of_competitor(B, P).

permitted_use_of_assessed_system(B, S) :-
    notified_body(B),
    ai_system(S),
    permitted_use_for_operations(B, S).

permitted_use_of_assessed_system(B, S) :-
    notified_body(B),
    ai_system(S),
    permitted_use_for_personal_purposes(B, S).

must_not_be_involved_in_design(B) :-
    notified_body(B),
    not_involved_in_design(B).

must_not_be_involved_in_development(B) :-
    notified_body(B),
    not_involved_in_development(B).

must_not_be_involved_in_marketing(B) :-
    notified_body(B),
    not_involved_in_marketing(B).

must_not_be_involved_in_use(B) :-
    notified_body(B),
    not_involved_in_use(B).

must_not_represent_parties(B) :-
    notified_body(B),
    does_not_represent_parties(B).

must_not_engage_in_conflicting_activity(B) :-
    notified_body(B),
    no_conflicting_activity(B).

must_safeguard_impartiality(B) :-
    notified_body(B),
    safeguards_impartiality(B).

must_document_impartiality_procedures(B) :-
    notified_body(B),
    documents_impartiality_procedures(B).

must_maintain_confidentiality(B) :-
    notified_body(B),
    maintains_confidentiality(B).

must_observe_professional_secrecy(B) :-
    notified_body(B),
    bound_by_professional_secrecy(B).

must_account_for_provider_size(B) :-
    notified_body(B),
    accounts_for_provider_size(B).

must_account_for_sector(B) :-
    notified_body(B),
    accounts_for_sector(B).

must_account_for_provider_structure(B) :-
    notified_body(B),
    accounts_for_provider_structure(B).

must_account_for_system_complexity(B) :-
    notified_body(B),
    accounts_for_system_complexity(B).

must_have_liability_coverage(B) :-
    notified_body(B),
    has_liability_insurance(B).

must_have_liability_coverage(B) :-
    notified_body(B),
    liability_assumed_by_member_state(B).

must_have_liability_coverage(B) :-
    notified_body(B),
    member_state_directly_responsible(B).

must_act_with_professional_integrity(B) :-
    notified_body(B),
    capable_with_professional_integrity(B).

must_have_requisite_competence(B) :-
    notified_body(B),
    has_requisite_competence(B).

must_have_internal_competences_for_evaluation(B) :-
    notified_body(B),
    has_internal_competences_for_evaluation(B).

must_have_sufficient_personnel(B) :-
    notified_body(B),
    has_sufficient_personnel(B).

must_participate_in_coordination_activities(B) :-
    notified_body(B),
    participates_in_coordination_activities(B).

must_participate_in_standardisation(B) :-
    notified_body(B),
    participates_in_standardisation(B).

provenance(must_be_established_under_national_law/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_quality_management_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_resource_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_process_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_ensure_confidence_in_performance/1, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_operator_with_economic_interest/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_competitor/2, 'celex:32024R1689/oj#art_31').
provenance(permitted_use_of_assessed_system/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_involved_in_design/1, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_involved_in_development/1, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_involved_in_marketing/1, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_involved_in_use/1, 'celex:32024R1689/oj#art_31').
provenance(must_not_represent_parties/1, 'celex:32024R1689/oj#art_31').
provenance(must_not_engage_in_conflicting_activity/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(must_document_impartiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(must_maintain_confidentiality/1, 'celex:32024R1689/oj#art_31').
provenance(must_observe_professional_secrecy/1, 'celex:32024R1689/oj#art_31').
provenance(must_account_for_provider_size/1, 'celex:32024R1689/oj#art_31').
provenance(must_account_for_sector/1, 'celex:32024R1689/oj#art_31').
provenance(must_account_for_provider_structure/1, 'celex:32024R1689/oj#art_31').
provenance(must_account_for_system_complexity/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_liability_coverage/1, 'celex:32024R1689/oj#art_31').
provenance(must_act_with_professional_integrity/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_requisite_competence/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_internal_competences_for_evaluation/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_sufficient_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_coordination_activities/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_standardisation/1, 'celex:32024R1689/oj#art_31').

references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').
