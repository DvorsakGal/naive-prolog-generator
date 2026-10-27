# rct_34

## Text

In order to ensure that those systems are used in a responsible and proportionate manner, it is also important to establish that, in each of those exhaustively listed and narrowly defined situations, certain elements should be taken into account, in particular as regards the nature of the situation giving rise to the request and the consequences of the use for the rights and freedoms of all persons concerned and the safeguards and conditions provided for with the use. In addition, the use of real-time remote biometric identification systems in publicly accessible spaces for the purpose of law enforcement should be deployed only to confirm the specifically targeted individual’s identity and should be limited to what is strictly necessary concerning the period of time, as well as the geographic and personal scope, having regard in particular to the evidence or indications regarding the threats, the victims or perpetrator. The use of the real-time remote biometric identification system in publicly accessible spaces should be authorised only if the relevant law enforcement authority has completed a fundamental rights impact assessment and, unless provided otherwise in this Regulation, has registered the system in the database as set out in this Regulation. The reference database of persons should be appropriate for each use case in each of the situations mentioned above.

## Numbers

| output | loads | module | clauses | preds | inputs | coverage | violations |
|---|---|---|---|---|---|---|---|
| deepseek/seed_1 | NO | real_time_biometric_identification | 11 | 11 | 17 | 0.671 | 3 |
| deepseek/seed_2 | NO | real_time_biometric_identification | 12 | 12 | 11 | 0.646 | 12 |
| deepseek/seed_3 | yes | real_time_biometric_identification | 16 | 14 | 14 | 0.622 | 2 |
| gemini/seed_1 | yes | real_time_remote_biometric_identification | 7 | 6 | 18 | 0.622 | 1 |
| gemini/seed_2 | yes | real_time_remote_biometric_identification | 6 | 5 | 18 | 0.512 | 0 |
| gemini/seed_3 | yes | real_time_remote_biometric_identification | 6 | 5 | 18 | 0.585 | 0 |
| kimi/seed_1 | yes | real_time_remote_biometric_identification | 24 | 20 | 27 | 0.793 | 17 |
| kimi/seed_2 | yes | real_time_remote_biometric_identification | 19 | 14 | 12 | 0.72 | 9 |
| kimi/seed_3 | NO | remote_biometric_identification_law_enforcement | 15 | 11 | 14 | 0.78 | 8 |
| mistral/seed_1 | NO | responsible_use_biometric_systems | 17 | 15 | 7 | 0.744 | 15 |
| mistral/seed_2 | yes | responsible_use_biometric_systems | 14 | 8 | 19 | 0.744 | 2 |
| mistral/seed_3 | NO | remote_biometric_identification_safeguards | 16 | 11 | 10 | 0.756 | 12 |
| qwen/seed_1 | yes | real_time_remote_biometric_identification | 21 | 17 | 9 | 0.732 | 6 |
| qwen/seed_2 | yes | real_time_remote_biometric_identification | 16 | 14 | 10 | 0.671 | 2 |
| qwen/seed_3 | NO | real_time_remote_biometric_identification | 8 | 6 | 15 | 0.549 | 5 |

Within-model (3 seeds): deepseek: J_preds 0.25, J_clauses 0.0, consensus 0.054; gemini: J_preds 0.282, J_clauses 0.0, consensus 0.061; kimi: J_preds 0.109, J_clauses 0.016, consensus 0.0; mistral: J_preds 0.177, J_clauses 0.022, consensus 0.053; qwen: J_preds 0.189, J_clauses 0.03, consensus 0.127

## deepseek seed 1

```prolog
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
```

## deepseek seed 2

```prolog
:- module(real_time_biometric_identification, [
    responsible_and_proportionate_use/1,
    must_take_into_account/2,
    deployed_to_confirm_identity/1,
    limited_to_strictly_necessary/1,
    authorised_use/1,
    completed_fundamental_rights_impact_assessment/1,
    registered_system_in_database/1,
    appropriate_reference_database/2
]).

:- dynamic law_enforcement_authority/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic use_case/1.
:- dynamic situation/1.

% Clause 1: Responsible and proportionate use
responsible_and_proportionate_use(System) :-
    real_time_remote_biometric_identification_system(System),
    must_take_into_account(System, nature_of_situation),
    must_take_into_account(System, consequences_for_rights_and_freedoms),
    must_take_into_account(System, safeguards_and_conditions).

% Clause 2: Deployment constraints
deployed_to_confirm_identity(System) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose),
    specifically_targeted_individual(Individual),
    must_confirm_identity(System, Individual).

limited_to_strictly_necessary(System) :-
    real_time_remote_biometric_identification_system(System),
    must_limit_period_of_time(System),
    must_limit_geographic_scope(System),
    must_limit_personal_scope(System),
    must_have_regard_to(System, evidence_or_indications(threats)),
    must_have_regard_to(System, evidence_or_indications(victims)),
    must_have_regard_to(System, evidence_or_indications(perpetrator)).

% Clause 3: Authorisation conditions
authorised_use(System) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(Space),
    law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority),
    registered_system_in_database(System).

registered_system_in_database(System) :-
    real_time_remote_biometric_identification_system(System),
    \+ exempt_from_registration(System).

% Clause 4: Reference database appropriateness
appropriate_reference_database(Database, UseCase) :-
    reference_database(Database),
    use_case(UseCase),
    situation(Situation),
    must_be_appropriate_for(Database, UseCase, Situation).

% Helper predicates
must_confirm_identity(System, Individual) :-
    real_time_remote_biometric_identification_system(System),
    specifically_targeted_individual(Individual).

must_limit_period_of_time(System) :-
    real_time_remote_biometric_identification_system(System).

must_limit_geographic_scope(System) :-
    real_time_remote_biometric_identification_system(System).

must_limit_personal_scope(System) :-
    real_time_remote_biometric_identification_system(System).

must_have_regard_to(System, Evidence) :-
    real_time_remote_biometric_identification_system(System).

must_be_appropriate_for(Database, UseCase, Situation) :-
    reference_database(Database),
    use_case(UseCase),
    situation(Situation).
```

## deepseek seed 3

```prolog
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
```

## gemini seed 1

```prolog
:- module(real_time_remote_biometric_identification, [
    permitted_use/1,
    authorised_use/1,
    responsible_and_proportionate_use/1,
    strictly_necessary_limits/1,
    appropriate_reference_database/1
]).

:- dynamic exhausted_and_narrowly_defined_situation/1.
:- dynamic takes_into_account_situation_nature/1.
:- dynamic takes_into_account_rights_consequences/1.
:- dynamic takes_into_account_safeguards_and_conditions/1.
:- dynamic real_time_remote_biometric_identification/1.
:- dynamic publicly_accessible_space/1.
:- dynamic purpose_law_enforcement/1.
:- dynamic confirms_specifically_targeted_individual_identity/1.
:- dynamic strictly_necessary_period/1.
:- dynamic strictly_necessary_geographic_scope/1.
:- dynamic strictly_necessary_personal_scope/1.
:- dynamic regards_threat_victim_perpetrator_evidence/1.
:- dynamic law_enforcement_authority/1.
:- dynamic completes_fundamental_rights_impact_assessment/2.
:- dynamic registers_system_in_database/2.
:- dynamic database_registration_exempt/1.
:- dynamic appropriate_for_use_case/2.
:- dynamic reference_database_of_persons/1.

% Ensures responsible and proportionate use in exhaustively listed, narrowly defined situations
responsible_and_proportionate_use(Use) :-
    exhausted_and_narrowly_defined_situation(Use),
    takes_into_account_situation_nature(Use),
    takes_into_account_rights_consequences(Use),
    takes_into_account_safeguards_and_conditions(Use).

% Use strictly limited in time, geographic and personal scope
strictly_necessary_limits(Use) :-
    strictly_necessary_period(Use),
    strictly_necessary_geographic_scope(Use),
    strictly_necessary_personal_scope(Use),
    regards_threat_victim_perpetrator_evidence(Use).

% Permitted use for real-time remote biometric identification in publicly accessible spaces for law enforcement
permitted_use(Use) :-
    real_time_remote_biometric_identification(Use),
    publicly_accessible_space(Use),
    purpose_law_enforcement(Use),
    confirms_specifically_targeted_individual_identity(Use),
    strictly_necessary_limits(Use),
    responsible_and_proportionate_use(Use).

% Authorisation requirements: assessment and registration
authorised_use(Use) :-
    permitted_use(Use),
    law_enforcement_authority(Authority),
    completes_fundamental_rights_impact_assessment(Authority, Use),
    registered_or_exempt(Authority, Use).

registered_or_exempt(_Authority, Use) :-
    database_registration_exempt(Use).
registered_or_exempt(Authority, Use) :-
    registers_system_in_database(Authority, Use).

% The reference database of persons must be appropriate for each use case
appropriate_reference_database(Database) :-
    reference_database_of_persons(Database),
    appropriate_for_use_case(Database, Use),
    exhausted_and_narrowly_defined_situation(Use).
```

## gemini seed 2

```prolog
:- module(real_time_remote_biometric_identification, [
    permitted_deployment/1,
    authorised_use/1,
    required_consideration/1,
    required_limitation/1,
    appropriate_reference_database/1
]).

:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic considers_situation_nature/1.
:- dynamic considers_rights_consequences/1.
:- dynamic considers_safeguards_and_conditions/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic objective_law_enforcement/1.
:- dynamic strictly_necessary_temporal_scope/1.
:- dynamic strictly_necessary_geographic_scope/1.
:- dynamic strictly_necessary_personal_scope/1.
:- dynamic targets_specific_individual_identity/1.
:- dynamic law_enforcement_authority/1.
:- dynamic completed_impact_assessment/2.
:- dynamic registered_system/2.
:- dynamic exempt_database_registration/1.
:- dynamic reference_database_of_persons/1.
:- dynamic appropriate_for_use_case/2.

% Elements that must be taken into account in each exhaustively listed
% and narrowly defined situation
required_consideration(Situation) :-
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    considers_situation_nature(Situation),
    considers_rights_consequences(Situation),
    considers_safeguards_and_conditions(Situation).

% Temporal, geographic, and personal limitation strictly necessary
required_limitation(Use) :-
    strictly_necessary_temporal_scope(Use),
    strictly_necessary_geographic_scope(Use),
    strictly_necessary_personal_scope(Use).

% Deployment permitted only to confirm specifically targeted individual's identity
% and strictly limited in time, geographic and personal scope
permitted_deployment(Use) :-
    real_time_remote_biometric_identification_system(Use),
    publicly_accessible_space(Use),
    objective_law_enforcement(Use),
    targets_specific_individual_identity(Use),
    required_limitation(Use).

% Authorisation requires fundamental rights impact assessment and database registration
% (unless exempted)
authorised_use(Use) :-
    real_time_remote_biometric_identification_system(Use),
    publicly_accessible_space(Use),
    objective_law_enforcement(Use),
    law_enforcement_authority(Authority),
    completed_impact_assessment(Authority, fundamental_rights(Use)),
    registered_system(Authority, database(Use)).

authorised_use(Use) :-
    real_time_remote_biometric_identification_system(Use),
    publicly_accessible_space(Use),
    objective_law_enforcement(Use),
    law_enforcement_authority(Authority),
    completed_impact_assessment(Authority, fundamental_rights(Use)),
    exempt_database_registration(Use).

% The reference database of persons should be appropriate for each use case
% in each of the exhaustively listed and narrowly defined situations
appropriate_reference_database(Database) :-
    reference_database_of_persons(Database),
    appropriate_for_use_case(Database, UseCase),
    exhaustively_listed_situation(UseCase),
    narrowly_defined_situation(UseCase).
```

## gemini seed 3

```prolog
:- module(real_time_remote_biometric_identification, [
    required_element_considered/1,
    permitted_use/1,
    strictly_necessary_scope/1,
    authorised_use/1,
    appropriate_reference_database/1
]).

:- dynamic exhausted_narrowly_defined_situation/1.
:- dynamic considers_nature_of_situation/1.
:- dynamic considers_consequences_for_rights_and_freedoms/1.
:- dynamic considers_safeguards_and_conditions/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic purpose_law_enforcement/1.
:- dynamic confirms_specifically_targeted_individual_identity/1.
:- dynamic strictly_necessary_period_of_time/1.
:- dynamic strictly_necessary_geographic_scope/1.
:- dynamic strictly_necessary_personal_scope/1.
:- dynamic regards_evidence_or_indications/1.
:- dynamic law_enforcement_authority/1.
:- dynamic completed_fundamental_rights_impact_assessment/2.
:- dynamic registered_system_in_database/2.
:- dynamic exempt_from_database_registration/1.
:- dynamic reference_database/1.
:- dynamic appropriate_for_use_case/2.

% Elements that should be taken into account in each exhaustively listed and narrowly defined situation
required_element_considered(Use) :-
    exhausted_narrowly_defined_situation(Use),
    considers_nature_of_situation(Use),
    considers_consequences_for_rights_and_freedoms(Use),
    considers_safeguards_and_conditions(Use).

% Use should be deployed only to confirm the specifically targeted individual's identity
% and limited to what is strictly necessary concerning period of time, geographic and personal scope
strictly_necessary_scope(Use) :-
    strictly_necessary_period_of_time(Use),
    strictly_necessary_geographic_scope(Use),
    strictly_necessary_personal_scope(Use),
    regards_evidence_or_indications(Use).

permitted_use(Use) :-
    real_time_remote_biometric_identification_system(Use),
    publicly_accessible_space(Use),
    purpose_law_enforcement(Use),
    confirms_specifically_targeted_individual_identity(Use),
    strictly_necessary_scope(Use).

% Authorisation requirements for the use of real-time remote biometric identification systems
authorised_use(Use) :-
    permitted_use(Use),
    law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority, Use),
    registered_system_in_database(Authority, Use).
authorised_use(Use) :-
    permitted_use(Use),
    law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority, Use),
    exempt_from_database_registration(Use).

% Reference database of persons should be appropriate for each use case in each situation
appropriate_reference_database(Database) :-
    reference_database(Database),
    exhausted_narrowly_defined_situation(Use),
    appropriate_for_use_case(Database, Use).
```

## kimi seed 1

```prolog
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
```

## kimi seed 2

```prolog
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
```

## kimi seed 3

```prolog
:- module(remote_biometric_identification_law_enforcement, [
    responsible_use_required/1,
    proportionate_use_required/1,
    must_take_into_account/2,
    situation_giving_rise/1,
    consequences_for_rights_and_freedoms/1,
    safeguards_and_conditions/1,
    must_deploy/2,
    purpose_confirm_identity/2,
    strictly_necessary_concerning_period/1,
    strictly_necessary_concerning_geographic_scope/1,
    strictly_necessary_concerning_personal_scope/1,
    must_have_regard_to/2,
    evidence_or_indications_threats/1,
    evidence_or_indications_victims/1,
    evidence_or_indications_perpetrator/1,
    must_be_authorised/2,
    completed_fundamental_rights_impact_assessment/1,
    registered_in_database/1,
    appropriate_reference_database/1
]).

:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic relevant_law_enforcement_authority/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic use_case/1.
:- dynamic situation_mentioned_above/1.

% General requirements for responsible and proportionate use
responsible_use_required(S) :-
    real_time_remote_biometric_identification_system(S).

proportionate_use_required(S) :-
    real_time_remote_biometric_identification_system(S).

% Elements to be taken into account in exhaustively listed and narrowly defined situations
must_take_into_account(S, nature_of_situation(Situation)) :-
    real_time_remote_biometric_identification_system(S),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation).

must_take_into_account(S, consequences_for_rights_and_freedoms(Persons)) :-
    real_time_remote_biometric_identification_system(S),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    person_concerned(Persons).

must_take_into_account(S, safeguards_and_conditions(S)) :-
    real_time_remote_biometric_identification_system(S),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation).

% Deployment restrictions for law enforcement in publicly accessible spaces
must_deploy(Authority, deployment(S, confirm_identity(Individual))) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose),
    relevant_law_enforcement_authority(Authority),
    specifically_targeted_individual(Individual).

strictly_necessary_concerning_period(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose).

strictly_necessary_concerning_geographic_scope(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose).

strictly_necessary_concerning_personal_scope(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose).

must_have_regard_to(S, evidence_or_indications_threats(Evidence)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose).

must_have_regard_to(S, evidence_or_indications_victims(Evidence)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose).

must_have_regard_to(S, evidence_or_indications_perpetrator(Evidence)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose).

% Authorisation conditions
must_be_authorised(S, Authority) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose),
    relevant_law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority),
    registered_in_database(S).

% Registration requirement with exception clause
registered_in_database(S) :-
    real_time_remote_biometric_identification_system(S),
    \+ provided_otherwise_in_regulation(S).

:- dynamic provided_otherwise_in_regulation/1.

% Reference database requirement
appropriate_reference_database(Database) :-
    use_case(UseCase),
    situation_mentioned_above(Situation),
    database_for_use_case(Database, UseCase),
    database_for_situation(Database, Situation).

:- dynamic database_for_use_case/2.
:- dynamic database_for_situation/2.
:- dynamic person_concerned/1.
```

## mistral seed 1

```prolog
:- module(responsible_use_biometric_systems, [
    responsible_use(S),
    proportionate_use(S),
    element_taken_into_account(S, nature_of_situation),
    element_taken_into_account(S, consequences_for_rights_and_freedoms),
    element_taken_into_account(S, safeguards_and_conditions),
    law_enforcement_purpose(S, confirm_identity),
    strictly_necessary_period(S),
    strictly_necessary_geographic_scope(S),
    strictly_necessary_personal_scope(S),
    evidence_regarding_threats(S),
    evidence_regarding_victims(S),
    evidence_regarding_perpetrator(S),
    authorised_use(S),
    fundamental_rights_impact_assessment_completed(S),
    system_registered_in_database(S),
    reference_database_appropriate(S, use_case)
]).

% Systems must be used in a responsible and proportionate manner
responsible_use(S) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

proportionate_use(S) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

% In each situation, certain elements should be taken into account
element_taken_into_account(S, nature_of_situation) :-
    responsible_use(S).

element_taken_into_account(S, consequences_for_rights_and_freedoms) :-
    responsible_use(S),
    concerns_all_persons(S).

element_taken_into_account(S, safeguards_and_conditions) :-
    responsible_use(S).

% Real-time remote biometric identification in publicly accessible spaces for law enforcement
real_time_remote_biometric_identification(S) :-
    publicly_accessible_space(S),
    law_enforcement_purpose(S, _).

% Deployment purpose: only to confirm the specifically targeted individual's identity
law_enforcement_purpose(S, confirm_identity) :-
    real_time_remote_biometric_identification(S),
    specifically_targeted_individual(S, _I).

% Limited to what is strictly necessary concerning period, geographic and personal scope
strictly_necessary_period(S) :-
    real_time_remote_biometric_identification(S).

strictly_necessary_geographic_scope(S) :-
    real_time_remote_biometric_identification(S).

strictly_necessary_personal_scope(S) :-
    real_time_remote_biometric_identification(S).

% Having regard to evidence or indications regarding threats, victims or perpetrator
evidence_regarding_threats(S) :-
    real_time_remote_biometric_identification(S).

evidence_regarding_victims(S) :-
    real_time_remote_biometric_identification(S).

evidence_regarding_perpetrator(S) :-
    real_time_remote_biometric_identification(S).

% Authorisation conditions
authorised_use(S) :-
    real_time_remote_biometric_identification(S),
    relevant_law_enforcement_authority(S, _A),
    fundamental_rights_impact_assessment_completed(S),
    system_registered_in_database(S).

fundamental_rights_impact_assessment_completed(S) :-
    real_time_remote_biometric_identification(S),
    relevant_law_enforcement_authority(S, _A).

system_registered_in_database(S) :-
    real_time_remote_biometric_identification(S),
    relevant_law_enforcement_authority(S, _A),
    \+ provided_otherwise_in_regulation(S).

% Reference database appropriate for each use case
reference_database_appropriate(S, use_case) :-
    real_time_remote_biometric_identification(S),
    exhaustively_listed_situation(S).

% Input predicates: facts about the world the text does not settle
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic publicly_accessible_space/1.
:- dynamic specifically_targeted_individual/2.
:- dynamic concerns_all_persons/1.
:- dynamic relevant_law_enforcement_authority/2.
:- dynamic provided_otherwise_in_regulation/1.
```

## mistral seed 2

```prolog
:- module(responsible_use_biometric_systems, [
    must_consider_elements/2,
    must_confirm_targeted_identity/2,
    must_limit_scope/2,
    must_complete_fundamental_rights_impact_assessment/2,
    must_register_system/2,
    reference_database_appropriate/2
]).

% In each exhaustively listed and narrowly defined situation, certain elements should be taken into account
must_consider_elements(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    element_to_consider(Element).

% Elements to consider: nature of the situation giving rise to the request
element_to_consider(nature(situation_giving_rise_to_request)).

% Elements to consider: consequences of the use for the rights and freedoms of all persons concerned
element_to_consider(consequences_for_rights_and_freedoms(all_persons_concerned)).

% Elements to consider: safeguards and conditions provided for with the use
element_to_consider(safeguards_and_conditions(use)).

% Use of real-time remote biometric identification systems in publicly accessible spaces for law enforcement
% should be deployed only to confirm the specifically targeted individual's identity
must_confirm_targeted_identity(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    purpose_of_use(System, law_enforcement),
    specifically_targeted_individual(System, Individual),
    confirm_identity(System, Individual).

% Should be limited to what is strictly necessary concerning:
% - the period of time
% - the geographic scope
% - the personal scope
must_limit_scope(System, Scope) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    strictly_necessary(Scope),
    scope_type(Scope, period_of_time).

must_limit_scope(System, Scope) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    strictly_necessary(Scope),
    scope_type(Scope, geographic_scope).

must_limit_scope(System, Scope) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    strictly_necessary(Scope),
    scope_type(Scope, personal_scope).

% Having regard in particular to the evidence or indications regarding:
% - the threats
% - the victims
% - the perpetrator
must_have_regard_to_evidence(System, Evidence) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    evidence_or_indication(Evidence, threats).

must_have_regard_to_evidence(System, Evidence) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    evidence_or_indication(Evidence, victims).

must_have_regard_to_evidence(System, Evidence) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    evidence_or_indication(Evidence, perpetrator).

% Use should be authorised only if the relevant law enforcement authority has completed
% a fundamental rights impact assessment
must_complete_fundamental_rights_impact_assessment(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    authorised_use(Authority, System),
    completed_fundamental_rights_impact_assessment(Authority, System).

% And, unless provided otherwise in this Regulation, has registered the system in the database
must_register_system(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    authorised_use(Authority, System),
    \+ provided_otherwise_in_regulation(System),
    registered_in_database(Authority, System).

% The reference database of persons should be appropriate for each use case in each situation
reference_database_appropriate(Database, UseCase) :-
    reference_database_of_persons(Database),
    use_case(UseCase),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    situation_applies_to_use_case(Situation, UseCase),
    appropriate_for_use_case(Database, UseCase).

% Inputs: facts about the world the text does not settle
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic law_enforcement_authority/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic purpose_of_use/2.
:- dynamic specifically_targeted_individual/2.
:- dynamic confirm_identity/2.
:- dynamic strictly_necessary/1.
:- dynamic scope_type/2.
:- dynamic evidence_or_indication/2.
:- dynamic authorised_use/2.
:- dynamic completed_fundamental_rights_impact_assessment/2.
:- dynamic provided_otherwise_in_regulation/1.
:- dynamic registered_in_database/2.
:- dynamic reference_database_of_persons/1.
:- dynamic use_case/1.
:- dynamic situation_applies_to_use_case/2.
:- dynamic appropriate_for_use_case/2.
```

## mistral seed 3

```prolog
:- module(remote_biometric_identification_safeguards, [
    responsible_use(S),
    proportionate_use(S),
    element_taken_into_account(S, nature_of_situation),
    element_taken_into_account(S, consequences_for_rights_and_freedoms),
    element_taken_into_account(S, safeguards_and_conditions),
    must_confirm_identity(S, targeted_individual),
    strictly_necessary_period(S),
    strictly_necessary_geographic_scope(S),
    strictly_necessary_personal_scope(S),
    having_regard_to(S, evidence_or_indications),
    having_regard_to(S, threats),
    having_regard_to(S, victims),
    having_regard_to(S, perpetrator),
    must_complete_fundamental_rights_impact_assessment(Authority, S),
    must_register_system(Authority, S, database),
    reference_database_appropriate(S, use_case)
]).

% Responsible and proportionate use of systems in exhaustively listed and narrowly defined situations
responsible_use(S) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

proportionate_use(S) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

% Elements to be taken into account in each situation
element_taken_into_account(S, nature_of_situation) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

element_taken_into_account(S, consequences_for_rights_and_freedoms) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S),
    concerns_all_persons(S).

element_taken_into_account(S, safeguards_and_conditions) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

% Real-time remote biometric identification in publicly accessible spaces for law enforcement
must_confirm_identity(S, targeted_individual) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

strictly_necessary_period(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

strictly_necessary_geographic_scope(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

strictly_necessary_personal_scope(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

having_regard_to(S, evidence_or_indications) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

having_regard_to(S, threats) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

having_regard_to(S, victims) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

having_regard_to(S, perpetrator) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    purpose_law_enforcement(S).

% Authorisation requirements
must_complete_fundamental_rights_impact_assessment(Authority, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_authority(Authority),
    authorised_use(Authority, S).

must_register_system(Authority, S, database) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_authority(Authority),
    authorised_use(Authority, S),
    \+ provided_otherwise_in_regulation(S).

% Reference database appropriateness
reference_database_appropriate(S, UseCase) :-
    real_time_remote_biometric_identification_system(S),
    use_case(S, UseCase),
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

% Input predicates: facts about the world the text does not settle
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic concerns_all_persons/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic purpose_law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic authorised_use/2.
:- dynamic provided_otherwise_in_regulation/1.
:- dynamic use_case/2.
```

## qwen seed 1

```prolog
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
    reference_database_appropriate/2
]).

% Input predicates for entities and situations not defined in this text
:- dynamic law_enforcement_authority/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic database/1.
:- dynamic regulation/1.
:- dynamic use_case/1.

% Elements to be taken into account in listed situations
must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    nature_of_situation(Element).

must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    consequences_for_rights_and_freedoms(Element).

must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    safeguards_and_conditions_provided(Element).

nature_of_situation(nature_of_situation_giving_rise_to_request).

consequences_for_rights_and_freedoms(consequences_for_rights_and_freedoms_of_all_persons_concerned).

safeguards_and_conditions_provided(safeguards_and_conditions_provided_with_use).

% Deployment constraints for law enforcement in publicly accessible spaces
must_deploy_only_to_confirm_identity(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(_Space),
    specifically_targeted_individual(Individual),
    confirm_identity(Individual).

confirm_identity(Individual) :-
    specifically_targeted_individual(Individual).

% Limitation of use based on necessity and evidence
must_limit_use(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(_Space),
    strictly_necessary_period_of_time,
    strictly_necessary_geographic_scope,
    strictly_necessary_personal_scope,
    evidence_or_indications_regarding_threats(_Evidence).

must_limit_use(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(_Space),
    strictly_necessary_period_of_time,
    strictly_necessary_geographic_scope,
    strictly_necessary_personal_scope,
    evidence_or_indications_regarding_victims(_Evidence).

must_limit_use(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(_Space),
    strictly_necessary_period_of_time,
    strictly_necessary_geographic_scope,
    strictly_necessary_personal_scope,
    evidence_or_indications_regarding_perpetrator(_Evidence).

strictly_necessary_period_of_time.
strictly_necessary_geographic_scope.
strictly_necessary_personal_scope.

evidence_or_indications_regarding_threats(evidence_or_indications(threats)).
evidence_or_indications_regarding_victims(evidence_or_indications(victims)).
evidence_or_indications_regarding_perpetrator(evidence_or_indications(perpetrator)).

% Authorisation conditions
must_complete_fundamental_rights_impact_assessment(Authority) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(_System),
    publicly_accessible_space(_Space).

must_register_system(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(_Space),
    database(Database),
    regulation(Regulation),
    \+ provided_otherwise_in_regulation(Regulation).

provided_otherwise_in_regulation(Regulation) :-
    regulation(Regulation).

% Reference database appropriateness
reference_database_appropriate(Database, UseCase) :-
    database(Database),
    use_case(UseCase),
    exhaustively_listed_situation(_Situation).
```

## qwen seed 2

```prolog
:- module(real_time_remote_biometric_identification, [
    must_take_into_account/2,
    nature_of_situation_applies/1,
    consequences_for_rights_and_freedoms_applies/1,
    safeguards_and_conditions_provided/1,
    must_confirm_identity/2,
    limited_to_strictly_necessary/1,
    evidence_or_indications_regarding_threats_applies/1,
    evidence_or_indications_regarding_victims_applies/1,
    evidence_or_indications_regarding_perpetrator_applies/1,
    must_complete_fundamental_rights_impact_assessment/2,
    must_register_system/2,
    appropriate_reference_database/2
]).

% Input predicates for entities and situations not defined in this text
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_authority/1.
:- dynamic exhaustively_listed_situation/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic database/1.
:- dynamic use_case/1.

% Elements to be taken into account in exhaustively listed situations
must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    nature_of_situation_applies(Element).

must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    consequences_for_rights_and_freedoms_applies(Element).

must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    safeguards_and_conditions_provided(Element).

nature_of_situation_applies(nature_of_situation_giving_rise_to_request).

consequences_for_rights_and_freedoms_applies(consequences_for_rights_and_freedoms_of_persons_concerned).

safeguards_and_conditions_provided(safeguards_and_conditions_for_use).

% Deployment constraints for law enforcement in publicly accessible spaces
must_confirm_identity(Authority, Individual) :-
    law_enforcement_authority(Authority),
    specifically_targeted_individual(Individual),
    uses_in_publicly_accessible_space_for_law_enforcement(Authority).

uses_in_publicly_accessible_space_for_law_enforcement(Authority) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(Space),
    uses_system_in_space(Authority, System, Space).

% Strict necessity limitation
limited_to_strictly_necessary(use_parameters(Period, GeographicScope, PersonalScope)) :-
    evidence_or_indications_regarding_threats_applies(_Evidence),
    evidence_or_indications_regarding_victims_applies(_Evidence),
    evidence_or_indications_regarding_perpetrator_applies(_Evidence).

evidence_or_indications_regarding_threats_applies(evidence_or_indications(threats)).

evidence_or_indications_regarding_victims_applies(evidence_or_indications(victims)).

evidence_or_indications_regarding_perpetrator_applies(evidence_or_indications(perpetrator)).

% Authorisation conditions
must_complete_fundamental_rights_impact_assessment(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    uses_in_publicly_accessible_space_for_law_enforcement(Authority).

must_register_system(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    database(Database),
    uses_in_publicly_accessible_space_for_law_enforcement(Authority),
    \+ exempt_from_registration(System).

exempt_from_registration(System) :-
    provided_otherwise_in_regulation(System).

% Reference database appropriateness
appropriate_reference_database(Database, UseCase) :-
    database(Database),
    use_case(UseCase),
    exhaustively_listed_situation(Situation),
    reference_database_for_situation(Database, Situation, UseCase).
```

## qwen seed 3

```prolog
:- module(real_time_remote_biometric_identification, [
    must_take_into_account/2,
    nature_of_situation_applies/1,
    consequences_for_rights_and_freedoms_applies/1,
    safeguards_and_conditions_apply/1,
    must_confirm_identity/2,
    limited_to_strictly_necessary/1,
    evidence_or_indications_apply/1,
    must_complete_fundamental_rights_impact_assessment/1,
    must_register_system/2,
    reference_database_appropriate/2
]).

% Elements to be taken into account in exhaustively listed situations
must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    nature_of_situation_applies(Element).
must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    consequences_for_rights_and_freedoms_applies(Element).
must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    safeguards_and_conditions_apply(Element).

% Conditions for deployment of real-time remote biometric identification
must_confirm_identity(Authority, Individual) :-
    law_enforcement_authority(Authority),
    uses_real_time_remote_biometric_identification_in_public_space(Authority),
    specifically_targeted_individual(Individual).

limited_to_strictly_necessary(Deployment) :-
    uses_real_time_remote_biometric_identification_in_public_space(_Authority),
    period_of_time_limited(Deployment),
    geographic_scope_limited(Deployment),
    personal_scope_limited(Deployment),
    evidence_or_indications_apply(Deployment).

% Authorisation requirements
must_complete_fundamental_rights_impact_assessment(Authority) :-
    law_enforcement_authority(Authority),
    uses_real_time_remote_biometric_identification_in_public_space(Authority).

must_register_system(Authority, System) :-
    law_enforcement_authority(Authority),
    uses_real_time_remote_biometric_identification_in_public_space(Authority),
    real_time_remote_biometric_identification_system(System),
    \+ exempt_from_registration(System).

% Reference database appropriateness
reference_database_appropriate(Database, UseCase) :-
    reference_database_of_persons(Database),
    use_case_in_exhaustively_listed_situation(UseCase).

% Input predicates not defined in this text
:- dynamic exhaustively_listed_situation/1.
:- dynamic law_enforcement_authority/1.
:- dynamic uses_real_time_remote_biometric_identification_in_public_space/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic exempt_from_registration/1.
:- dynamic reference_database_of_persons/1.
:- dynamic use_case_in_exhaustively_listed_situation/1.
:- dynamic period_of_time_limited/1.
:- dynamic geographic_scope_limited/1.
:- dynamic personal_scope_limited/1.
```
