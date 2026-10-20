:- module(real_time_remote_biometric_identification, [
    responsible_manner/1,
    proportionate_manner/1,
    required_consideration/1,
    permitted_deployment/1,
    strictly_necessary/1,
    authorised_use/1,
    appropriate_reference_database/1
]).

:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic considers_nature_of_situation/1.
:- dynamic considers_consequences_for_rights_and_freedoms/1.
:- dynamic considers_safeguards_and_conditions/1.
:- dynamic real_time_remote_biometric_identification/1.
:- dynamic publicly_accessible_space/1.
:- dynamic purpose_law_enforcement/1.
:- dynamic targets_specific_individual_identity/1.
:- dynamic limited_temporal_scope/1.
:- dynamic limited_geographic_scope/1.
:- dynamic limited_personal_scope/1.
:- dynamic regards_threat_evidence/1.
:- dynamic regards_victim_or_perpetrator_evidence/1.
:- dynamic law_enforcement_authority/1.
:- dynamic completed_fundamental_rights_impact_assessment/2.
:- dynamic registered_in_database/2.
:- dynamic exempt_from_database_registration/1.
:- dynamic reference_database_of_persons/1.
:- dynamic appropriate_for_use_case/2.

% In order to ensure that those systems are used in a responsible and proportionate manner,
% certain elements should be taken into account in each exhaustively listed and narrowly defined situation.
responsible_manner(Use) :-
    required_consideration(Use).

proportionate_manner(Use) :-
    required_consideration(Use).

required_consideration(Use) :-
    exhaustively_listed_situation(Use),
    narrowly_defined_situation(Use),
    considers_nature_of_situation(Use),
    considers_consequences_for_rights_and_freedoms(Use),
    considers_safeguards_and_conditions(Use).

% Use should be deployed only to confirm the specifically targeted individual's identity,
% and should be limited to what is strictly necessary.
permitted_deployment(Use) :-
    real_time_remote_biometric_identification(Use),
    publicly_accessible_space(Use),
    purpose_law_enforcement(Use),
    targets_specific_individual_identity(Use),
    strictly_necessary(Use).

strictly_necessary(Use) :-
    limited_temporal_scope(Use),
    limited_geographic_scope(Use),
    limited_personal_scope(Use),
    regards_threat_evidence(Use),
    regards_victim_or_perpetrator_evidence(Use).

% Use should be authorised only if law enforcement authority has completed a fundamental
% rights impact assessment and registered the system in the database (unless provided otherwise).
authorised_use(Use) :-
    real_time_remote_biometric_identification(Use),
    publicly_accessible_space(Use),
    purpose_law_enforcement(Use),
    law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority, Use),
    registered_or_exempt(Authority, Use).

registered_or_exempt(Authority, Use) :-
    registered_in_database(Authority, Use).
registered_or_exempt(_Authority, Use) :-
    exempt_from_database_registration(Use).

% The reference database of persons should be appropriate for each use case in each situation.
appropriate_reference_database(Database) :-
    reference_database_of_persons(Database),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    appropriate_for_use_case(Database, Situation).
