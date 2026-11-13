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
:- dynamic law_enforcement_public_authority/1.
:- dynamic completed_impact_assessment/2.
:- dynamic registered_system/2.
:- dynamic exempt_database_registration/1.
:- dynamic reference_database_of_persons/1.
:- dynamic appropriate_for_use_case/2.

authorised_use(XUse) :-
    real_time_remote_biometric_identification_system(XUse),
    publicly_accessible_space(XUse),
    objective_law_enforcement(XUse),
    law_enforcement_public_authority(XAuthority),
    completed_impact_assessment(XAuthority, fundamental_rights(XUse)),
    registered_system(XAuthority, database(XUse)).

permitted_deployment(XUse) :-
    real_time_remote_biometric_identification_system(XUse),
    publicly_accessible_space(XUse),
    objective_law_enforcement(XUse),
    targets_specific_individual_identity(XUse),
    required_limitation(XUse).

appropriate_reference_database(XDatabase) :-
    reference_database_of_persons(XDatabase),
    appropriate_for_use_case(XDatabase, XUseCase),
    exhaustively_listed_situation(XUseCase),
    narrowly_defined_situation(XUseCase).

authorised_use(XUse) :-
    real_time_remote_biometric_identification_system(XUse),
    publicly_accessible_space(XUse),
    objective_law_enforcement(XUse),
    law_enforcement_public_authority(XAuthority),
    completed_impact_assessment(XAuthority, fundamental_rights(XUse)),
    exempt_database_registration(XUse).

required_consideration(XSituation) :-
    exhaustively_listed_situation(XSituation),
    narrowly_defined_situation(XSituation),
    considers_situation_nature(XSituation),
    considers_rights_consequences(XSituation),
    considers_safeguards_and_conditions(XSituation).

required_limitation(XUse) :-
    strictly_necessary_temporal_scope(XUse),
    strictly_necessary_geographic_scope(XUse),
    strictly_necessary_personal_scope(XUse).
