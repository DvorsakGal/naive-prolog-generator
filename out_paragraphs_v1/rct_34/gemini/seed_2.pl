:- module(real_time_remote_biometric_identification, [
    must_take_into_account/2,
    permitted_use/1,
    authorised_use/1,
    required_element/1,
    appropriate_reference_database/1
]).

:- dynamic situation/1.
:- dynamic exhaustively_listed/1.
:- dynamic narrowly_defined/1.
:- dynamic law_enforcement_authority/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic purpose_law_enforcement/1.
:- dynamic target_specifically_confirmed/1.
:- dynamic strictly_necessary_limitation/1.
:- dynamic completed_fundamental_rights_impact_assessment/2.
:- dynamic registered_in_database/2.
:- dynamic exempt_registration/1.
:- dynamic reference_database_of_persons/1.
:- dynamic appropriate_for_use_case/2.

% In each of those exhaustively listed and narrowly defined situations, certain
% elements should be taken into account, in particular the nature of the situation,
% the consequences for rights and freedoms, and the safeguards and conditions.
must_take_into_account(Authority, nature_of_situation(Situation)) :-
    law_enforcement_authority(Authority),
    situation(Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

must_take_into_account(Authority, consequences_for_rights_and_freedoms(Situation)) :-
    law_enforcement_authority(Authority),
    situation(Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

must_take_into_account(Authority, safeguards_and_conditions(Situation)) :-
    law_enforcement_authority(Authority),
    situation(Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

required_element(nature_of_situation(Situation)) :-
    situation(Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

required_element(consequences_for_rights_and_freedoms(Situation)) :-
    situation(Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

required_element(safeguards_and_conditions(Situation)) :-
    situation(Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

% The use of real-time remote biometric identification systems in publicly accessible
% spaces for the purpose of law enforcement should be deployed only to confirm the
% specifically targeted individual's identity and should be limited to what is strictly
% necessary concerning the period of time, geographic and personal scope.
permitted_use(deployment(System, Space)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(Space),
    purpose_law_enforcement(deployment(System, Space)),
    target_specifically_confirmed(deployment(System, Space)),
    strictly_necessary_limitation(time_period(deployment(System, Space))),
    strictly_necessary_limitation(geographic_scope(deployment(System, Space))),
    strictly_necessary_limitation(personal_scope(deployment(System, Space))).

% The use should be authorised only if the relevant law enforcement authority has
% completed a fundamental rights impact assessment and, unless provided otherwise,
% has registered the system in the database.
authorised_use(deployment(System, Space)) :-
    permitted_use(deployment(System, Space)),
    law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority, System),
    registered_in_database(Authority, System).

authorised_use(deployment(System, Space)) :-
    permitted_use(deployment(System, Space)),
    law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority, System),
    exempt_registration(deployment(System, Space)).

% The reference database of persons should be appropriate for each use case in each
% of the situations.
appropriate_reference_database(Database) :-
    reference_database_of_persons(Database),
    situation(Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation),
    appropriate_for_use_case(Database, Situation).
