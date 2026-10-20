:- module(real_time_biometric_identification, [
    responsible_use/1,
    proportionate_use/1,
    situation_applies/1,
    must_take_into_account/2,
    nature_of_situation/1,
    consequences_for_rights_and_freedoms/1,
    safeguards_and_conditions/1,
    use_of_real_time_remote_biometric_identification/1,
    purpose_law_enforcement/1,
    must_deploy_to_confirm_identity/2,
    must_be_limited/2,
    strictly_necessary/2,
    period_of_time/1,
    geographic_scope/1,
    personal_scope/1,
    evidence_regarding_threats/1,
    evidence_regarding_victims/1,
    evidence_regarding_perpetrator/1,
    must_be_authorised/2,
    completed_fundamental_rights_impact_assessment/1,
    registered_in_database/1,
    reference_database_of_persons/1,
    appropriate_for_use_case/2
]).

% Clause 1: Responsible and proportionate use
responsible_use(System) :-
    use_of_real_time_remote_biometric_identification(System),
    situation_applies(Situation),
    must_take_into_account(System, elements(Situation)).

proportionate_use(System) :-
    use_of_real_time_remote_biometric_identification(System),
    situation_applies(Situation),
    must_take_into_account(System, elements(Situation)).

must_take_into_account(System, elements(Situation)) :-
    use_of_real_time_remote_biometric_identification(System),
    situation_applies(Situation),
    nature_of_situation(Situation),
    consequences_for_rights_and_freedoms(consequences(Situation)),
    safeguards_and_conditions(safeguards(Situation)).

% Clause 2: Deployment to confirm identity
must_deploy_to_confirm_identity(System, confirm_identity(Individual)) :-
    use_of_real_time_remote_biometric_identification(System),
    purpose_law_enforcement(System),
    specifically_targeted_individual(Individual).

must_be_limited(System, limits(Period, Geographic, Personal)) :-
    use_of_real_time_remote_biometric_identification(System),
    purpose_law_enforcement(System),
    strictly_necessary(System, period_of_time(Period)),
    strictly_necessary(System, geographic_scope(Geographic)),
    strictly_necessary(System, personal_scope(Personal)),
    evidence_regarding_threats(Threats),
    evidence_regarding_victims(Victims),
    evidence_regarding_perpetrator(Perpetrator).

% Clause 3: Authorisation conditions
must_be_authorised(System, law_enforcement_authority(Authority)) :-
    use_of_real_time_remote_biometric_identification(System),
    completed_fundamental_rights_impact_assessment(Authority),
    registered_in_database(System).

registered_in_database(System) :-
    use_of_real_time_remote_biometric_identification(System),
    \+ provided_otherwise_in_regulation(System).

% Clause 4: Reference database appropriateness
appropriate_for_use_case(Database, UseCase) :-
    reference_database_of_persons(Database),
    situation_applies(Situation),
    use_case_applies(UseCase, Situation).

% Dynamic predicates for external facts
:- dynamic use_of_real_time_remote_biometric_identification/1.
:- dynamic situation_applies/1.
:- dynamic nature_of_situation/1.
:- dynamic consequences_for_rights_and_freedoms/1.
:- dynamic safeguards_and_conditions/1.
:- dynamic purpose_law_enforcement/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic strictly_necessary/2.
:- dynamic evidence_regarding_threats/1.
:- dynamic evidence_regarding_victims/1.
:- dynamic evidence_regarding_perpetrator/1.
:- dynamic completed_fundamental_rights_impact_assessment/1.
:- dynamic provided_otherwise_in_regulation/1.
:- dynamic reference_database_of_persons/1.
:- dynamic use_case_applies/2.
