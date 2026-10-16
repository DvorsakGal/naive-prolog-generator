% unit       : celex:32024R1689/oj#art_33
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a7bea9bd88fed2315e5aeb864cef832cb7ffe4afb5bb6a21d8c074822476802d
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : be197eb651de36b55a152b2499df51eb766624f6dab30bfbb062e8fb764eeff3
% cached     : False
% title      : Subsidiaries of notified bodies and subcontracting
:- pred subcontractor/1, gloss('entity performing subcontracted conformity assessment tasks'), source('celex:32024R1689/oj#art_33').
:- pred subsidiary/1, gloss('subsidiary of a notified body'), source('celex:32024R1689/oj#art_33').
:- pred subcontracting_agreement/1, gloss('agreement for subcontracting conformity assessment tasks'), source('celex:32024R1689/oj#art_33').
:- pred termination_date/1, gloss('date of termination of subcontracting arrangement'), source('celex:32024R1689/oj#art_33').

must_ensure_subcontractor_meets_requirements(B, S) :-
    notified_body(B),
    (subcontractor(S) ; subsidiary(S)),
    conformity_assessment_activity(A),
    carried_out_by(S, A),
    must_inform(B, notifying_authority(N)),
    notifying_authority(N).

provenance(must_ensure_subcontractor_meets_requirements/2, 'celex:32024R1689/oj#art_33').

must_take_full_responsibility(B, S) :-
    notified_body(B),
    (subcontractor(S) ; subsidiary(S)),
    conformity_assessment_activity(A),
    carried_out_by(S, A).

provenance(must_take_full_responsibility/2, 'celex:32024R1689/oj#art_33').

permitted_subcontracting_or_subsidiary(S, A) :-
    (subcontractor(S) ; subsidiary(S)),
    conformity_assessment_activity(A),
    carried_out_by(S, A),
    agreement_of_provider(A, _P).

provenance(permitted_subcontracting_or_subsidiary/2, 'celex:32024R1689/oj#art_33').

must_make_publicly_available(B, list(subsidiaries)) :-
    notified_body(B).

provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_33').

must_keep_documents_available(B, assessment_documents(S, A)) :-
    notified_body(B),
    (subcontractor(S) ; subsidiary(S)),
    conformity_assessment_activity(A),
    carried_out_by(S, A),
    experience_and_knowledge_of(S, assessment_qualifications),
    termination_date(T),
    period(years(5), after(T)).

provenance(must_keep_documents_available/2, 'celex:32024R1689/oj#art_33').

references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').
