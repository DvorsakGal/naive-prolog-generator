:- module(remote_biometric_identification_use, [
    exhaustively_listed/1,
    narrowly_defined/1,
    law_enforcement_use_applies/1,
    listed_situation_use_applies/1,
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_purpose_limitation/1,
    required_scope_limitation/1,
    required_authorisation_condition/1,
    permitted_non_registration/1,
    must_complete/2,
    must_register/2,
    required_appropriateness/1
]).

:- dynamic listed_situation_applies/1.
:- dynamic concerns_situation/2.
:- dynamic uses_system/2.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification_applies/1.
:- dynamic publicly_accessible_space_applies/1.
:- dynamic objective_law_enforcement/1.
:- dynamic concerns_person/2.
:- dynamic targets_individual/2.
:- dynamic provides_safeguard/2.
:- dynamic provides_condition/2.
:- dynamic relates_evidence/2.
:- dynamic relates_indication/2.
:- dynamic has_relevant_law_enforcement_authority/2.
:- dynamic regulation_registration_derogation_applies/1.
:- dynamic uses_reference_database/2.
:- dynamic concerns_use_case/2.

exhaustively_listed(Situation) :-
    listed_situation_applies(Situation).

narrowly_defined(Situation) :-
    listed_situation_applies(Situation).

law_enforcement_use_applies(Use) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification_applies(System),
    publicly_accessible_space_applies(Use),
    objective_law_enforcement(Use).

listed_situation_use_applies(Use) :-
    law_enforcement_use_applies(Use),
    concerns_situation(Use, Situation),
    listed_situation_applies(Situation).

objective_responsible_use(establishment(required_consideration(Use))) :-
    listed_situation_use_applies(Use).

objective_proportionate_use(establishment(required_consideration(Use))) :-
    listed_situation_use_applies(Use).

required_consideration(nature(situation_giving_rise_to_request(Use, Situation))) :-
    listed_situation_use_applies(Use),
    concerns_situation(Use, Situation),
    listed_situation_applies(Situation).

required_consideration(consequence(Use, right(Person))) :-
    listed_situation_use_applies(Use),
    concerns_person(Use, Person).

required_consideration(consequence(Use, freedom(Person))) :-
    listed_situation_use_applies(Use),
    concerns_person(Use, Person).

required_consideration(safeguard(Use, Safeguard)) :-
    listed_situation_use_applies(Use),
    provides_safeguard(Use, Safeguard).

required_consideration(condition(Use, Condition)) :-
    listed_situation_use_applies(Use),
    provides_condition(Use, Condition).

required_purpose_limitation(deployment(Use, only(confirm_identity(Individual)))) :-
    law_enforcement_use_applies(Use),
    targets_individual(Use, Individual).

required_scope_limitation(Use, _Scope) :-
    fail.
