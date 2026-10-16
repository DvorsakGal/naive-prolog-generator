% unit       : celex:32024R1689/oj#art_31
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : ec754106daa7ead8deb29d5bb9a0dd14c2abfe980c7dba560ba0d1b3bb024f9d
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : db49aac2529a07c1e7504235f32e34e6b31267c3a6dcde421b943eda8af44673
% cached     : False
% title      : Requirements relating to notified bodies
:- pred has_legal_personality/1, gloss('notified body has legal personality'), source('celex:32024R1689/oj#art_31').
:- pred satisfies_organisational_requirements/1, gloss('notified body satisfies organisational requirements necessary to fulfil tasks'), source('celex:32024R1689/oj#art_31').
:- pred satisfies_quality_management_requirements/1, gloss('notified body satisfies quality management requirements necessary to fulfil tasks'), source('celex:32024R1689/oj#art_31').
:- pred satisfies_resource_requirements/1, gloss('notified body satisfies resource requirements necessary to fulfil tasks'), source('celex:32024R1689/oj#art_31').
:- pred satisfies_process_requirements/1, gloss('notified body satisfies process requirements necessary to fulfil tasks'), source('celex:32024R1689/oj#art_31').
:- pred satisfies_cybersecurity_requirements/1, gloss('notified body satisfies suitable cybersecurity requirements'), source('celex:32024R1689/oj#art_31').
:- pred ensures_confidence_in_performance/1, gloss('organisational structure and operation ensure confidence in performance and conformity assessment results'), source('celex:32024R1689/oj#art_31').
:- pred independent_of_provider/2, gloss('notified body is independent of the provider of the high-risk AI system assessed'), source('celex:32024R1689/oj#art_31').
:- pred independent_of_competitor/2, gloss('notified body is independent of competitors of the provider'), source('celex:32024R1689/oj#art_31').
:- pred not_directly_involved_in_activity/2, gloss('body or personnel not directly involved in specified activity regarding high-risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred maintains_confidentiality/1, gloss('notified body has procedures ensuring confidentiality of information obtained during conformity assessment'), source('celex:32024R1689/oj#art_31').
:- pred staff_bound_by_professional_secrecy/1, gloss('staff of notified body bound to observe professional secrecy'), source('celex:32024R1689/oj#art_31').
:- pred takes_account_of_provider_characteristics/1, gloss('procedures take due account of provider size, sector, structure and system complexity'), source('celex:32024R1689/oj#art_31').
:- pred has_liability_insurance/1, gloss('notified body has appropriate liability insurance for conformity assessment activities'), source('celex:32024R1689/oj#art_31').
:- pred liability_assumed_by_member_state/1, gloss('liability for conformity assessment assumed by Member State'), source('celex:32024R1689/oj#art_31').
:- pred capable_of_tasks_with_integrity_and_competence/1, gloss('notified body capable of carrying out tasks with professional integrity and requisite competence'), source('celex:32024R1689/oj#art_31').
:- pred has_sufficient_internal_competences/1, gloss('notified body has sufficient internal competences to evaluate tasks conducted by external parties'), source('celex:32024R1689/oj#art_31').
:- pred has_permanent_availability_of_personnel/1, gloss('notified body has permanent availability of administrative, technical, legal and scientific personnel'), source('celex:32024R1689/oj#art_31').
:- pred participates_in_coordination_activities/1, gloss('notified body participates in coordination activities referred to in Article 38'), source('celex:32024R1689/oj#art_31').
:- pred participates_in_standardisation/1, gloss('notified body takes part in or is represented in European standardisation organisations or is aware of relevant standards'), source('celex:32024R1689/oj#art_31').

% Art 31(1)
established_under_national_law(B) :-
    notified_body(B).

has_legal_personality(B) :-
    notified_body(B).

% Art 31(2)
satisfies_organisational_requirements(B) :-
    notified_body(B).

satisfies_quality_management_requirements(B) :-
    notified_body(B).

satisfies_resource_requirements(B) :-
    notified_body(B).

satisfies_process_requirements(B) :-
    notified_body(B).

satisfies_cybersecurity_requirements(B) :-
    notified_body(B).

% Art 31(3)
ensures_confidence_in_performance(B) :-
    notified_body(B).

% Art 31(4)
independent_of_provider(B, S) :-
    notified_body(B),
    high_risk_ai_system(S).

independent_of_operator_with_economic_interest(B, O) :-
    notified_body(B),
    operator(O).

independent_of_competitor(B, C) :-
    notified_body(B),
    operator(C).

% Art 31(5)
not_involved_in_design(B) :-
    notified_body(B).

not_involved_in_development(B) :-
    notified_body(B).

not_involved_in_marketing(B) :-
    notified_body(B).

not_involved_in_use(B) :-
    notified_body(B).

does_not_represent_parties(B) :-
    notified_body(B).

% Art 31(6)
must_safeguard_impartiality(B) :-
    notified_body(B).

% Art 31(7)
maintains_confidentiality(B) :-
    notified_body(B).

staff_bound_by_professional_secrecy(B) :-
    notified_body(B).

% Art 31(8)
takes_account_of_provider_characteristics(B) :-
    notified_body(B).

% Art 31(9)
has_liability_insurance(B) :-
    notified_body(B),
    \+ liability_assumed_by_member_state(B).

liability_assumed_by_member_state(B) :-
    notified_body(B).

% Art 31(10)
capable_of_tasks_with_integrity_and_competence(B) :-
    notified_body(B).

% Art 31(11)
has_sufficient_internal_competences(B) :-
    notified_body(B).

has_permanent_availability_of_personnel(B) :-
    notified_body(B).

meets_requirements_of_art_31(B) :-
    notified_body(B).

% Art 31(12)
participates_in_coordination_activities(B) :-
    notified_body(B).

participates_in_standardisation(B) :-
    notified_body(B).

% Provenance
provenance(established_under_national_law/1, 'celex:32024R1689/oj#art_31').
provenance(has_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_quality_management_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_resource_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_process_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(ensures_confidence_in_performance/1, 'celex:32024R1689/oj#art_31').
provenance(independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(independent_of_operator_with_economic_interest/2, 'celex:32024R1689/oj#art_31').
provenance(independent_of_competitor/2, 'celex:32024R1689/oj#art_31').
provenance(not_involved_in_design/1, 'celex:32024R1689/oj#art_31').
provenance(not_involved_in_development/1, 'celex:32024R1689/oj#art_31').
provenance(not_involved_in_marketing/1, 'celex:32024R1689/oj#art_31').
provenance(not_involved_in_use/1, 'celex:32024R1689/oj#art_31').
provenance(does_not_represent_parties/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(maintains_confidentiality/1, 'celex:32024R1689/oj#art_31').
provenance(staff_bound_by_professional_secrecy/1, 'celex:32024R1689/oj#art_31').
provenance(takes_account_of_provider_characteristics/1, 'celex:32024R1689/oj#art_31').
provenance(has_liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(liability_assumed_by_member_state/1, 'celex:32024R1689/oj#art_31').
provenance(capable_of_tasks_with_integrity_and_competence/1, 'celex:32024R1689/oj#art_31').
provenance(has_sufficient_internal_competences/1, 'celex:32024R1689/oj#art_31').
provenance(has_permanent_availability_of_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(meets_requirements_of_art_31/1, 'celex:32024R1689/oj#art_31').
provenance(participates_in_coordination_activities/1, 'celex:32024R1689/oj#art_31').
provenance(participates_in_standardisation/1, 'celex:32024R1689/oj#art_31').

% References
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').
