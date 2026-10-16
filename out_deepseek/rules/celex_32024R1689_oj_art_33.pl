% unit       : celex:32024R1689/oj#art_33
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a7bea9bd88fed2315e5aeb864cef832cb7ffe4afb5bb6a21d8c074822476802d
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7449b03db7d1c225957fdc29bfee5e279426d849a6696fad830c79e885099f02
% cached     : False
% title      : Subsidiaries of notified bodies and subcontracting
:- pred must_ensure_subcontractor_requirements/2, gloss('notified body ensures subcontractor meets requirements'), source('celex:32024R1689/oj#art_33').
:- pred must_inform_notifying_authority/2, gloss('notified body informs notifying authority of subcontracting'), source('celex:32024R1689/oj#art_33').
:- pred must_take_full_responsibility/2, gloss('notified body takes full responsibility for subcontractor tasks'), source('celex:32024R1689/oj#art_33').
:- pred must_obtain_provider_agreement/2, gloss('notified body obtains provider agreement for subcontracting'), source('celex:32024R1689/oj#art_33').
:- pred must_make_subsidiary_list_available/1, gloss('notified body makes subsidiary list publicly available'), source('celex:32024R1689/oj#art_33').
:- pred must_keep_documents_available/2, gloss('notified body keeps subcontractor documents at disposal of notifying authority'), source('celex:32024R1689/oj#art_33').

must_ensure_subcontractor_requirements(Body, Subcontractor) :-
    notified_body(Body),
    (   subcontracts_conformity_assessment_tasks(Body, Subcontractor)
    ;   has_recourse_to_subsidiary(Body, Subcontractor)
    ),
    meets_requirements(Subcontractor, 'celex:32024R1689/oj#art_31').

must_inform_notifying_authority(Body, Subcontractor) :-
    notified_body(Body),
    (   subcontracts_conformity_assessment_tasks(Body, Subcontractor)
    ;   has_recourse_to_subsidiary(Body, Subcontractor)
    ),
    notifying_authority(Authority),
    must_inform(Body, subcontracting(Subcontractor, Authority)).

must_take_full_responsibility(Body, Subcontractor) :-
    notified_body(Body),
    (   subcontractor(Subcontractor)
    ;   subsidiary(Subcontractor)
    ),
    performs_tasks_for(Subcontractor, Body).

must_obtain_provider_agreement(Body, Subcontractor) :-
    notified_body(Body),
    (   subcontractor(Subcontractor)
    ;   subsidiary(Subcontractor)
    ),
    provider(Provider),
    agreement(Provider, subcontracting(Subcontractor)).

must_make_subsidiary_list_available(Body) :-
    notified_body(Body),
    must_make_publicly_available(Body, subsidiary_list).

must_keep_documents_available(Body, Subcontractor) :-
    notified_body(Body),
    (   subcontractor(Subcontractor)
    ;   subsidiary(Subcontractor)
    ),
    notifying_authority(Authority),
    must_keep_at_disposal(Body, documents(assessment(qualifications(Subcontractor)), work(Subcontractor)), Authority, period(years(5), after(termination(subcontracting)))).

provenance(must_ensure_subcontractor_requirements/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(must_obtain_provider_agreement/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_subsidiary_list_available/1, 'celex:32024R1689/oj#art_33').
provenance(must_keep_documents_available/2, 'celex:32024R1689/oj#art_33').

references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').
