# rct_34

## Text

In order to ensure that those systems are used in a responsible and proportionate manner, it is also important to establish that, in each of those exhaustively listed and narrowly defined situations, certain elements should be taken into account, in particular as regards the nature of the situation giving rise to the request and the consequences of the use for the rights and freedoms of all persons concerned and the safeguards and conditions provided for with the use. In addition, the use of real-time remote biometric identification systems in publicly accessible spaces for the purpose of law enforcement should be deployed only to confirm the specifically targeted individual’s identity and should be limited to what is strictly necessary concerning the period of time, as well as the geographic and personal scope, having regard in particular to the evidence or indications regarding the threats, the victims or perpetrator. The use of the real-time remote biometric identification system in publicly accessible spaces should be authorised only if the relevant law enforcement authority has completed a fundamental rights impact assessment and, unless provided otherwise in this Regulation, has registered the system in the database as set out in this Regulation. The reference database of persons should be appropriate for each use case in each of the situations mentioned above.

## Numbers

| output | loads | module | clauses | preds | inputs | coverage | violations |
|---|---|---|---|---|---|---|---|
| deepseek/seed_1 | yes | real_time_biometric_identification | 8 | 8 | 19 | 0.671 | 15 |
| deepseek/seed_2 | NO | real_time_biometric_identification | 10 | 5 | 14 | 0.646 | 8 |
| deepseek/seed_3 | NO | real_time_biometric_identification | 8 | 8 | 15 | 0.622 | 15 |
| gemini/seed_1 | yes | real_time_remote_biometric_identification | 9 | 8 | 20 | 0.622 | 1 |
| gemini/seed_2 | yes | real_time_remote_biometric_identification | 10 | 5 | 14 | 0.573 | 0 |
| gemini/seed_3 | NO | real_time_remote_biometric_identification | 13 | 9 | 22 | 0.646 | 2 |
| kimi/seed_1 | yes | real_time_remote_biometric_identification | 30 | 26 | 15 | 0.707 | 21 |
| kimi/seed_2 | yes | real_time_biometric_identification | 29 | 19 | 13 | 0.756 | 36 |
| kimi/seed_3 | NO | real_time_biometric_identification | 10 | 8 | 14 | 0.695 | 23 |
| mistral/seed_1 | yes | remote_biometric_identification_use | 30 | 30 | 5 | 0.707 | 28 |
| mistral/seed_2 | yes | remote_biometric_identification_use | 15 | 7 | 11 | 0.72 | 8 |
| mistral/seed_3 | yes | remote_biometric_identification_use | 14 | 8 | 27 | 0.768 | 7 |
| qwen/seed_1 | yes | real_time_remote_biometric_identification | 19 | 15 | 6 | 0.659 | 4 |
| qwen/seed_2 | yes | real_time_remote_biometric_identification | 16 | 14 | 9 | 0.573 | 9 |
| qwen/seed_3 | yes | real_time_remote_biometric_identification | 23 | 19 | 5 | 0.695 | 8 |

Within-model (3 seeds): deepseek: J_preds 0.183, J_clauses 0.0, consensus 0.0; gemini: J_preds 0.132, J_clauses 0.0, consensus 0.0; kimi: J_preds 0.104, J_clauses 0.0, consensus 0.0; mistral: J_preds 0.111, J_clauses 0.0, consensus 0.0; qwen: J_preds 0.554, J_clauses 0.149, consensus 0.202

## deepseek seed 1

```prolog
:- module(real_time_biometric_identification, [
    responsible_proportionate_use/1,
    must_take_into_account/2,
    nature_of_situation/1,
    consequences_for_rights_and_freedoms/1,
    safeguards_and_conditions/1,
    deployed_to_confirm_identity/1,
    limited_to_strictly_necessary/1,
    period_of_time/1,
    geographic_scope/1,
    personal_scope/1,
    evidence_or_indications/1,
    threats/1,
    victims/1,
    perpetrator/1,
    must_be_authorised/1,
    completed_fundamental_rights_impact_assessment/1,
    registered_in_database/1,
    appropriate_reference_database/1,
    use_case/1,
    situation/1
]).

% Core principles for use of real-time remote biometric identification systems
responsible_proportionate_use(System) :-
    real_time_remote_biometric_identification_system(System),
    used_in_publicly_accessible_space(System),
    for_law_enforcement(System),
    must_take_into_account(System, elements).

must_take_into_account(System, elements) :-
    nature_of_situation(System),
    consequences_for_rights_and_freedoms(System),
    safeguards_and_conditions(System).

% Deployment constraints
deployed_to_confirm_identity(System) :-
    real_time_remote_biometric_identification_system(System),
    used_in_publicly_accessible_space(System),
    for_law_enforcement(System),
    specifically_targeted_individual(_Individual).

limited_to_strictly_necessary(System) :-
    real_time_remote_biometric_identification_system(System),
    used_in_publicly_accessible_space(System),
    for_law_enforcement(System),
    period_of_time(System),
    geographic_scope(System),
    personal_scope(System),
    evidence_or_indications(System).

evidence_or_indications(System) :-
    threats(System);
    victims(System);
    perpetrator(System).

% Authorisation requirements
must_be_authorised(System) :-
    real_time_remote_biometric_identification_system(System),
    used_in_publicly_accessible_space(System),
    completed_fundamental_rights_impact_assessment(law_enforcement_authority),
    \+ provided_otherwise_in_regulation(System),
    registered_in_database(System).

provided_otherwise_in_regulation(_System) :- fail.

% Reference database requirement
appropriate_reference_database(Database) :-
    reference_database_of_persons(Database),
    use_case(UseCase),
    situation(Situation),
    appropriate_for(Database, UseCase, Situation).

% Input predicates (facts about the world not settled by this text)
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic used_in_publicly_accessible_space/1.
:- dynamic for_law_enforcement/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic nature_of_situation/1.
:- dynamic consequences_for_rights_and_freedoms/1.
:- dynamic safeguards_and_conditions/1.
:- dynamic period_of_time/1.
:- dynamic geographic_scope/1.
:- dynamic personal_scope/1.
:- dynamic threats/1.
:- dynamic victims/1.
:- dynamic perpetrator/1.
:- dynamic completed_fundamental_rights_impact_assessment/1.
:- dynamic registered_in_database/1.
:- dynamic reference_database_of_persons/1.
:- dynamic use_case/1.
:- dynamic situation/1.
:- dynamic appropriate_for/3.
```

## deepseek seed 2

```prolog
:- module(real_time_biometric_identification, [
    responsible_use/1,
    proportionate_use/1,
    must_take_into_account/2,
    nature_of_situation/1,
    consequences_of_use/1,
    safeguards_and_conditions/1,
    must_deploy_to_confirm/2,
    must_be_limited/2,
    strictly_necessary/2,
    must_be_authorised/2,
    completed_fundamental_rights_impact_assessment/1,
    registered_system/1,
    appropriate_reference_database/1
]).

% Elements to take into account
must_take_into_account(System, nature_of_situation(Situation)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    law_enforcement_purpose(System),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation).

must_take_into_account(System, consequences_of_use(Consequences)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    law_enforcement_purpose(System),
    exhaustively_listed_situation(_Situation),
    narrowly_defined_situation(_Situation),
    consequences_for_rights_and_freedoms(Consequences).

must_take_into_account(System, safeguards_and_conditions(Safeguards)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    law_enforcement_purpose(System),
    exhaustively_listed_situation(_Situation),
    narrowly_defined_situation(_Situation).

% Deployment purpose and limits
must_deploy_to_confirm(System, identity_of_targeted_individual(Individual)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    law_enforcement_purpose(System),
    specifically_targeted_individual(Individual).

must_be_limited(System, period_of_time(Period)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    law_enforcement_purpose(System),
    strictly_necessary(Period, evidence_or_indications(Threats, Victims, Perpetrator)).

must_be_limited(System, geographic_scope(Scope)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    law_enforcement_purpose(System),
    strictly_necessary(Scope, evidence_or_indications(Threats, Victims, Perpetrator)).

must_be_limited(System, personal_scope(Scope)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    law_enforcement_purpose(System),
    strictly_necessary(Scope, evidence_or_indications(Threats, Victims, Perpetrator)).

% Authorisation conditions
must_be_authorised(System, law_enforcement_authority(Authority)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    completed_fundamental_rights_impact_assessment(Authority),
    registered_system(System).

must_be_authorised(System, law_enforcement_authority(Authority)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    completed_fundamental_rights_impact_assessment(Authority),
    provided_otherwise_in_regulation(System).

% Reference database
appropriate_reference_database(Database) :-
    reference_database_of_persons(Database),
    use_case(UseCase),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    appropriate_for(Database, UseCase, Situation).

% Input predicates
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic consequences_for_rights_and_freedoms/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic evidence_or_indications/3.
:- dynamic completed_fundamental_rights_impact_assessment/1.
:- dynamic registered_system/1.
:- dynamic provided_otherwise_in_regulation/1.
:- dynamic reference_database_of_persons/1.
:- dynamic use_case/1.
:- dynamic appropriate_for/3.
```

## deepseek seed 3

```prolog
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
```

## gemini seed 1

```prolog
:- module(real_time_remote_biometric_identification, [
    responsible_manner/1,
    proportionate_manner/1,
    required_consideration/1,
    permitted_deployment/1,
    strictly_necessary/1,
    authorised_use/1,
    appropriate_reference_database/1
]).

:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic considers_nature_of_situation/1.
:- dynamic considers_consequences_for_rights_and_freedoms/1.
:- dynamic considers_safeguards_and_conditions/1.
:- dynamic real_time_remote_biometric_identification/1.
:- dynamic publicly_accessible_space/1.
:- dynamic purpose_law_enforcement/1.
:- dynamic targets_specific_individual_identity/1.
:- dynamic limited_temporal_scope/1.
:- dynamic limited_geographic_scope/1.
:- dynamic limited_personal_scope/1.
:- dynamic regards_threat_evidence/1.
:- dynamic regards_victim_or_perpetrator_evidence/1.
:- dynamic law_enforcement_authority/1.
:- dynamic completed_fundamental_rights_impact_assessment/2.
:- dynamic registered_in_database/2.
:- dynamic exempt_from_database_registration/1.
:- dynamic reference_database_of_persons/1.
:- dynamic appropriate_for_use_case/2.

% In order to ensure that those systems are used in a responsible and proportionate manner,
% certain elements should be taken into account in each exhaustively listed and narrowly defined situation.
responsible_manner(Use) :-
    required_consideration(Use).

proportionate_manner(Use) :-
    required_consideration(Use).

required_consideration(Use) :-
    exhaustively_listed_situation(Use),
    narrowly_defined_situation(Use),
    considers_nature_of_situation(Use),
    considers_consequences_for_rights_and_freedoms(Use),
    considers_safeguards_and_conditions(Use).

% Use should be deployed only to confirm the specifically targeted individual's identity,
% and should be limited to what is strictly necessary.
permitted_deployment(Use) :-
    real_time_remote_biometric_identification(Use),
    publicly_accessible_space(Use),
    purpose_law_enforcement(Use),
    targets_specific_individual_identity(Use),
    strictly_necessary(Use).

strictly_necessary(Use) :-
    limited_temporal_scope(Use),
    limited_geographic_scope(Use),
    limited_personal_scope(Use),
    regards_threat_evidence(Use),
    regards_victim_or_perpetrator_evidence(Use).

% Use should be authorised only if law enforcement authority has completed a fundamental
% rights impact assessment and registered the system in the database (unless provided otherwise).
authorised_use(Use) :-
    real_time_remote_biometric_identification(Use),
    publicly_accessible_space(Use),
    purpose_law_enforcement(Use),
    law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority, Use),
    registered_or_exempt(Authority, Use).

registered_or_exempt(Authority, Use) :-
    registered_in_database(Authority, Use).
registered_or_exempt(_Authority, Use) :-
    exempt_from_database_registration(Use).

% The reference database of persons should be appropriate for each use case in each situation.
appropriate_reference_database(Database) :-
    reference_database_of_persons(Database),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    appropriate_for_use_case(Database, Situation).
```

## gemini seed 2

```prolog
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
```

## gemini seed 3

```prolog
:- module(real_time_remote_biometric_identification, [
    responsible_manner/1,
    proportionate_manner/1,
    takes_into_account/2,
    exhaustively_listed_situation/1,
    narrowly_defined_situation/1,
    permitted_deployment/1,
    limited_strictly_necessary/1,
    permitted_authorisation/1,
    must_complete/2,
    must_register/2,
    appropriate_reference_database/2
]).

:- dynamic situation/1.
:- dynamic nature_of_situation/2.
:- dynamic consequences_for_rights_and_freedoms/2.
:- dynamic safeguards_and_conditions/2.
:- dynamic use_of_system/1.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification/1.
:- dynamic publicly_accessible_space/1.
:- dynamic objective_law_enforcement/1.
:- dynamic confirms_specifically_targeted_identity/1.
:- dynamic limits_period_of_time/1.
:- dynamic limits_geographic_scope/1.
:- dynamic limits_personal_scope/1.
:- dynamic regards_evidence_or_indications/1.
:- dynamic law_enforcement_authority/1.
:- dynamic completed_fundamental_rights_impact_assessment/2.
:- dynamic registered_in_database/2.
:- dynamic exempt_database_registration/1.
:- dynamic database_of_persons/1.
:- dynamic appropriate_for_use_case/2.

% Responsible and proportionate manner requires taking into account key elements in exhaustively listed and narrowly defined situations
responsible_manner(Use) :-
    takes_into_account(Use, elements).

proportionate_manner(Use) :-
    takes_into_account(Use, elements).

takes_into_account(Use, elements) :-
    situation(Situation),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    takes_into_account(Use, nature_of_situation(Situation)),
    takes_into_account(Use, consequences_for_rights_and_freedoms(Situation)),
    takes_into_account(Use, safeguards_and_conditions(Situation)).

takes_into_account(Use, nature_of_situation(Situation)) :-
    nature_of_situation(Use, Situation).

takes_into_account(Use, consequences_for_rights_and_freedoms(Situation)) :-
    consequences_for_rights_and_freedoms(Use, Situation).

takes_into_account(Use, safeguards_and_conditions(Situation)) :-
    safeguards_and_conditions(Use, Situation).

% Conditions on deployment: only to confirm specifically targeted individual's identity and strictly limited
permitted_deployment(Use) :-
    use_of_system(Use),
    real_time(Use),
    remote_biometric_identification(Use),
    publicly_accessible_space(Use),
    objective_law_enforcement(Use),
    confirms_specifically_targeted_identity(Use),
    limited_strictly_necessary(Use).

limited_strictly_necessary(Use) :-
    limits_period_of_time(Use),
    limits_geographic_scope(Use),
    limits_personal_scope(Use),
    regards_evidence_or_indications(Use).

% Authorisation conditions: completed fundamental rights impact assessment and registration in database
permitted_authorisation(Use) :-
    use_of_system(Use),
    real_time(Use),
    remote_biometric_identification(Use),
    publicly_accessible_space(Use),
    law_enforcement_authority(Authority),
    must_complete(Authority, fundamental_rights_impact_assessment(Use)),
    must_register(Authority, database(Use)).

must_complete(Authority, fundamental_rights_impact_assessment(Use)) :-
    law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority, Use).

must_register(Authority, database(Use)) :-
    law_enforcement_authority(Authority),
    registered_in_database(Authority, Use).
must_register(Authority, database(Use)) :-
    law_enforcement_authority(Authority),
    exempt_database_registration(Use).

% Reference database of persons must be appropriate for each use case
appropriate_reference_database(Database, Use) :-
    database_of_persons(Database),
    situation(Situation),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    appropriate_for_use_case(Database, Use).
```

## kimi seed 1

```prolog
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
```

## kimi seed 2

```prolog
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
```

## kimi seed 3

```prolog
:- module(real_time_biometric_identification, [
    objective_responsible_proportionate_use/1,
    required_element/2,
    must_take_into_account/2,
    nature_of_situation/1,
    consequences_for_rights_freedoms/1,
    safeguards_conditions/1,
    must_deploy/3,
    purpose_confirm_identity/2,
    limited_strictly_necessary/1,
    period_of_time/1,
    geographic_scope/1,
    personal_scope/1,
    evidence_indications/2,
    threat/1,
    victim/1,
    perpetrator/1,
    must_authorise/2,
    completed_fundamental_rights_impact_assessment/1,
    registered_system_database/1,
    required_reference_database/1,
    appropriate_for_use_case/2,
    situation_exhaustively_listed/1,
    situation_narrowly_defined/1,
    publicly_accessible_space/1,
    law_enforcement_purpose/1,
    real_time_remote_biometric_identification_system/1,
    relevant_law_enforcement_authority/1,
    specifically_targeted_individual/1,
    use_case/1
]).

:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic situation_exhaustively_listed/1.
:- dynamic situation_narrowly_defined/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic relevant_law_enforcement_authority/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic use_case/1.
:- dynamic threat/1.
:- dynamic victim/1.
:- dynamic perpetrator/1.

% Objectives and general requirements
objective_responsible_proportionate_use(S) :-
    real_time_remote_biometric_identification_system(S).

required_element(S, nature_of_situation(S)) :-
    situation_exhaustively_listed(S),
    situation_narrowly_defined(S).

required_element(S, consequences_for_rights_freedoms(S)) :-
    situation_exhaustively_listed(S),
    situation_narrowly_defined(S).

required_element(S, safeguards_conditions(S)) :-
    situation_exhaustively_listed(S),
    situation_narrowly_defined(S).

must_take_into_account(S, Element) :-
    real_time_remote_biometric_identification_system(S),
    situation_exhaustively_listed(S),
    situation_narrowly_defined(S),
    required_element(S, Element).

% Deployment restrictions for law enforcement in publicly accessible spaces
must_deploy(Authority, S, confirm_identity(Individual)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    relevant_law_enforcement_authority(Authority),
    specifically_targeted_individual(Individual).

limited_strictly_necessary(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    period_of_time(S),
    geographic_scope(S),
    personal_scope(S),
    evidence_indications(S, threat),
    evidence_indications(S, victim),
    evidence_indications(S, perpetrator).

% Authorisation requirements
must_authorise(Authority, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    completed_fundamental_rights_impact_assessment(Authority),
    registered_system_database(S).

% Reference database requirements
required_reference_database(Database) :-
    real_time_remote_biometric_identification_system(S),
    situation_exhaustively_listed(S),
    situation_narrowly_defined(S),
    use_case(S).

appropriate_for_use_case(Database, S) :-
    required_reference_database(Database),
    use_case(S).
```

## mistral seed 1

```prolog
:- module(remote_biometric_identification_use, [
    responsible_use_applies/1,
    proportionate_use_applies/1,
    must_take_into_account/2,
    must_consider_nature_of_situation/1,
    must_consider_consequences_for_rights_and_freedoms/1,
    must_consider_safeguards_and_conditions/1,
    deployment_purpose/2,
    must_confirm_identity/2,
    must_limit_to_strictly_necessary/1,
    must_limit_period_of_time/1,
    must_limit_geographic_scope/1,
    must_limit_personal_scope/1,
    must_have_regard_to_evidence/1,
    must_have_regard_to_threats/1,
    must_have_regard_to_victims/1,
    must_have_regard_to_perpetrator/1,
    authorised_deployment/2,
    must_complete_fundamental_rights_impact_assessment/1,
    must_register_system_in_database/1,
    reference_database_appropriate/2,
    exhaustively_listed_situation/1,
    narrowly_defined_situation/1,
    publicly_accessible_space/1,
    law_enforcement_purpose/1,
    real_time_remote_biometric_identification_system/1
]).

% Input predicates: facts about the world the text does not settle
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic real_time_remote_biometric_identification_system/1.

% Systems must be used in a responsible and proportionate manner
responsible_use_applies(S) :-
    real_time_remote_biometric_identification_system(S).

proportionate_use_applies(S) :-
    real_time_remote_biometric_identification_system(S).

% In each exhaustively listed and narrowly defined situation, certain elements should be taken into account
must_take_into_account(S, element) :-
    real_time_remote_biometric_identification_system(S),
    exhaustively_listed_situation(Sit),
    narrowly_defined_situation(Sit),
    situation_applies(S, Sit).

must_consider_nature_of_situation(S) :-
    must_take_into_account(S, element).

must_consider_consequences_for_rights_and_freedoms(S) :-
    must_take_into_account(S, element),
    concerns_all_persons_concerned(S).

must_consider_safeguards_and_conditions(S) :-
    must_take_into_account(S, element).

% Deployment for law enforcement: only to confirm the specifically targeted individual's identity
deployment_purpose(S, confirm_identity(P)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose),
    specifically_targeted_individual(P),
    deployment(S, Space, Purpose).

must_confirm_identity(S, P) :-
    deployment_purpose(S, confirm_identity(P)).

% Deployment must be limited to what is strictly necessary
must_limit_to_strictly_necessary(S) :-
    deployment_purpose(S, confirm_identity(_P)).

must_limit_period_of_time(S) :-
    must_limit_to_strictly_necessary(S).

must_limit_geographic_scope(S) :-
    must_limit_to_strictly_necessary(S).

must_limit_personal_scope(S) :-
    must_limit_to_strictly_necessary(S).

% Having regard to evidence or indications regarding threats, victims or perpetrator
must_have_regard_to_evidence(S) :-
    must_limit_to_strictly_necessary(S).

must_have_regard_to_threats(S) :-
    must_have_regard_to_evidence(S).

must_have_regard_to_victims(S) :-
    must_have_regard_to_evidence(S).

must_have_regard_to_perpetrator(S) :-
    must_have_regard_to_evidence(S).

% Authorisation conditions
authorised_deployment(S, Authority) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_authority(Authority),
    must_complete_fundamental_rights_impact_assessment(Authority),
    must_register_system_in_database(S).

must_complete_fundamental_rights_impact_assessment(Authority) :-
    law_enforcement_authority(Authority),
    authorised_deployment(_S, Authority).

must_register_system_in_database(S) :-
    real_time_remote_biometric_identification_system(S),
    authorised_deployment(S, _Authority).

% Reference database must be appropriate for each use case in each situation
reference_database_appropriate(Database, UseCase) :-
    real_time_remote_biometric_identification_system(S),
    exhaustively_listed_situation(Sit),
    narrowly_defined_situation(Sit),
    situation_applies(S, Sit),
    use_case(UseCase, Sit),
    reference_database(Database, S).

% Helper predicates
situation_applies(S, Sit) :-
    exhaustively_listed_situation(Sit),
    narrowly_defined_situation(Sit).

concerns_all_persons_concerned(S) :-
    real_time_remote_biometric_identification_system(S).

specifically_targeted_individual(P) :-
    individual(P).

deployment(S, Space, Purpose) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose).

use_case(UseCase, Sit) :-
    exhaustively_listed_situation(Sit).

reference_database(Database, S) :-
    real_time_remote_biometric_identification_system(S).

law_enforcement_authority(Authority) :-
    authority(Authority).

individual(P) :-
    person(P).

person(_P).

authority(_A).
```

## mistral seed 2

```prolog
:- module(remote_biometric_identification_use, [
    must_take_into_account/2,
    must_deploy_for_identity_confirmation/2,
    must_limit_scope/2,
    must_be_authorised/2,
    must_complete_impact_assessment/2,
    must_register_system/2,
    reference_database_appropriate/2,
    real_time_remote_biometric_identification_system/1,
    publicly_accessible_space/1,
    law_enforcement_purpose/1,
    exhaustively_listed_situation/1,
    narrowly_defined_situation/1,
    targeted_individual/1,
    fundamental_rights_impact_assessment/1,
    registered_in_database/2
]).

% Input predicates about the world the text does not settle
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic targeted_individual/1.
:- dynamic fundamental_rights_impact_assessment/1.
:- dynamic registered_in_database/2.

% In each exhaustively listed and narrowly defined situation, certain elements should be taken into account
must_take_into_account(S, element(nature(situation_giving_rise_to_request))) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

must_take_into_account(S, element(consequences(use, rights_and_freedoms(all_persons_concerned)))) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

must_take_into_account(S, element(safeguards_and_conditions(provided_for_with_use))) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

% Use of real-time remote biometric identification systems in publicly accessible spaces for law enforcement
% should be deployed only to confirm the specifically targeted individual's identity
must_deploy_for_identity_confirmation(S, confirm_identity(targeted_individual(I))) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    targeted_individual(I).

% Should be limited to what is strictly necessary concerning period of time, geographic scope, and personal scope
must_limit_scope(S, strictly_necessary(period_of_time)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S).

must_limit_scope(S, strictly_necessary(geographic_scope)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S).

must_limit_scope(S, strictly_necessary(personal_scope)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S).

% Having regard in particular to evidence or indications regarding threats, victims or perpetrator
must_take_into_account(S, element(evidence_or_indications(threats))) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S).

must_take_into_account(S, element(evidence_or_indications(victims))) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S).

must_take_into_account(S, element(evidence_or_indications(perpetrator))) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S).

% Use should be authorised only if the relevant law enforcement authority has completed
% a fundamental rights impact assessment
must_be_authorised(S, A) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    law_enforcement_authority(A),
    must_complete_impact_assessment(A, S).

% Unless provided otherwise in this Regulation, has registered the system in the database
must_be_authorised(S, A) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    law_enforcement_authority(A),
    must_register_system(A, S).

% The relevant law enforcement authority has completed a fundamental rights impact assessment
must_complete_impact_assessment(A, S) :-
    law_enforcement_authority(A),
    real_time_remote_biometric_identification_system(S),
    fundamental_rights_impact_assessment(completed_by(A, for_system(S))).

% Has registered the system in the database as set out in this Regulation
must_register_system(A, S) :-
    law_enforcement_authority(A),
    real_time_remote_biometric_identification_system(S),
    registered_in_database(S, database(set_out_in_regulation)).

% The reference database of persons should be appropriate for each use case in each situation
reference_database_appropriate(D, use_case(U, S)) :-
    reference_database_of_persons(D),
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S),
    use_case(U).

% Input predicates for entities mentioned
:- dynamic law_enforcement_authority/1.
:- dynamic reference_database_of_persons/1.
:- dynamic use_case/1.
```

## mistral seed 3

```prolog
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
```

## qwen seed 1

```prolog
:- module(real_time_remote_biometric_identification, [
    must_take_into_account/2,
    nature_of_situation/1,
    consequences_for_rights_and_freedoms/1,
    safeguards_and_conditions_provided/1,
    must_deploy_only_to_confirm_identity/2,
    must_limit_use_to_strictly_necessary/2,
    evidence_or_indications_regarding_threats/1,
    evidence_or_indications_regarding_victims/1,
    evidence_or_indications_regarding_perpetrator/1,
    permitted_use_in_publicly_accessible_spaces/1,
    must_complete_fundamental_rights_impact_assessment/1,
    must_register_system_in_database/1,
    reference_database_appropriate_for_use_case/2
]).

% Input predicates for entities and situations not defined in this text
:- dynamic law_enforcement_authority/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic exhaustively_listed_situation/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic database/1.
:- dynamic use_case/1.

% Elements to be taken into account in exhaustively listed situations
must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    nature_of_situation(Element).

must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    consequences_for_rights_and_freedoms(Element).

must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    safeguards_and_conditions_provided(Element).

nature_of_situation(nature_of_situation_giving_rise_to_request).
consequences_for_rights_and_freedoms(consequences_for_rights_and_freedoms_of_all_persons_concerned).
safeguards_and_conditions_provided(safeguards_and_conditions_provided_with_use).

% Deployment constraints for law enforcement in publicly accessible spaces
must_deploy_only_to_confirm_identity(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    use_in_publicly_accessible_spaces_for_law_enforcement(System).

must_limit_use_to_strictly_necessary(System, Scope) :-
    real_time_remote_biometric_identification_system(System),
    use_in_publicly_accessible_spaces_for_law_enforcement(System),
    strictly_necessary_scope(Scope).

strictly_necessary_scope(period_of_time).
strictly_necessary_scope(geographic_scope).
strictly_necessary_scope(personal_scope).

use_in_publicly_accessible_spaces_for_law_enforcement(System) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(_Space).

% Evidence considerations for limiting use
evidence_or_indications_regarding_threats(evidence_or_indications(threats)).
evidence_or_indications_regarding_victims(evidence_or_indications(victims)).
evidence_or_indications_regarding_perpetrator(evidence_or_indications(perpetrator)).

% Authorisation conditions
permitted_use_in_publicly_accessible_spaces(System) :-
    real_time_remote_biometric_identification_system(System),
    law_enforcement_authority(Authority),
    must_complete_fundamental_rights_impact_assessment(Authority),
    must_register_system_in_database(System).

must_complete_fundamental_rights_impact_assessment(Authority) :-
    law_enforcement_authority(Authority).

must_register_system_in_database(System) :-
    real_time_remote_biometric_identification_system(System),
    database(_DB).

% Reference database appropriateness
reference_database_appropriate_for_use_case(Database, UseCase) :-
    database(Database),
    use_case(UseCase),
    exhaustively_listed_situation(_Situation).
```

## qwen seed 2

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
```

## qwen seed 3

```prolog
:- module(real_time_remote_biometric_identification, [
    must_take_into_account/2,
    nature_of_situation/1,
    consequences_for_rights_and_freedoms/1,
    safeguards_and_conditions_provided/1,
    must_deploy_only_to_confirm_identity/2,
    must_limit_use_to_strictly_necessary/2,
    evidence_or_indications_regarding_threats/1,
    evidence_or_indications_regarding_victims/1,
    evidence_or_indications_regarding_perpetrator/1,
    permitted_use_in_publicly_accessible_spaces/1,
    must_complete_fundamental_rights_impact_assessment/1,
    must_register_system_in_database/1,
    reference_database_appropriate_for_use_case/2
]).

% Input predicates for entities and situations not defined in this text
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_authority/1.
:- dynamic exhaustively_listed_situation/1.
:- dynamic database/1.
:- dynamic use_case/1.

% Elements to be taken into account in exhaustively listed situations
must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    nature_of_situation(Element).

must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    consequences_for_rights_and_freedoms(Element).

must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    safeguards_and_conditions_provided(Element).

nature_of_situation(nature_of_situation_giving_rise_to_request).

consequences_for_rights_and_freedoms(consequences_for_rights_and_freedoms_of_all_persons_concerned).

safeguards_and_conditions_provided(safeguards_and_conditions_provided_with_use).

% Deployment constraints for law enforcement in publicly accessible spaces
must_deploy_only_to_confirm_identity(System, TargetedIndividual) :-
    real_time_remote_biometric_identification_system(System),
    law_enforcement_purpose_applies(System),
    used_in_publicly_accessible_space(System).

law_enforcement_purpose_applies(System) :-
    real_time_remote_biometric_identification_system(System).

used_in_publicly_accessible_space(System) :-
    real_time_remote_biometric_identification_system(System).

% Limitation to what is strictly necessary
must_limit_use_to_strictly_necessary(System, Scope) :-
    real_time_remote_biometric_identification_system(System),
    used_in_publicly_accessible_space(System),
    strictly_necessary_scope(Scope).

strictly_necessary_scope(period_of_time).
strictly_necessary_scope(geographic_scope).
strictly_necessary_scope(personal_scope).

% Factors regarding strict necessity
evidence_or_indications_regarding_threats(evidence_or_indications(threats)).
evidence_or_indications_regarding_victims(evidence_or_indications(victims)).
evidence_or_indications_regarding_perpetrator(evidence_or_indications(perpetrator)).

% Authorisation conditions
permitted_use_in_publicly_accessible_spaces(System) :-
    real_time_remote_biometric_identification_system(System),
    used_in_publicly_accessible_space(System),
    relevant_law_enforcement_authority(Authority, System),
    must_complete_fundamental_rights_impact_assessment(Authority),
    must_register_system_in_database(System).

relevant_law_enforcement_authority(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System).

must_complete_fundamental_rights_impact_assessment(Authority) :-
    law_enforcement_authority(Authority).

must_register_system_in_database(System) :-
    real_time_remote_biometric_identification_system(System),
    \+ registration_exemption_applies(System).

registration_exemption_applies(_System) :-
    fail.

% Reference database appropriateness
reference_database_appropriate_for_use_case(Database, UseCase) :-
    database(Database),
    use_case(UseCase),
    exhaustively_listed_situation_applies(UseCase).

exhaustively_listed_situation_applies(UseCase) :-
    exhaustively_listed_situation(UseCase).
```
