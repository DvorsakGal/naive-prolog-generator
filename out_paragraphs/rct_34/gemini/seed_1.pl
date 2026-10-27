:- module(real_time_remote_biometric_identification, [
    permitted_use/1,
    authorised_use/1,
    responsible_and_proportionate_use/1,
    strictly_necessary_limits/1,
    appropriate_reference_database/1
]).

:- dynamic exhausted_and_narrowly_defined_situation/1.
:- dynamic takes_into_account_situation_nature/1.
:- dynamic takes_into_account_rights_consequences/1.
:- dynamic takes_into_account_safeguards_and_conditions/1.
:- dynamic real_time_remote_biometric_identification/1.
:- dynamic publicly_accessible_space/1.
:- dynamic purpose_law_enforcement/1.
:- dynamic confirms_specifically_targeted_individual_identity/1.
:- dynamic strictly_necessary_period/1.
:- dynamic strictly_necessary_geographic_scope/1.
:- dynamic strictly_necessary_personal_scope/1.
:- dynamic regards_threat_victim_perpetrator_evidence/1.
:- dynamic law_enforcement_authority/1.
:- dynamic completes_fundamental_rights_impact_assessment/2.
:- dynamic registers_system_in_database/2.
:- dynamic database_registration_exempt/1.
:- dynamic appropriate_for_use_case/2.
:- dynamic reference_database_of_persons/1.

% Ensures responsible and proportionate use in exhaustively listed, narrowly defined situations
responsible_and_proportionate_use(Use) :-
    exhausted_and_narrowly_defined_situation(Use),
    takes_into_account_situation_nature(Use),
    takes_into_account_rights_consequences(Use),
    takes_into_account_safeguards_and_conditions(Use).

% Use strictly limited in time, geographic and personal scope
strictly_necessary_limits(Use) :-
    strictly_necessary_period(Use),
    strictly_necessary_geographic_scope(Use),
    strictly_necessary_personal_scope(Use),
    regards_threat_victim_perpetrator_evidence(Use).

% Permitted use for real-time remote biometric identification in publicly accessible spaces for law enforcement
permitted_use(Use) :-
    real_time_remote_biometric_identification(Use),
    publicly_accessible_space(Use),
    purpose_law_enforcement(Use),
    confirms_specifically_targeted_individual_identity(Use),
    strictly_necessary_limits(Use),
    responsible_and_proportionate_use(Use).

% Authorisation requirements: assessment and registration
authorised_use(Use) :-
    permitted_use(Use),
    law_enforcement_authority(Authority),
    completes_fundamental_rights_impact_assessment(Authority, Use),
    registered_or_exempt(Authority, Use).

registered_or_exempt(_Authority, Use) :-
    database_registration_exempt(Use).
registered_or_exempt(Authority, Use) :-
    registers_system_in_database(Authority, Use).

% The reference database of persons must be appropriate for each use case
appropriate_reference_database(Database) :-
    reference_database_of_persons(Database),
    appropriate_for_use_case(Database, Use),
    exhausted_and_narrowly_defined_situation(Use).
