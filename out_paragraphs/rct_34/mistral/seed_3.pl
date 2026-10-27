:- module(remote_biometric_identification_safeguards, [
    responsible_use(S),
    proportionate_use(S),
    element_taken_into_account(S, nature_of_situation),
    element_taken_into_account(S, consequences_for_rights_and_freedoms),
    element_taken_into_account(S, safeguards_and_conditions),
    must_confirm_identity(S, targeted_individual),
    strictly_necessary_period(S),
    strictly_necessary_geographic_scope(S),
    strictly_necessary_personal_scope(S),
    having_regard_to(S, evidence_or_indications),
    having_regard_to(S, threats),
    having_regard_to(S, victims),
    having_regard_to(S, perpetrator),
    must_complete_fundamental_rights_impact_assessment(Authority, S),
    must_register_system(Authority, S, database),
    reference_database_appropriate(S, use_case)
]).

% Responsible and proportionate use of systems in exhaustively listed and narrowly defined situations
responsible_use(S) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

proportionate_use(S) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

% Elements to be taken into account in each situation
element_taken_into_account(S, nature_of_situation) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

element_taken_into_account(S, consequences_for_rights_and_freedoms) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S),
    concerns_all_persons(S).

element_taken_into_account(S, safeguards_and_conditions) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

% Real-time remote biometric identification in publicly accessible spaces for law enforcement
must_confirm_identity(S, targeted_individual) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

strictly_necessary_period(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

strictly_necessary_geographic_scope(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

strictly_necessary_personal_scope(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

having_regard_to(S, evidence_or_indications) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

having_regard_to(S, threats) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

having_regard_to(S, victims) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

having_regard_to(S, perpetrator) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

% Authorisation requirements
must_complete_fundamental_rights_impact_assessment(Authority, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_authority(Authority),
    authorised_use(Authority, S).

must_register_system(Authority, S, database) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_authority(Authority),
    authorised_use(Authority, S),
    \+ provided_otherwise_in_regulation(S).

% Reference database appropriateness
reference_database_appropriate(S, UseCase) :-
    real_time_remote_biometric_identification_system(S),
    use_case(S, UseCase),
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

% Input predicates: facts about the world the text does not settle
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic concerns_all_persons/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic purpose_law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic authorised_use/2.
:- dynamic provided_otherwise_in_regulation/1.
:- dynamic use_case/2.
