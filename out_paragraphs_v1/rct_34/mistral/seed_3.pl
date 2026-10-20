:- module(remote_biometric_identification_use, [
    must_consider_element/2,
    must_deploy_for_purpose/2,
    must_limit_deployment/2,
    must_be_authorised/2,
    must_complete_assessment/2,
    must_register_system/2,
    reference_database_appropriate/2,
    real_time_remote_biometric_identification_system/1,
    publicly_accessible_space/1,
    law_enforcement_purpose/1,
    targeted_individual/1,
    fundamental_rights_impact_assessment/1,
    database_registration/1
]).

% Input predicates: facts about the world the text does not settle
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic targeted_individual/1.
:- dynamic fundamental_rights_impact_assessment/1.
:- dynamic database_registration/1.

% In each exhaustively listed and narrowly defined situation, certain elements should be taken into account
must_consider_element(S, nature_of_situation(Situation)) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S),
    situation_giving_rise_to_request(S, Situation).

must_consider_element(S, consequences_for_rights_and_freedoms(Persons)) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S),
    all_persons_concerned(S, Persons).

must_consider_element(S, safeguards_and_conditions(S)) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S),
    provided_for_with_use(S, safeguards_and_conditions(S)).

% Use of real-time remote biometric identification systems in publicly accessible spaces
% for the purpose of law enforcement should be deployed only to confirm the specifically targeted individual's identity
must_deploy_for_purpose(S, confirm_identity(P)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    used_in_space(S, Space),
    law_enforcement_purpose(Purpose),
    used_for_purpose(S, Purpose),
    targeted_individual(P).

% Should be limited to what is strictly necessary concerning the period of time,
% as well as the geographic and personal scope
must_limit_deployment(S, period_of_time(T)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    used_in_space(S, Space),
    law_enforcement_purpose(Purpose),
    used_for_purpose(S, Purpose),
    strictly_necessary(S, period_of_time(T)).

must_limit_deployment(S, geographic_scope(G)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    used_in_space(S, Space),
    law_enforcement_purpose(Purpose),
    used_for_purpose(S, Purpose),
    strictly_necessary(S, geographic_scope(G)).

must_limit_deployment(S, personal_scope(P)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    used_in_space(S, Space),
    law_enforcement_purpose(Purpose),
    used_for_purpose(S, Purpose),
    strictly_necessary(S, personal_scope(P)).

% Having regard in particular to the evidence or indications regarding the threats, the victims or perpetrator
must_have_regard_to(S, evidence_or_indications(Threats)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    used_in_space(S, Space),
    law_enforcement_purpose(Purpose),
    used_for_purpose(S, Purpose),
    threats(S, Threats).

must_have_regard_to(S, evidence_or_indications(victims(Victims))) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    used_in_space(S, Space),
    law_enforcement_purpose(Purpose),
    used_for_purpose(S, Purpose),
    victims(S, Victims).

must_have_regard_to(S, evidence_or_indications(perpetrator(Perpetrator))) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    used_in_space(S, Space),
    law_enforcement_purpose(Purpose),
    used_for_purpose(S, Purpose),
    perpetrator(S, Perpetrator).

% The use should be authorised only if the relevant law enforcement authority has completed
% a fundamental rights impact assessment
must_be_authorised(S, Authority) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    used_in_space(S, Space),
    law_enforcement_authority(Authority),
    uses_system(Authority, S).

must_complete_assessment(Authority, S) :-
    must_be_authorised(S, Authority),
    fundamental_rights_impact_assessment(Assessment),
    completed_by(Authority, Assessment),
    concerns_system(Assessment, S).

% And, unless provided otherwise in this Regulation, has registered the system in the database
must_register_system(Authority, S) :-
    must_be_authorised(S, Authority),
    database_registration(Registration),
    registered_by(Authority, Registration),
    concerns_system(Registration, S),
    \+ provided_otherwise_in_regulation(exception(S)).

% The reference database of persons should be appropriate for each use case in each of the situations mentioned above
reference_database_appropriate(Database, UseCase) :-
    reference_database_of_persons(Database),
    use_case(UseCase),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    situation_mentioned(Situation),
    applies_to_use_case(UseCase, Situation).
