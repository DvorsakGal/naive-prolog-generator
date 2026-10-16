% unit       : celex:32024R1689/oj#art_33
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a7bea9bd88fed2315e5aeb864cef832cb7ffe4afb5bb6a21d8c074822476802d
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : e705170858fa6245d218499c33fc7ea83806e0f22bdda5e10e74ca58f9d04f7a
% cached     : False
% title      : Subsidiaries of notified bodies and subcontracting
:- pred must_ensure_subcontractor_meets_requirements/2, gloss('notified body must ensure subcontractor or subsidiary meets requirements'), source('celex:32024R1689/oj#art_33').
:- pred must_inform_notifying_authority_of_subcontracting/2, gloss('notified body must inform notifying authority of subcontracting'), source('celex:32024R1689/oj#art_33').
:- pred must_take_full_responsibility_for_subcontracted_tasks/2, gloss('notified body must take full responsibility for tasks performed by subcontractors or subsidiaries'), source('celex:32024R1689/oj#art_33').
:- pred must_obtain_provider_agreement_for_subcontracting/2, gloss('notified body must obtain provider agreement for subcontracting or subsidiary activities'), source('celex:32024R1689/oj#art_33').
:- pred must_make_subsidiary_list_publicly_available/1, gloss('notified body must make list of subsidiaries publicly available'), source('celex:32024R1689/oj#art_33').
:- pred must_keep_subcontractor_documents_available/2, gloss('notified body must keep subcontractor qualification and work documents at disposal of notifying authority'), source('celex:32024R1689/oj#art_33').

must_ensure_subcontractor_meets_requirements(Body, Sub) :-
    notified_body(Body),
    (   subcontractor(Sub) ; subsidiary(Sub) ),
    meets_requirements(Sub, 'celex:32024R1689/oj#art_31').

must_inform_notifying_authority_of_subcontracting(Body, Sub) :-
    notified_body(Body),
    (   subcontractor(Sub) ; subsidiary(Sub) ),
    notifying_authority(Authority),
    must_inform(Body, Authority, subcontracting(Sub)).

must_take_full_responsibility_for_subcontracted_tasks(Body, Sub) :-
    notified_body(Body),
    (   subcontractor(Sub) ; subsidiary(Sub) ),
    tasks_performed(Sub, Tasks),
    responsible(Body, Tasks).

must_obtain_provider_agreement_for_subcontracting(Body, Sub) :-
    notified_body(Body),
    (   subcontractor(Sub) ; subsidiary(Sub) ),
    provider(Provider),
    agreement(Provider, subcontracting(Sub)).

must_make_subsidiary_list_publicly_available(Body) :-
    notified_body(Body),
    subsidiary_list(Body, List),
    publicly_available(List).

must_keep_subcontractor_documents_available(Body, Sub) :-
    notified_body(Body),
    (   subcontractor(Sub) ; subsidiary(Sub) ),
    notifying_authority(Authority),
    documents(assessment(qualifications(Sub)), work_carried_out(Sub)),
    kept_at_disposal(Authority, documents(assessment(qualifications(Sub)), work_carried_out(Sub)), period(years(5), from(termination_date(subcontracting)))).

provenance(must_ensure_subcontractor_meets_requirements/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform_notifying_authority_of_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_full_responsibility_for_subcontracted_tasks/2, 'celex:32024R1689/oj#art_33').
provenance(must_obtain_provider_agreement_for_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_subsidiary_list_publicly_available/1, 'celex:32024R1689/oj#art_33').
provenance(must_keep_subcontractor_documents_available/2, 'celex:32024R1689/oj#art_33').

references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').
