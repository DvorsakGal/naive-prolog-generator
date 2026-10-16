% unit       : celex:32024R1689/oj#art_33
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a7bea9bd88fed2315e5aeb864cef832cb7ffe4afb5bb6a21d8c074822476802d
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 897b2758f96540f787f0ebdccbfc4e8f0716482a7f30195d44264235e2884380
% cached     : False
% title      : Subsidiaries of notified bodies and subcontracting
:- pred subcontracts_tasks/2, gloss('notified body subcontracts specific tasks connected with conformity assessment'), source('celex:32024R1689/oj#art_33').
:- pred has_recourse_to_subsidiary/2, gloss('notified body has recourse to a subsidiary for conformity assessment tasks'), source('celex:32024R1689/oj#art_33').
:- pred must_ensure_subcontractor_meets_requirements/2, gloss('notified body must ensure subcontractor meets Article 31 requirements'), source('celex:32024R1689/oj#art_33').
:- pred must_ensure_subsidiary_meets_requirements/2, gloss('notified body must ensure subsidiary meets Article 31 requirements'), source('celex:32024R1689/oj#art_33').
:- pred must_inform_notifying_authority_of_subcontracting/2, gloss('notified body must inform notifying authority of subcontracting or subsidiary use'), source('celex:32024R1689/oj#art_33').
:- pred takes_full_responsibility_for_subcontracted_tasks/2, gloss('notified body takes full responsibility for tasks performed by subcontractors or subsidiaries'), source('celex:32024R1689/oj#art_33').
:- pred provider_agrees_to_subcontracting/2, gloss('provider agrees to subcontracting or subsidiary carrying out activities'), source('celex:32024R1689/oj#art_33').
:- pred must_make_subsidiary_list_publicly_available/1, gloss('notified body must make list of subsidiaries publicly available'), source('celex:32024R1689/oj#art_33').
:- pred must_keep_assessment_documents/2, gloss('notified body must keep documents concerning qualification assessment and work at disposal of notifying authority'), source('celex:32024R1689/oj#art_33').

subcontracts_tasks(B, S) :-
    notified_body(B),
    ai_system(S).

has_recourse_to_subsidiary(B, S) :-
    notified_body(B),
    ai_system(S).

must_ensure_subcontractor_meets_requirements(B, S) :-
    notified_body(B),
    subcontracts_tasks(B, S).

must_ensure_subsidiary_meets_requirements(B, S) :-
    notified_body(B),
    has_recourse_to_subsidiary(B, S).

must_inform_notifying_authority_of_subcontracting(B, A) :-
    notified_body(B),
    notifying_authority(A),
    (   subcontracts_tasks(B, _)
    ;   has_recourse_to_subsidiary(B, _)
    ).

takes_full_responsibility_for_subcontracted_tasks(B, S) :-
    notified_body(B),
    (   subcontracts_tasks(B, S)
    ;   has_recourse_to_subsidiary(B, S)
    ).

provider_agrees_to_subcontracting(P, B) :-
    provider(P),
    notified_body(B).

must_make_subsidiary_list_publicly_available(B) :-
    notified_body(B).

must_keep_assessment_documents(B, A) :-
    notified_body(B),
    notifying_authority(A),
    (   subcontracts_tasks(B, _)
    ;   has_recourse_to_subsidiary(B, _)
    ).

provenance(subcontracts_tasks/2, 'celex:32024R1689/oj#art_33').
provenance(has_recourse_to_subsidiary/2, 'celex:32024R1689/oj#art_33').
provenance(must_ensure_subcontractor_meets_requirements/2, 'celex:32024R1689/oj#art_33').
provenance(must_ensure_subsidiary_meets_requirements/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform_notifying_authority_of_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(takes_full_responsibility_for_subcontracted_tasks/2, 'celex:32024R1689/oj#art_33').
provenance(provider_agrees_to_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_subsidiary_list_publicly_available/1, 'celex:32024R1689/oj#art_33').
provenance(must_keep_assessment_documents/2, 'celex:32024R1689/oj#art_33').

references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
