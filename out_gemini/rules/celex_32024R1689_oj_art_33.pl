% unit       : celex:32024R1689/oj#art_33
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a7bea9bd88fed2315e5aeb864cef832cb7ffe4afb5bb6a21d8c074822476802d
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 66c0736500bcfabd722506ffcc0cff214bc6aee20eb80e6c9dce2b0feea73176
% cached     : False
% title      : Subsidiaries of notified bodies and subcontracting
:- pred subcontractor_or_subsidiary/2, gloss('Entity is a subcontractor or subsidiary of a notified body for tasks connected with conformity assessment'), source('celex:32024R1689/oj#art_33').
:- pred must_ensure/2, gloss('Actor is obliged to ensure a certain condition or compliance'), source('celex:32024R1689/oj#art_33').
:- pred must_inform/2, gloss('Actor is obliged to inform an entity or authority of a matter'), source('celex:32024R1689/oj#art_33').
:- pred must_take_full_responsibility/2, gloss('Actor takes full responsibility for tasks performed by another entity'), source('celex:32024R1689/oj#art_33').
:- pred permitted_subcontracting_or_subsidiary_activity/2, gloss('Activity of subcontracting or recourse to a subsidiary is permitted'), source('celex:32024R1689/oj#art_33').
:- pred provider_agreed/2, gloss('Provider has agreed to subcontracting or subsidiary activity'), source('celex:32024R1689/oj#art_33').
:- pred must_make_publicly_available/2, gloss('Actor is obliged to make information publicly available'), source('celex:32024R1689/oj#art_33').
:- pred must_keep_at_disposal/2, gloss('Actor is obliged to keep documents at the disposal of an authority'), source('celex:32024R1689/oj#art_33').

% Paragraph 1: ensure subcontractor/subsidiary meets Article 31 requirements and inform notifying authority
must_ensure(Body, compliance_art_31(Entity)) :-
    notified_body(Body),
    subcontractor_or_subsidiary(Entity, Body).

must_inform(Body, notifying_authority(subcontracting_or_subsidiary(Entity))) :-
    notified_body(Body),
    subcontractor_or_subsidiary(Entity, Body).

% Paragraph 2: full responsibility for tasks performed
must_take_full_responsibility(Body, tasks_performed_by(Entity)) :-
    notified_body(Body),
    subcontractor_or_subsidiary(Entity, Body).

% Paragraph 3: permitted only with agreement of the provider; list of subsidiaries publicly available
permitted_subcontracting_or_subsidiary_activity(Body, activity(Entity, Provider)) :-
    notified_body(Body),
    subcontractor_or_subsidiary(Entity, Body),
    provider(Provider),
    provider_agreed(Provider, Entity).

must_make_publicly_available(Body, list_of_subsidiaries) :-
    notified_body(Body).

% Paragraph 4: keep documents at disposal of notifying authority for 5 years
must_keep_at_disposal(Body, documents(qualifications_and_work(Entity), notifying_authority, period(years(5), from_termination))) :-
    notified_body(Body),
    subcontractor_or_subsidiary(Entity, Body).

% Provenance
provenance(must_ensure/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(permitted_subcontracting_or_subsidiary_activity/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_33').
provenance(must_keep_at_disposal/2, 'celex:32024R1689/oj#art_33').

% References
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').
