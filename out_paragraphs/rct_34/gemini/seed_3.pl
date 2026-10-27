:- module(real_time_remote_biometric_identification, [
    required_element_considered/1,
    permitted_use/1,
    strictly_necessary_scope/1,
    authorised_use/1,
    appropriate_reference_database/1
]).

:- dynamic exhausted_narrowly_defined_situation/1.
:- dynamic considers_nature_of_situation/1.
:- dynamic considers_consequences_for_rights_and_freedoms/1.
:- dynamic considers_safeguards_and_conditions/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic purpose_law_enforcement/1.
:- dynamic confirms_specifically_targeted_individual_identity/1.
:- dynamic strictly_necessary_period_of_time/1.
:- dynamic strictly_necessary_geographic_scope/1.
:- dynamic strictly_necessary_personal_scope/1.
:- dynamic regards_evidence_or_indications/1.
:- dynamic law_enforcement_authority/1.
:- dynamic completed_fundamental_rights_impact_assessment/2.
:- dynamic registered_system_in_database/2.
:- dynamic exempt_from_database_registration/1.
:- dynamic reference_database/1.
:- dynamic appropriate_for_use_case/2.

% Elements that should be taken into account in each exhaustively listed and narrowly defined situation
required_element_considered(Use) :-
    exhausted_narrowly_defined_situation(Use),
    considers_nature_of_situation(Use),
    considers_consequences_for_rights_and_freedoms(Use),
    considers_safeguards_and_conditions(Use).

% Use should be deployed only to confirm the specifically targeted individual's identity
% and limited to what is strictly necessary concerning period of time, geographic and personal scope
strictly_necessary_scope(Use) :-
    strictly_necessary_period_of_time(Use),
    strictly_necessary_geographic_scope(Use),
    strictly_necessary_personal_scope(Use),
    regards_evidence_or_indications(Use).

permitted_use(Use) :-
    real_time_remote_biometric_identification_system(Use),
    publicly_accessible_space(Use),
    purpose_law_enforcement(Use),
    confirms_specifically_targeted_individual_identity(Use),
    strictly_necessary_scope(Use).

% Authorisation requirements for the use of real-time remote biometric identification systems
authorised_use(Use) :-
    permitted_use(Use),
    law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority, Use),
    registered_system_in_database(Authority, Use).
authorised_use(Use) :-
    permitted_use(Use),
    law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority, Use),
    exempt_from_database_registration(Use).

% Reference database of persons should be appropriate for each use case in each situation
appropriate_reference_database(Database) :-
    reference_database(Database),
    exhausted_narrowly_defined_situation(Use),
    appropriate_for_use_case(Database, Use).
