:- module(responsible_use_biometric_systems, [
    must_consider_elements/2,
    must_confirm_targeted_identity/2,
    must_limit_scope/2,
    must_complete_fundamental_rights_impact_assessment/2,
    must_register_system/2,
    reference_database_appropriate/2
]).

% In each exhaustively listed and narrowly defined situation, certain elements should be taken into account
must_consider_elements(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    element_to_consider(Element).

% Elements to consider: nature of the situation giving rise to the request
element_to_consider(nature(situation_giving_rise_to_request)).

% Elements to consider: consequences of the use for the rights and freedoms of all persons concerned
element_to_consider(consequences_for_rights_and_freedoms(all_persons_concerned)).

% Elements to consider: safeguards and conditions provided for with the use
element_to_consider(safeguards_and_conditions(use)).

% Use of real-time remote biometric identification systems in publicly accessible spaces for law enforcement
% should be deployed only to confirm the specifically targeted individual's identity
must_confirm_targeted_identity(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    purpose_of_use(System, law_enforcement),
    specifically_targeted_individual(System, Individual),
    confirm_identity(System, Individual).

% Should be limited to what is strictly necessary concerning:
% - the period of time
% - the geographic scope
% - the personal scope
must_limit_scope(System, Scope) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    strictly_necessary(Scope),
    scope_type(Scope, period_of_time).

must_limit_scope(System, Scope) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    strictly_necessary(Scope),
    scope_type(Scope, geographic_scope).

must_limit_scope(System, Scope) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    strictly_necessary(Scope),
    scope_type(Scope, personal_scope).

% Having regard in particular to the evidence or indications regarding:
% - the threats
% - the victims
% - the perpetrator
must_have_regard_to_evidence(System, Evidence) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    evidence_or_indication(Evidence, threats).

must_have_regard_to_evidence(System, Evidence) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    evidence_or_indication(Evidence, victims).

must_have_regard_to_evidence(System, Evidence) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    evidence_or_indication(Evidence, perpetrator).

% Use should be authorised only if the relevant law enforcement authority has completed
% a fundamental rights impact assessment
must_complete_fundamental_rights_impact_assessment(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    authorised_use(Authority, System),
    completed_fundamental_rights_impact_assessment(Authority, System).

% And, unless provided otherwise in this Regulation, has registered the system in the database
must_register_system(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    authorised_use(Authority, System),
    \+ provided_otherwise_in_regulation(System),
    registered_in_database(Authority, System).

% The reference database of persons should be appropriate for each use case in each situation
reference_database_appropriate(Database, UseCase) :-
    reference_database_of_persons(Database),
    use_case(UseCase),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    situation_applies_to_use_case(Situation, UseCase),
    appropriate_for_use_case(Database, UseCase).

% Inputs: facts about the world the text does not settle
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic law_enforcement_authority/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic purpose_of_use/2.
:- dynamic specifically_targeted_individual/2.
:- dynamic confirm_identity/2.
:- dynamic strictly_necessary/1.
:- dynamic scope_type/2.
:- dynamic evidence_or_indication/2.
:- dynamic authorised_use/2.
:- dynamic completed_fundamental_rights_impact_assessment/2.
:- dynamic provided_otherwise_in_regulation/1.
:- dynamic registered_in_database/2.
:- dynamic reference_database_of_persons/1.
:- dynamic use_case/1.
:- dynamic situation_applies_to_use_case/2.
:- dynamic appropriate_for_use_case/2.
