:- module(real_time_biometric_identification, [
    responsible_use/1,
    proportionate_use/1,
    must_take_into_account/2,
    exhaustively_listed_situation/1,
    narrowly_defined_situation/1,
    nature_of_situation/1,
    consequences_for_rights_and_freedoms/1,
    safeguards_and_conditions/1,
    deployed_to_confirm_identity/1,
    limited_to_strictly_necessary/1,
    authorised_use/1,
    completed_fundamental_rights_impact_assessment/1,
    registered_in_database/1,
    appropriate_reference_database/1
]).

:- dynamic law_enforcement_authority/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic period_of_time/1.
:- dynamic geographic_scope/1.
:- dynamic personal_scope/1.
:- dynamic evidence_or_indications/1.
:- dynamic threat/1.
:- dynamic victim/1.
:- dynamic perpetrator/1.
:- dynamic use_case/1.
:- dynamic situation/1.

% Principles for responsible and proportionate use
responsible_use(System) :-
    real_time_remote_biometric_identification_system(System),
    proportionate_use(System).

proportionate_use(System) :-
    real_time_remote_biometric_identification_system(System),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    must_take_into_account(System, Situation).

must_take_into_account(System, Situation) :-
    real_time_remote_biometric_identification_system(System),
    exhaustively_listed_situation(Situation),
    nature_of_situation(Situation),
    consequences_for_rights_and_freedoms(consequences(System, Situation)),
    safeguards_and_conditions(safeguards(System, Situation)).

consequences_for_rights_and_freedoms(consequences(System, Situation)) :-
    real_time_remote_biometric_identification_system(System),
    exhaustively_listed_situation(Situation).

safeguards_and_conditions(safeguards(System, Situation)) :-
    real_time_remote_biometric_identification_system(System),
    exhaustively_listed_situation(Situation).

% Deployment constraints for law enforcement
deployed_to_confirm_identity(System) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose),
    specifically_targeted_individual(Individual),
    limited_to_strictly_necessary(System).

limited_to_strictly_necessary(System) :-
    real_time_remote_biometric_identification_system(System),
    period_of_time(Period),
    geographic_scope(GeographicScope),
    personal_scope(PersonalScope),
    evidence_or_indications(Evidence),
    threat(Threat),
    victim(Victim),
    perpetrator(Perpetrator).

% Authorisation conditions
authorised_use(System) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(_),
    law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority),
    registered_in_database(System).

completed_fundamental_rights_impact_assessment(Authority) :-
    law_enforcement_authority(Authority).

registered_in_database(System) :-
    real_time_remote_biometric_identification_system(System).

% Reference database requirement
appropriate_reference_database(Database) :-
    use_case(Case),
    situation(Situation),
    exhaustively_listed_situation(Situation).
