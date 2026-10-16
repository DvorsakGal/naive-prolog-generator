% unit       : celex:32024R1689/oj#art_33
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a7bea9bd88fed2315e5aeb864cef832cb7ffe4afb5bb6a21d8c074822476802d
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 8c7ef7a3d6566dbc16b41c3d9570e102135a3773d5b2cb3590f1d90a6956e745
% cached     : False
% title      : Subsidiaries of notified bodies and subcontracting
:- pred subcontracts_or_uses_subsidiary/3, gloss('notified body subcontracts specific tasks or uses a subsidiary for conformity assessment tasks'), source('celex:32024R1689/oj#art_33').
:- pred subsidiary_of/2, gloss('entity is a subsidiary of a notified body'), source('celex:32024R1689/oj#art_33').
:- pred subcontractor_of/2, gloss('entity is a subcontractor of a notified body'), source('celex:32024R1689/oj#art_33').
:- pred agreement_of_provider/3, gloss('provider agrees that activities are subcontracted to or carried out by an entity'), source('celex:32024R1689/oj#art_33').
:- pred permitted_subcontract_or_subsidiary_activity/3, gloss('notified body may subcontract activity or have it carried out by subsidiary'), source('celex:32024R1689/oj#art_33').
:- pred must_ensure/2, gloss('actor must ensure a condition holds'), source('celex:32024R1689/oj#art_33').
:- pred must_inform/2, gloss('actor must inform an entity about something'), source('celex:32024R1689/oj#art_33').
:- pred must_take_full_responsibility/2, gloss('actor must take full responsibility for tasks performed by entity'), source('celex:32024R1689/oj#art_33').
:- pred must_make_publicly_available/2, gloss('actor must make information publicly available'), source('celex:32024R1689/oj#art_33').
:- pred must_keep_at_disposal/2, gloss('actor must keep documents at the disposal of an authority'), source('celex:32024R1689/oj#art_33').

% Paragraph 1:
% Where a notified body subcontracts specific tasks connected with the conformity assessment or has recourse to a subsidiary,
% it shall ensure that the subcontractor or the subsidiary meets the requirements laid down in Article 31,
% and shall inform the notifying authority accordingly.
must_ensure(Body, meets_requirements_art_31(Entity)) :-
    notified_body(Body),
    subcontracts_or_uses_subsidiary(Body, Entity, conformity_assessment_tasks).

must_inform(Body, notifying_authority(subcontractor_or_subsidiary(Entity))) :-
    notified_body(Body),
    subcontracts_or_uses_subsidiary(Body, Entity, conformity_assessment_tasks).

% Paragraph 2:
% Notified bodies shall take full responsibility for the tasks performed by any subcontractors or subsidiaries.
must_take_full_responsibility(Body, tasks_performed_by(Entity)) :-
    notified_body(Body),
    ( subcontractor_of(Entity, Body)
    ; subsidiary_of(Entity, Body)
    ).

% Paragraph 3:
% Activities may be subcontracted or carried out by a subsidiary only with the agreement of the provider.
permitted_subcontract_or_subsidiary_activity(Body, Entity, Tasks) :-
    notified_body(Body),
    ( subcontractor_of(Entity, Body)
    ; subsidiary_of(Entity, Body)
    ),
    provider(Provider),
    agreement_of_provider(Provider, Entity, Tasks).

% Notified bodies shall make a list of their subsidiaries publicly available.
must_make_publicly_available(Body, list_of_subsidiaries) :-
    notified_body(Body).

% Paragraph 4:
% The relevant documents concerning the assessment of the qualifications of the subcontractor or the subsidiary
% and the work carried out by them under this Regulation shall be kept at the disposal of the notifying authority
% for a period of five years from the termination date of the subcontracting.
must_keep_at_disposal(Body, at_disposal(Authority, documents(qualifications_and_work(Entity)), period(years(5), from(termination_date(subcontracting)))))) :-
    notified_body(Body),
    notifying_authority(Authority),
    ( subcontractor_of(Entity, Body)
    ; subsidiary_of(Entity, Body)
    ).

% Provenance
provenance(must_ensure/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(permitted_subcontract_or_subsidiary_activity/3, 'celex:32024R1689/oj#art_33').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_33').
provenance(must_keep_at_disposal/2, 'celex:32024R1689/oj#art_33').

% References
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').
