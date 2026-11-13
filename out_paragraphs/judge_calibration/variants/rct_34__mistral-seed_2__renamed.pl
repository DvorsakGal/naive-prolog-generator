:- module(responsible_use_biometric_systems, [
    must_consider_elements/2,
    must_confirm_targeted_identity/2,
    must_limit_scope/2,
    must_complete_fundamental_rights_impact_assessment/2,
    must_register_system/2,
    reference_database_appropriate/2
]).
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic law_enforcement_public_authority/1.
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

element_to_consider(nature(situation_giving_rise_to_request)).

must_register_system(XAuthority, XSystem) :-
    law_enforcement_public_authority(XAuthority),
    real_time_remote_biometric_identification_system(XSystem),
    publicly_accessible_space(XSystem),
    authorised_use(XAuthority, XSystem),
    \+ provided_otherwise_in_regulation(XSystem),
    registered_in_database(XAuthority, XSystem).

element_to_consider(safeguards_and_conditions(use)).

must_have_regard_to_evidence(XSystem, XEvidence) :-
    real_time_remote_biometric_identification_system(XSystem),
    publicly_accessible_space(XSystem),
    evidence_or_indication(XEvidence, perpetrator).

must_have_regard_to_evidence(XSystem, XEvidence) :-
    real_time_remote_biometric_identification_system(XSystem),
    publicly_accessible_space(XSystem),
    evidence_or_indication(XEvidence, victims).

must_complete_fundamental_rights_impact_assessment(XAuthority, XSystem) :-
    law_enforcement_public_authority(XAuthority),
    real_time_remote_biometric_identification_system(XSystem),
    publicly_accessible_space(XSystem),
    authorised_use(XAuthority, XSystem),
    completed_fundamental_rights_impact_assessment(XAuthority, XSystem).

must_confirm_targeted_identity(XAuthority, XSystem) :-
    law_enforcement_public_authority(XAuthority),
    real_time_remote_biometric_identification_system(XSystem),
    publicly_accessible_space(XSystem),
    purpose_of_use(XSystem, law_enforcement),
    specifically_targeted_individual(XSystem, XIndividual),
    confirm_identity(XSystem, XIndividual).

must_limit_scope(XSystem, XScope) :-
    real_time_remote_biometric_identification_system(XSystem),
    publicly_accessible_space(XSystem),
    strictly_necessary(XScope),
    scope_type(XScope, geographic_scope).

must_limit_scope(XSystem, XScope) :-
    real_time_remote_biometric_identification_system(XSystem),
    publicly_accessible_space(XSystem),
    strictly_necessary(XScope),
    scope_type(XScope, period_of_time).

reference_database_appropriate(XDatabase, XUseCase) :-
    reference_database_of_persons(XDatabase),
    use_case(XUseCase),
    exhaustively_listed_situation(XSituation),
    narrowly_defined_situation(XSituation),
    situation_applies_to_use_case(XSituation, XUseCase),
    appropriate_for_use_case(XDatabase, XUseCase).

must_limit_scope(XSystem, XScope) :-
    real_time_remote_biometric_identification_system(XSystem),
    publicly_accessible_space(XSystem),
    strictly_necessary(XScope),
    scope_type(XScope, personal_scope).

must_consider_elements(XSituation, XElement) :-
    exhaustively_listed_situation(XSituation),
    narrowly_defined_situation(XSituation),
    element_to_consider(XElement).

element_to_consider(consequences_for_rights_and_freedoms(all_persons_concerned)).

must_have_regard_to_evidence(XSystem, XEvidence) :-
    real_time_remote_biometric_identification_system(XSystem),
    publicly_accessible_space(XSystem),
    evidence_or_indication(XEvidence, threats).
