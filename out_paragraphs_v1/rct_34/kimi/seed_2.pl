:- module(real_time_biometric_identification, [
    must_take_into_account/2,
    required_element/1,
    situation/1,
    must_deploy/2,
    must_limit/2,
    must_authorise/2,
    required_fundamental_rights_impact_assessment/1,
    required_registration/2,
    required_reference_database/1,
    appropriate_reference_database/2,
    law_enforcement_purpose/1,
    publicly_accessible_space/1,
    real_time_remote_biometric_identification_system/1,
    exhaustively_listed_situation/1,
    narrowly_defined_situation/1,
    nature_of_situation/1,
    consequences_for_rights_and_freedoms/1,
    safeguards_and_conditions/1,
    confirm_identity/1,
    specifically_targeted_individual/1,
    strictly_necessary/1,
    period_of_time/1,
    geographic_scope/1,
    personal_scope/1,
    evidence_or_indications/1,
    threat/1,
    victim/1,
    perpetrator/1,
    fundamental_rights_impact_assessment_completed/1,
    registered_in_database/2,
    relevant_law_enforcement_authority/1,
    database/1,
    use_case/1,
    reference_database/1
]).

:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic nature_of_situation/1.
:- dynamic consequences_for_rights_and_freedoms/1.
:- dynamic safeguards_and_conditions/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic publicly_accessible_space/1.
:- dynamic confirm_identity/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic strictly_necessary/1.
:- dynamic period_of_time/1.
:- dynamic geographic_scope/1.
:- dynamic personal_scope/1.
:- dynamic evidence_or_indications/1.
:- dynamic threat/1.
:- dynamic victim/1.
:- dynamic perpetrator/1.
:- dynamic relevant_law_enforcement_authority/1.
:- dynamic fundamental_rights_impact_assessment_completed/1.
:- dynamic registered_in_database/2.
:- dynamic database/1.
:- dynamic use_case/1.
:- dynamic reference_database/1.

% Situations and elements to take into account
situation(S) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

required_element(nature_of_situation(S)) :-
    situation(S).

required_element(consequences_for_rights_and_freedoms(S)) :-
    situation(S).

required_element(safeguards_and_conditions(S)) :-
    situation(S).

must_take_into_account(User, Element) :-
    real_time_remote_biometric_identification_system(System),
    used_in(User, System),
    situation(S),
    required_element(Element),
    relevant_to(Element, S).

relevant_to(nature_of_situation(S), S).
relevant_to(consequences_for_rights_and_freedoms(S), S).
relevant_to(safeguards_and_conditions(S), S).

used_in(_User, System) :-
    real_time_remote_biometric_identification_system(System).

% Deployment restrictions for law enforcement
must_deploy(Authority, deployment(System, confirm_identity(Individual))) :-
    real_time_remote_biometric_identification_system(System),
    relevant_law_enforcement_authority(Authority),
    law_enforcement_purpose(Purpose),
    used_for(System, Purpose),
    publicly_accessible_space(Space),
    deployed_in(System, Space),
    specifically_targeted_individual(Individual).

used_for(System, Purpose) :-
    real_time_remote_biometric_identification_system(System),
    law_enforcement_purpose(Purpose).

deployed_in(System, Space) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(Space).

% Limitations on use
must_limit(Authority, scope(System, limited(period_of_time))) :-
    must_deploy(Authority, deployment(System, confirm_identity(_Individual))).

must_limit(Authority, scope(System, limited(geographic_scope))) :-
    must_deploy(Authority, deployment(System, confirm_identity(_Individual))).

must_limit(Authority, scope(System, limited(personal_scope))) :-
    must_deploy(Authority, deployment(System, confirm_identity(_Individual))).

must_limit(_Authority, strictly_necessary(System)) :-
    real_time_remote_biometric_identification_system(System).

% Regard to evidence or indications
required_regard_to(evidence_or_indications(threat)) :-
    real_time_remote_biometric_identification_system(_System).

required_regard_to(evidence_or_indications(victim)) :-
    real_time_remote_biometric_identification_system(_System).

required_regard_to(evidence_or_indications(perpetrator)) :-
    real_time_remote_biometric_identification_system(_System).

% Authorisation requirements
must_authorise(Authority, use(System, publicly_accessible_space)) :-
    real_time_remote_biometric_identification_system(System),
    relevant_law_enforcement_authority(Authority),
    publicly_accessible_space(Space),
    deployed_in(System, Space).

required_fundamental_rights_impact_assessment(Authority) :-
    must_authorise(Authority, use(_System, publicly_accessible_space)).

required_registration(Authority, database) :-
    must_authorise(Authority, use(_System, publicly_accessible_space)).

% Authorisation is permitted only if conditions are met
permitted_authorisation(Authority, use(System, publicly_accessible_space)) :-
    must_authorise(Authority, use(System, publicly_accessible_space)),
    fundamental_rights_impact_assessment_completed(Authority),
    registered_in_database(System, database).

% Unless provided otherwise in this Regulation - exception clause
exempt_registration(Authority, System) :-
    must_authorise(Authority, use(System, publicly_accessible_space)),
    provided_otherwise_in_regulation(Authority, System).

:- dynamic provided_otherwise_in_regulation/2.

permitted_authorisation(Authority, use(System, publicly_accessible_space)) :-
    must_authorise(Authority, use(System, publicly_accessible_space)),
    fundamental_rights_impact_assessment_completed(Authority),
    exempt_registration(Authority, System).

% Reference database requirements
required_reference_database(reference_database(Persons)) :-
    real_time_remote_biometric_identification_system(System),
    used_with(System, reference_database(Persons)).

used_with(System, reference_database(Persons)) :-
    real_time_remote_biometric_identification_system(System),
    reference_database(Persons).

appropriate_reference_database(reference_database(Persons), use_case(Case)) :-
    required_reference_database(reference_database(Persons)),
    use_case(Case),
    situation(S),
    mentioned_in(Case, S).

mentioned_in(Case, S) :-
    use_case(Case),
    situation(S),
    relevant_to_use_case(Case, S).

:- dynamic relevant_to_use_case/2.
