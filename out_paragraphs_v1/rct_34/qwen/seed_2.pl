:- module(real_time_remote_biometric_identification, [
    must_take_into_account/2,
    nature_of_situation/1,
    consequences_for_rights_and_freedoms/1,
    safeguards_and_conditions_provided/1,
    must_deploy_only_to_confirm_identity/2,
    must_limit_use/2,
    evidence_or_indications_regarding_threats/1,
    evidence_or_indications_regarding_victims/1,
    evidence_or_indications_regarding_perpetrator/1,
    must_complete_fundamental_rights_impact_assessment/1,
    must_register_system/2,
    exemption_from_registration_applies/1,
    reference_database_appropriate/2,
    law_enforcement_authority/1,
    real_time_remote_biometric_identification_system/1,
    publicly_accessible_space/1,
    law_enforcement_purpose/1,
    specifically_targeted_individual/1,
    use_case/1,
    exhaustively_listed_situation/1
]).

% Input predicates for entities and circumstances not defined in this text
:- dynamic law_enforcement_authority/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic use_case/1.
:- dynamic exhaustively_listed_situation/1.
:- dynamic database/1.
:- dynamic regulation/1.

% Elements to be taken into account in exhaustively listed situations
must_take_into_account(Situation, nature_of_situation(Situation)) :-
    exhaustively_listed_situation(Situation).

must_take_into_account(Situation, consequences_for_rights_and_freedoms(Situation)) :-
    exhaustively_listed_situation(Situation).

must_take_into_account(Situation, safeguards_and_conditions_provided(Situation)) :-
    exhaustively_listed_situation(Situation).

nature_of_situation(Situation) :-
    exhaustively_listed_situation(Situation).

consequences_for_rights_and_freedoms(Situation) :-
    exhaustively_listed_situation(Situation).

safeguards_and_conditions_provided(Situation) :-
    exhaustively_listed_situation(Situation).

% Deployment constraints for real-time remote biometric identification
must_deploy_only_to_confirm_identity(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(_Space),
    law_enforcement_purpose(_Purpose).

must_limit_use(Authority, strictly_necessary_scope(System)) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(_Space),
    law_enforcement_purpose(_Purpose).

strictly_necessary_scope(System) :-
    real_time_remote_biometric_identification_system(System).

% Evidence considerations for limiting use
evidence_or_indications_regarding_threats(Evidence) :-
    nonvar(Evidence).

evidence_or_indications_regarding_victims(Evidence) :-
    nonvar(Evidence).

evidence_or_indications_regarding_perpetrator(Evidence) :-
    nonvar(Evidence).

% Authorisation conditions
must_complete_fundamental_rights_impact_assessment(Authority) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(_System),
    publicly_accessible_space(_Space).

must_register_system(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(_Space),
    \+ exemption_from_registration_applies(System).

exemption_from_registration_applies(System) :-
    real_time_remote_biometric_identification_system(System),
    regulation_provides_otherwise(System).

% Placeholder for regulatory exception; input predicate expected from external module
:- dynamic regulation_provides_otherwise/1.

% Reference database appropriateness
reference_database_appropriate(Database, UseCase) :-
    database(Database),
    use_case(UseCase),
    exhaustively_listed_situation(_Situation).
