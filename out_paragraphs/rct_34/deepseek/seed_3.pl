:- module(real_time_biometric_identification, [
    responsible_use/1,
    proportionate_use/1,
    must_take_into_account/2,
    nature_of_situation/1,
    consequences_for_rights_and_freedoms/1,
    safeguards_and_conditions/1,
    deployed_to_confirm_identity/1,
    limited_to_strictly_necessary/1,
    authorised_use/1,
    fundamental_rights_impact_assessment_completed/1,
    system_registered_in_database/1,
    reference_database_appropriate/1
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

% The use of real-time remote biometric identification systems in publicly accessible
% spaces for the purpose of law enforcement should be deployed only to confirm the
% specifically targeted individual’s identity.
deployed_to_confirm_identity(Use) :-
    real_time_remote_biometric_identification_system(Use),
    publicly_accessible_space(Use),
    law_enforcement_purpose(Use),
    specifically_targeted_individual(Use).

% The use should be limited to what is strictly necessary concerning the period of
% time, as well as the geographic and personal scope, having regard in particular to
% the evidence or indications regarding the threats, the victims or perpetrator.
limited_to_strictly_necessary(Use) :-
    real_time_remote_biometric_identification_system(Use),
    publicly_accessible_space(Use),
    law_enforcement_purpose(Use),
    period_of_time(Use),
    geographic_scope(Use),
    personal_scope(Use),
    evidence_or_indications(Use),
    (   threat(Use)
    ;   victim(Use)
    ;   perpetrator(Use)
    ).

% The use of the real-time remote biometric identification system in publicly
% accessible spaces should be authorised only if the relevant law enforcement
% authority has completed a fundamental rights impact assessment and, unless provided
% otherwise in this Regulation, has registered the system in the database as set out
% in this Regulation.
authorised_use(Use) :-
    real_time_remote_biometric_identification_system(Use),
    publicly_accessible_space(Use),
    law_enforcement_authority(Authority),
    fundamental_rights_impact_assessment_completed(Authority),
    system_registered_in_database(Use).

% The reference database of persons should be appropriate for each use case in each
% of the situations mentioned above.
reference_database_appropriate(Database) :-
    use_case(UseCase),
    situation(Situation),
    reference_database_of_persons(Database),
    appropriate_for(Database, UseCase, Situation).

% In each of those exhaustively listed and narrowly defined situations, certain
% elements should be taken into account, in particular as regards the nature of the
% situation giving rise to the request and the consequences of the use for the rights
% and freedoms of all persons concerned and the safeguards and conditions provided
% for with the use.
must_take_into_account(Situation, nature_of_situation(Situation)) :-
    situation(Situation).
must_take_into_account(Situation, consequences_for_rights_and_freedoms(Situation)) :-
    situation(Situation).
must_take_into_account(Situation, safeguards_and_conditions(Situation)) :-
    situation(Situation).

% To ensure that those systems are used in a responsible and proportionate manner.
responsible_use(Use) :-
    real_time_remote_biometric_identification_system(Use),
    deployed_to_confirm_identity(Use),
    limited_to_strictly_necessary(Use),
    authorised_use(Use).

proportionate_use(Use) :-
    real_time_remote_biometric_identification_system(Use),
    deployed_to_confirm_identity(Use),
    limited_to_strictly_necessary(Use),
    authorised_use(Use).

% Helper predicates for compound terms
nature_of_situation(Situation) :-
    situation(Situation).

consequences_for_rights_and_freedoms(Situation) :-
    situation(Situation).

safeguards_and_conditions(Situation) :-
    situation(Situation).

fundamental_rights_impact_assessment_completed(Authority) :-
    law_enforcement_authority(Authority).

system_registered_in_database(System) :-
    real_time_remote_biometric_identification_system(System).

reference_database_of_persons(Database) :-
    reference_database_appropriate(Database).

appropriate_for(Database, UseCase, Situation) :-
    reference_database_of_persons(Database),
    use_case(UseCase),
    situation(Situation).
