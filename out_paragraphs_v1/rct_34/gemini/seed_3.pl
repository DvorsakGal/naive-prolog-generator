:- module(real_time_remote_biometric_identification, [
    responsible_manner/1,
    proportionate_manner/1,
    takes_into_account/2,
    exhaustively_listed_situation/1,
    narrowly_defined_situation/1,
    permitted_deployment/1,
    limited_strictly_necessary/1,
    permitted_authorisation/1,
    must_complete/2,
    must_register/2,
    appropriate_reference_database/2
]).

:- dynamic situation/1.
:- dynamic nature_of_situation/2.
:- dynamic consequences_for_rights_and_freedoms/2.
:- dynamic safeguards_and_conditions/2.
:- dynamic use_of_system/1.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification/1.
:- dynamic publicly_accessible_space/1.
:- dynamic objective_law_enforcement/1.
:- dynamic confirms_specifically_targeted_identity/1.
:- dynamic limits_period_of_time/1.
:- dynamic limits_geographic_scope/1.
:- dynamic limits_personal_scope/1.
:- dynamic regards_evidence_or_indications/1.
:- dynamic law_enforcement_authority/1.
:- dynamic completed_fundamental_rights_impact_assessment/2.
:- dynamic registered_in_database/2.
:- dynamic exempt_database_registration/1.
:- dynamic database_of_persons/1.
:- dynamic appropriate_for_use_case/2.

% Responsible and proportionate manner requires taking into account key elements in exhaustively listed and narrowly defined situations
responsible_manner(Use) :-
    takes_into_account(Use, elements).

proportionate_manner(Use) :-
    takes_into_account(Use, elements).

takes_into_account(Use, elements) :-
    situation(Situation),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    takes_into_account(Use, nature_of_situation(Situation)),
    takes_into_account(Use, consequences_for_rights_and_freedoms(Situation)),
    takes_into_account(Use, safeguards_and_conditions(Situation)).

takes_into_account(Use, nature_of_situation(Situation)) :-
    nature_of_situation(Use, Situation).

takes_into_account(Use, consequences_for_rights_and_freedoms(Situation)) :-
    consequences_for_rights_and_freedoms(Use, Situation).

takes_into_account(Use, safeguards_and_conditions(Situation)) :-
    safeguards_and_conditions(Use, Situation).

% Conditions on deployment: only to confirm specifically targeted individual's identity and strictly limited
permitted_deployment(Use) :-
    use_of_system(Use),
    real_time(Use),
    remote_biometric_identification(Use),
    publicly_accessible_space(Use),
    objective_law_enforcement(Use),
    confirms_specifically_targeted_identity(Use),
    limited_strictly_necessary(Use).

limited_strictly_necessary(Use) :-
    limits_period_of_time(Use),
    limits_geographic_scope(Use),
    limits_personal_scope(Use),
    regards_evidence_or_indications(Use).

% Authorisation conditions: completed fundamental rights impact assessment and registration in database
permitted_authorisation(Use) :-
    use_of_system(Use),
    real_time(Use),
    remote_biometric_identification(Use),
    publicly_accessible_space(Use),
    law_enforcement_authority(Authority),
    must_complete(Authority, fundamental_rights_impact_assessment(Use)),
    must_register(Authority, database(Use)).

must_complete(Authority, fundamental_rights_impact_assessment(Use)) :-
    law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority, Use).

must_register(Authority, database(Use)) :-
    law_enforcement_authority(Authority),
    registered_in_database(Authority, Use).
must_register(Authority, database(Use)) :-
    law_enforcement_authority(Authority),
    exempt_database_registration(Use).

% Reference database of persons must be appropriate for each use case
appropriate_reference_database(Database, Use) :-
    database_of_persons(Database),
    situation(Situation),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    appropriate_for_use_case(Database, Use).
