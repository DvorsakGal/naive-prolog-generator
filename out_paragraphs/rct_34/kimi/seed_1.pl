:- module(real_time_remote_biometric_identification, [
    must_take_into_account/2,
    required_element/1,
    situation_gives_rise_to_request/1,
    consequences_for_rights_and_freedoms/1,
    safeguards_and_conditions/1,
    must_deploy/2,
    purpose_confirm_identity/1,
    limited_to_strictly_necessary/1,
    period_of_time/1,
    geographic_scope/1,
    personal_scope/1,
    evidence_or_indications/1,
    threat/1,
    victim/1,
    perpetrator/1,
    must_be_authorised/1,
    completed_fundamental_rights_impact_assessment/1,
    registered_in_database/1,
    reference_database_appropriate/2,
    use_case/1,
    situation/1,
    real_time_remote_biometric_identification_system/1,
    publicly_accessible_space/1,
    law_enforcement_purpose/1,
    specifically_targeted_individual/1,
    relevant_law_enforcement_authority/1,
    regulation_provides_otherwise/1,
    database_as_set_out_in_regulation/1
]).

% Situations and use cases
situation(S) :- real_time_remote_biometric_identification_system(S), publicly_accessible_space(S), law_enforcement_purpose(S).

% Required elements to take into account
required_element(nature_of_situation).
required_element(consequences_rights_and_freedoms).
required_element(safeguards_and_conditions).

must_take_into_account(S, Element) :-
    situation(S),
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S),
    required_element(Element),
    (
        Element = nature_of_situation, nature_of_situation_giving_rise_to_request(S);
        Element = consequences_rights_and_freedoms, consequences_for_rights_and_freedoms(S);
        Element = safeguards_and_conditions, safeguards_and_conditions(S)
    ).

nature_of_situation_giving_rise_to_request(S) :-
    situation(S),
    situation_gives_rise_to_request(S).

consequences_for_rights_and_freedoms(S) :-
    situation(S),
    affects_rights_and_freedoms(S, all_persons_concerned).

safeguards_and_conditions(S) :-
    situation(S),
    provided_with_use(S).

% Deployment restrictions
must_deploy(Authority, S) :-
    relevant_law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    purpose_confirm_identity(S),
    specifically_targeted_individual(S).

purpose_confirm_identity(S) :-
    real_time_remote_biometric_identification_system(S),
    identity_to_confirm(S, specifically_targeted_individual(S)).

limited_to_strictly_necessary(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    period_of_time_limited(S),
    geographic_scope_limited(S),
    personal_scope_limited(S).

period_of_time(S) :- period_of_time_limited(S).
geographic_scope(S) :- geographic_scope_limited(S).
personal_scope(S) :- personal_scope_limited(S).

period_of_time_limited(S) :-
    real_time_remote_biometric_identification_system(S),
    strictly_necessary(period_of_time, S),
    regard_to(S, evidence_or_indications(S)).

geographic_scope_limited(S) :-
    real_time_remote_biometric_identification_system(S),
    strictly_necessary(geographic_scope, S),
    regard_to(S, evidence_or_indications(S)).

personal_scope_limited(S) :-
    real_time_remote_biometric_identification_system(S),
    strictly_necessary(personal_scope, S),
    regard_to(S, evidence_or_indications(S)).

evidence_or_indications(S) :-
    real_time_remote_biometric_identification_system(S),
    (
        threat(T), evidence_regarding(S, T);
        victim(V), evidence_regarding(S, V);
        perpetrator(P), evidence_regarding(S, P)
    ).

% Authorisation conditions
must_be_authorised(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    use_for_law_enforcement(S).

completed_fundamental_rights_impact_assessment(Authority) :-
    relevant_law_enforcement_authority(Authority),
    completed_assessment(Authority, fundamental_rights_impact).

registered_in_database(S) :-
    real_time_remote_biometric_identification_system(S),
    registered(Authority, S, Database),
    database_as_set_out_in_regulation(Database),
    relevant_law_enforcement_authority(Authority),
    \+ regulation_provides_otherwise(S).

% Authorisation requirement with conditions
must_be_authorised(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    relevant_law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority),
    registered_in_database(S).

% Reference database requirements
reference_database_appropriate(Database, UseCase) :-
    reference_database(Database),
    use_case(UseCase),
    situation_for_use_case(UseCase, Situation),
    appropriate_for(Database, Situation).

reference_database_appropriate(Database, S) :-
    reference_database(Database),
    real_time_remote_biometric_identification_system(S),
    use_case_for_situation(UseCase, S),
    appropriate_for(Database, UseCase).

% Dynamic declarations for inputs from world
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic situation_gives_rise_to_request/1.
:- dynamic affects_rights_and_freedoms/2.
:- dynamic provided_with_use/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic identity_to_confirm/2.
:- dynamic strictly_necessary/2.
:- dynamic regard_to/2.
:- dynamic evidence_regarding/2.
:- dynamic threat/1.
:- dynamic victim/1.
:- dynamic perpetrator/1.
:- dynamic use_for_law_enforcement/1.
:- dynamic completed_assessment/2.
:- dynamic registered/3.
:- dynamic regulation_provides_otherwise/1.
:- dynamic reference_database/1.
:- dynamic use_case/1.
:- dynamic situation_for_use_case/2.
:- dynamic use_case_for_situation/2.
:- dynamic appropriate_for/2.
:- dynamic all_persons_concerned/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic relevant_law_enforcement_authority/1.
:- dynamic database_as_set_out_in_regulation/1.
