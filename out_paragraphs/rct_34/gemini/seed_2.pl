:- module(real_time_remote_biometric_identification, [
    permitted_deployment/1,
    authorised_use/1,
    required_consideration/1,
    required_limitation/1,
    appropriate_reference_database/1
]).

:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic considers_situation_nature/1.
:- dynamic considers_rights_consequences/1.
:- dynamic considers_safeguards_and_conditions/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic objective_law_enforcement/1.
:- dynamic strictly_necessary_temporal_scope/1.
:- dynamic strictly_necessary_geographic_scope/1.
:- dynamic strictly_necessary_personal_scope/1.
:- dynamic targets_specific_individual_identity/1.
:- dynamic law_enforcement_authority/1.
:- dynamic completed_impact_assessment/2.
:- dynamic registered_system/2.
:- dynamic exempt_database_registration/1.
:- dynamic reference_database_of_persons/1.
:- dynamic appropriate_for_use_case/2.

% Elements that must be taken into account in each exhaustively listed
% and narrowly defined situation
required_consideration(Situation) :-
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    considers_situation_nature(Situation),
    considers_rights_consequences(Situation),
    considers_safeguards_and_conditions(Situation).

% Temporal, geographic, and personal limitation strictly necessary
required_limitation(Use) :-
    strictly_necessary_temporal_scope(Use),
    strictly_necessary_geographic_scope(Use),
    strictly_necessary_personal_scope(Use).

% Deployment permitted only to confirm specifically targeted individual's identity
% and strictly limited in time, geographic and personal scope
permitted_deployment(Use) :-
    real_time_remote_biometric_identification_system(Use),
    publicly_accessible_space(Use),
    objective_law_enforcement(Use),
    targets_specific_individual_identity(Use),
    required_limitation(Use).

% Authorisation requires fundamental rights impact assessment and database registration
% (unless exempted)
authorised_use(Use) :-
    real_time_remote_biometric_identification_system(Use),
    publicly_accessible_space(Use),
    objective_law_enforcement(Use),
    law_enforcement_authority(Authority),
    completed_impact_assessment(Authority, fundamental_rights(Use)),
    registered_system(Authority, database(Use)).

authorised_use(Use) :-
    real_time_remote_biometric_identification_system(Use),
    publicly_accessible_space(Use),
    objective_law_enforcement(Use),
    law_enforcement_authority(Authority),
    completed_impact_assessment(Authority, fundamental_rights(Use)),
    exempt_database_registration(Use).

% The reference database of persons should be appropriate for each use case
% in each of the exhaustively listed and narrowly defined situations
appropriate_reference_database(Database) :-
    reference_database_of_persons(Database),
    appropriate_for_use_case(Database, UseCase),
    exhaustively_listed_situation(UseCase),
    narrowly_defined_situation(UseCase).
