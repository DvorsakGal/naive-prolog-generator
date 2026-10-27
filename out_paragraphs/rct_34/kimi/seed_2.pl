:- module(real_time_remote_biometric_identification, [
    required_element/1,
    must_take_into_account/2,
    must_deploy/2,
    must_limit/2,
    required_authorisation_condition/2,
    required_reference_database/1
]).

:- dynamic situation/1.
:- dynamic system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic person/1.
:- dynamic threat/1.
:- dynamic victim/1.
:- dynamic perpetrator/1.
:- dynamic use_case/1.
:- dynamic relevant_law_enforcement_authority/1.

% Situations and systems
situation(S) :- exhaustively_listed(S), narrowly_defined(S).
exhaustively_listed(S) :- situation(S).
narrowly_defined(S) :- situation(S).

% Responsible and proportionate use - elements to take into account
required_element(nature_of_situation).
required_element(consequences_for_rights_and_freedoms).
required_element(safeguards_and_conditions).

must_take_into_account(Actor, Element) :-
    system(System),
    real_time_remote_biometric_identification(System),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose),
    situation(Situation),
    required_element(Element),
    (
        Element = nature_of_situation;
        Element = consequences_for_rights_and_freedoms;
        Element = safeguards_and_conditions
    ).

% Deployment restrictions
must_deploy(Actor, deployment(System, confirm_identity(Target))) :-
    system(System),
    real_time_remote_biometric_identification(System),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose),
    specifically_targeted_individual(Target),
    person(Target).

must_limit(Actor, limit(System, Scope)) :-
    system(System),
    real_time_remote_biometric_identification(System),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose),
    strictly_necessary(Scope),
    (
        Scope = period_of_time;
        Scope = geographic_scope;
        Scope = personal_scope
    ).

must_limit(Actor, regard_to(System, Factor)) :-
    system(System),
    real_time_remote_biometric_identification(System),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose),
    (
        Factor = evidence(threat(Threat)), threat(Threat);
        Factor = indications(threat(Threat)), threat(Threat);
        Factor = victim(Victim), victim(Victim);
        Factor = perpetrator(Perpetrator), perpetrator(Perpetrator)
    ).

% Authorisation conditions
required_authorisation_condition(Authority, completed_fundamental_rights_impact_assessment) :-
    relevant_law_enforcement_authority(Authority),
    system(System),
    real_time_remote_biometric_identification(System),
    publicly_accessible_space(Space).

required_authorisation_condition(Authority, registered_system_in_database) :-
    relevant_law_enforcement_authority(Authority),
    system(System),
    real_time_remote_biometric_identification(System),
    publicly_accessible_space(Space),
    \+ provided_otherwise_in_regulation(Authority, System).

% Reference database requirement
required_reference_database(database(UseCase, Situation)) :-
    use_case(UseCase),
    situation(Situation),
    appropriate_for(database(UseCase, Situation), UseCase),
    appropriate_for(database(UseCase, Situation), Situation).

% Helper predicates for conditions
real_time_remote_biometric_identification(System) :-
    system(System),
    real_time(System),
    remote(System),
    biometric_identification(System).

strictly_necessary(Scope) :-
    Scope = period_of_time;
    Scope = geographic_scope;
    Scope = personal_scope.

provided_otherwise_in_regulation(Authority, System) :-
    % Dynamic input for exceptions not specified in this text
    fail.

appropriate_for(Database, UseCase) :-
    use_case(UseCase),
    required_reference_database(Database).

appropriate_for(Database, Situation) :-
    situation(Situation),
    required_reference_database(Database).

specifically_targeted_individual(Person) :-
    person(Person).

% Additional dynamic declarations for completeness
:- dynamic real_time/1.
:- dynamic remote/1.
:- dynamic biometric_identification/1.
:- dynamic exhaustively_listed/1.
:- dynamic narrowly_defined/1.
