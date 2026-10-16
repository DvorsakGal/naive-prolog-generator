% unit       : celex:32024R1689/oj#art_33
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a7bea9bd88fed2315e5aeb864cef832cb7ffe4afb5bb6a21d8c074822476802d
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 05f600760455a9a540e9b5ba0b9799eb43b49479b36afc8c2d2d2ebc3e626275
% cached     : False
% title      : Subsidiaries of notified bodies and subcontracting
:- pred must_ensure_requirements_met/2, gloss('notified body must ensure subcontractor or subsidiary meets requirements'), source('celex:32024R1689/oj#art_33').
:- pred must_inform/2, gloss('notified body must inform notifying authority'), source('celex:32024R1689/oj#art_33').
:- pred takes_full_responsibility/2, gloss('notified body takes full responsibility for tasks performed by others'), source('celex:32024R1689/oj#art_33').
:- pred permitted_subcontracting/2, gloss('subcontracting or subsidiary activity is permitted'), source('celex:32024R1689/oj#art_33').
:- pred must_make_publicly_available/2, gloss('notified body must make list publicly available'), source('celex:32024R1689/oj#art_33').
:- pred must_keep_at_disposal/3, gloss('documents must be kept at disposal of notifying authority for period'), source('celex:32024R1689/oj#art_33').

must_ensure_requirements_met(Body, SubcontractorOrSubsidiary) :-
    notified_body(Body),
    (subcontractor(SubcontractorOrSubsidiary) ; subsidiary(SubcontractorOrSubsidiary)),
    tasks_connected_with_conformity_assessment(SubcontractorOrSubsidiary, Body).

must_inform(Body, notifying_authority(Authority)) :-
    must_ensure_requirements_met(Body, _),
    notifying_authority(Authority).

takes_full_responsibility(Body, Tasks) :-
    notified_body(Body),
    performed_by(SubcontractorOrSubsidiary, Tasks),
    (subcontractor(SubcontractorOrSubsidiary) ; subsidiary(SubcontractorOrSubsidiary)).

permitted_subcontracting(Body, Tasks) :-
    notified_body(Body),
    tasks_connected_with_conformity_assessment(Tasks),
    agreement_of_provider(Provider),
    provider(Provider).

must_make_publicly_available(Body, list_of_subsidiaries(Body)) :-
    notified_body(Body),
    subsidiary(_).

must_keep_at_disposal(Body, documents(AssessmentOrWork), period(years(5), from(termination_date(Subcontracting)))) :-
    notified_body(Body),
    (assessment_of_qualifications(Subcontracting) ; work_carried_out(Subcontracting)),
    (subcontractor(Subcontracting) ; subsidiary(Subcontracting)),
    termination_date(Subcontracting, _).

provenance(must_ensure_requirements_met/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform/2, 'celex:32024R1689/oj#art_33').
provenance(takes_full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(permitted_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_33').
provenance(must_keep_at_disposal/3, 'celex:32024R1689/oj#art_33').

references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').
