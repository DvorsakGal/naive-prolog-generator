:- module(commission_delegated_acts_ai, [
    empowered_to_adopt_delegated_act/2,
    must_take_into_account/2,
    high_risk_ai_system/1,
    referred_to_in_annex_iii_points_2_to_8/1,
    conformity_assessment_procedure_annex_vii/1,
    internal_control_procedure_annex_vi/1,
    notified_body/1,
    adequate_capacities_and_resources/1
]).

% Input predicates for entities not defined in this text
:- dynamic high_risk_ai_system/1.
:- dynamic notified_body/1.

% The Commission is empowered to adopt delegated acts to amend Article 43(1) and 43(2)
empowered_to_adopt_delegated_act(commission, amend_article_43(1)).
empowered_to_adopt_delegated_act(commission, amend_article_43(2)).

% Purpose of amendment: subject specific high-risk AI systems to Annex VII procedure
empowered_to_adopt_delegated_act(commission, subject_to_conformity_assessment(System, annex_vii)) :-
    high_risk_ai_system(System),
    referred_to_in_annex_iii_points_2_to_8(System).

% Reference definition for Annex III points (2) to (8)
referred_to_in_annex_iii_points_2_to_8(_System).

% Conformity assessment procedures
conformity_assessment_procedure_annex_vii(annex_vii).
internal_control_procedure_annex_vi(annex_vi).

% Obligation: Commission shall take into account effectiveness of Annex VI procedure
must_take_into_account(commission, effectiveness(internal_control_procedure_annex_vi, prevent_or_minimise_risks)) :-
    internal_control_procedure_annex_vi(annex_vi).

% Obligation: Commission shall take into account availability of capacities among notified bodies
must_take_into_account(commission, availability(adequate_capacities_and_resources, notified_bodies)) :-
    notified_body(_Body).

% Adequate capacities and resources predicate
adequate_capacities_and_resources(capacities_and_resources).
