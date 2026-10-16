% unit       : celex:32024R1689/oj#art_33
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a7bea9bd88fed2315e5aeb864cef832cb7ffe4afb5bb6a21d8c074822476802d
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : bf2529dbd26757f73d54d52806d715991fef64ed205d63d256fc9d6b35b42cc1
% cached     : False
% title      : Subsidiaries of notified bodies and subcontracting
:- pred subcontracts_task/2, gloss('notified body subcontracts specific task connected with conformity assessment'), source('celex:32024R1689/oj#art_33').
:- pred has_recourse_to_subsidiary/2, gloss('notified body has recourse to a subsidiary'), source('celex:32024R1689/oj#art_33').
:- pred subcontractor_or_subsidiary/1, gloss('subcontractor or subsidiary used by notified body'), source('celex:32024R1689/oj#art_33').
:- pred subcontracted_or_carried_out_by_subsidiary/2, gloss('activity subcontracted or carried out by subsidiary'), source('celex:32024R1689/oj#art_33').
:- pred provider_agrees_to_subcontracting/2, gloss('provider agrees to subcontracting or use of subsidiary'), source('celex:32024R1689/oj#art_33').
:- pred list_of_subsidiaries_publicly_available/1, gloss('notified body makes list of subsidiaries publicly available'), source('celex:32024R1689/oj#art_33').
:- pred documents_concerning_subcontractor_assessment/1, gloss('documents concerning assessment of qualifications of subcontractor or subsidiary and work carried out'), source('celex:32024R1689/oj#art_33').
:- pred termination_date_of_subcontracting/2, gloss('termination date of subcontracting'), source('celex:32024R1689/oj#art_33').

subcontractor_or_subsidiary(X) :-
    subcontracts_task(_, X).
subcontractor_or_subsidiary(X) :-
    has_recourse_to_subsidiary(_, X).

must_ensure_compliance(Body, subcontractor_or_subsidiary(X)) :-
    notified_body(Body),
    subcontractor_or_subsidiary(X),
    meets_requirements_art_31(X).

must_inform_market_surveillance_authority(Body, subcontracting(Body, X)) :-
    notified_body(Body),
    subcontractor_or_subsidiary(X).

must_take_necessary_steps(Body, full_responsibility_for_tasks(X)) :-
    notified_body(Body),
    subcontractor_or_subsidiary(X).

subcontracted_or_carried_out_by_subsidiary(Body, Activity) :-
    notified_body(Body),
    subcontracts_task(Body, Activity).
subcontracted_or_carried_out_by_subsidiary(Body, Activity) :-
    notified_body(Body),
    has_recourse_to_subsidiary(Body, Activity).

provider_agrees_to_subcontracting(Provider, Activity) :-
    subcontracted_or_carried_out_by_subsidiary(_, Activity),
    provider(Provider).

list_of_subsidiaries_publicly_available(Body) :-
    notified_body(Body),
    has_recourse_to_subsidiary(Body, _).

documents_concerning_subcontractor_assessment(Doc) :-
    subcontractor_or_subsidiary(X),
    assessment_of_qualifications(X, Doc).
documents_concerning_subcontractor_assessment(Doc) :-
    subcontractor_or_subsidiary(X),
    work_carried_out(X, Doc).

keep_at_disposal(Body, documents_concerning_subcontractor_assessment(Doc)) :-
    notified_body(Body),
    documents_concerning_subcontractor_assessment(Doc),
    termination_date_of_subcontracting(Body, Date),
    period(years(5), from(Date)).

provenance(subcontracts_task/2, 'celex:32024R1689/oj#art_33').
provenance(has_recourse_to_subsidiary/2, 'celex:32024R1689/oj#art_33').
provenance(subcontractor_or_subsidiary/1, 'celex:32024R1689/oj#art_33').
provenance(subcontracted_or_carried_out_by_subsidiary/2, 'celex:32024R1689/oj#art_33').
provenance(provider_agrees_to_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(list_of_subsidiaries_publicly_available/1, 'celex:32024R1689/oj#art_33').
provenance(documents_concerning_subcontractor_assessment/1, 'celex:32024R1689/oj#art_33').
provenance(termination_date_of_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_necessary_steps/2, 'celex:32024R1689/oj#art_33').
provenance(keep_at_disposal/2, 'celex:32024R1689/oj#art_33').

references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').
