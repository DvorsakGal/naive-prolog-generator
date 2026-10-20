:- module(real_time_remote_biometric_identification, [
    required_responsible_use/1,
    required_proportionate_use/1,
    required_consideration/2,
    must_take_into_account/2,
    required_nature_of_situation/1,
    required_consequences_for_rights/1,
    required_safeguards/1,
    required_conditions/1,
    must_deploy/2,
    required_confirm_identity/1,
    required_specifically_targeted/1,
    required_limitation/1,
    required_temporal_limitation/1,
    required_geographic_limitation/1,
    required_personal_scope_limitation/1,
    required_regard_to_evidence/1,
    required_regard_to_threats/1,
    required_regard_to_victims/1,
    required_regard_to_perpetrator/1,
    must_authorise/2,
    required_fundamental_rights_impact_assessment/1,
    required_registration_in_database/1,
    required_appropriate_reference_database/1,
    exhaustively_listed_situation/1,
    narrowly_defined_situation/1,
    law_enforcement_purpose/1,
    publicly_accessible_space/1,
    real_time_remote_biometric_identification_system/1,
    relevant_law_enforcement_authority/1,
    regulation_provides_otherwise/1,
    database_set_out_in_regulation/1,
    reference_database/1,
    use_case/1,
    person_concerned/1,
    specifically_targeted_individual/1,
    threat/1,
    victim/1,
    perpetrator/1,
    evidence/1,
    indication/1
]).

:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic publicly_accessible_space/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic relevant_law_enforcement_authority/1.
:- dynamic regulation_provides_otherwise/1.
:- dynamic database_set_out_in_regulation/1.
:- dynamic reference_database/1.
:- dynamic use_case/1.
:- dynamic person_concerned/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic threat/1.
:- dynamic victim/1.
:- dynamic perpetrator/1.
:- dynamic evidence/1.
:- dynamic indication/1.

% Responsible and proportionate use requirements
required_responsible_use(S) :-
    real_time_remote_biometric_identification_system(S).

required_proportionate_use(S) :-
    real_time_remote_biometric_identification_system(S).

% Situation characteristics
situation(Sit) :-
    exhaustively_listed_situation(Sit).

situation(Sit) :-
    narrowly_defined_situation(Sit).

% Elements to be taken into account in each situation
required_consideration(Sit, nature_of_situation) :-
    situation(Sit).

required_consideration(Sit, consequences_for_rights) :-
    situation(Sit).

required_consideration(Sit, safeguards) :-
    situation(Sit).

required_consideration(Sit, conditions) :-
    situation(Sit).

must_take_into_account(Sit, Element) :-
    required_consideration(Sit, Element).

% Specific required elements
required_nature_of_situation(Sit) :-
    situation(Sit),
    must_take_into_account(Sit, nature_of_situation).

required_consequences_for_rights(Sit) :-
    situation(Sit),
    must_take_into_account(Sit, consequences_for_rights),
    person_concerned(_P).

required_safeguards(Sit) :-
    situation(Sit),
    must_take_into_account(Sit, safeguards).

required_conditions(Sit) :-
    situation(Sit),
    must_take_into_account(Sit, conditions).

% Deployment restrictions for law enforcement in publicly accessible spaces
must_deploy(Authority, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    relevant_law_enforcement_authority(Authority).

required_confirm_identity(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S).

required_specifically_targeted(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    specifically_targeted_individual(_I).

% Limitation requirements
required_limitation(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S).

required_temporal_limitation(S) :-
    required_limitation(S).

required_geographic_limitation(S) :-
    required_limitation(S).

required_personal_scope_limitation(S) :-
    required_limitation(S).

% Strict necessity requirement
required_strictly_necessary(S) :-
    required_limitation(S).

% Regard to specific factors
required_regard_to_evidence(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    evidence(_E).

required_regard_to_threats(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    threat(_T).

required_regard_to_victims(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    victim(_V).

required_regard_to_perpetrator(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    perpetrator(_P).

% Authorisation requirements
must_authorise(Authority, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    relevant_law_enforcement_authority(Authority).

required_fundamental_rights_impact_assessment(Authority) :-
    relevant_law_enforcement_authority(Authority),
    must_authorise(Authority, _S).

required_registration_in_database(Authority) :-
    relevant_law_enforcement_authority(Authority),
    must_authorise(Authority, _S),
    \+ regulation_provides_otherwise(_).

% Reference database requirements
required_appropriate_reference_database(DB) :-
    reference_database(DB),
    use_case(UC),
    situation(Sit),
    appropriate_for(DB, UC, Sit).

appropriate_for(DB, UC, Sit) :-
    reference_database(DB),
    use_case(UC),
    situation(Sit).
