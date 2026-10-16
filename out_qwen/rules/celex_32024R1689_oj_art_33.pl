% unit       : celex:32024R1689/oj#art_33
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a7bea9bd88fed2315e5aeb864cef832cb7ffe4afb5bb6a21d8c074822476802d
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3b7e6ac8c69b3af0f51b59574b43a5075a22ef6e9d6760b976170bd08f0447f0
% cached     : False
% title      : Subsidiaries of notified bodies and subcontracting
:- pred subcontracts_tasks/2, gloss('notified body subtasks conformity assessment to another entity'), source('celex:32024R1689/oj#art_33').
:- pred has_recourse_to_subsidiary/2, gloss('notified body uses a subsidiary for conformity assessment tasks'), source('celex:32024R1689/oj#art_33').
:- pred meets_requirements_of_art_31/1, gloss('entity satisfies requirements laid down in Article 31'), source('celex:32024R1689/oj#art_33').
:- pred must_inform_notifying_authority/2, gloss('notified body must inform notifying authority about subcontractor or subsidiary'), source('celex:32024R1689/oj#art_33').
:- pred must_take_responsibility_for_tasks/2, gloss('notified body takes full responsibility for tasks performed by subcontractor or subsidiary'), source('celex:32024R1689/oj#art_33').
:- pred provider_agreement_obtained/2, gloss('provider has agreed to subcontracting or use of subsidiary'), source('celex:32024R1689/oj#art_33').
:- pred must_make_subsidiaries_list_public/1, gloss('notified body makes list of subsidiaries publicly available'), source('celex:32024R1689/oj#art_33').
:- pred must_keep_assessment_documents/2, gloss('notified body keeps assessment documents at disposal of notifying authority'), source('celex:32024R1689/oj#art_33').

subcontracts_tasks(B, S) :-
    notified_body(B),
    ai_system(S).

has_recourse_to_subsidiary(B, S) :-
    notified_body(B),
    ai_system(S).

must_inform_notifying_authority(B, subcontractor_or_subsidiary(S)) :-
    notified_body(B),
    subcontracts_tasks(B, S),
    meets_requirements_of_art_31(S).

must_inform_notifying_authority(B, subcontractor_or_subsidiary(Sub)) :-
    notified_body(B),
    has_recourse_to_subsidiary(B, Sub),
    meets_requirements_of_art_31(Sub).

must_take_responsibility_for_tasks(B, tasks(Sub)) :-
    notified_body(B),
    subcontracts_tasks(B, Sub).

must_take_responsibility_for_tasks(B, tasks(Sub)) :-
    notified_body(B),
    has_recourse_to_subsidiary(B, Sub).

permitted_subcontracting(B, S) :-
    notified_body(B),
    ai_system(S),
    provider_agreement_obtained(S, B).

permitted_use_of_subsidiary(B, Sub) :-
    notified_body(B),
    has_recourse_to_subsidiary(B, Sub),
    provider_agreement_obtained(Sub, B).

must_make_subsidiaries_list_public(B) :-
    notified_body(B).

must_keep_assessment_documents(B, period(years(5), after(termination(Sub)))) :-
    notified_body(B),
    subcontracts_tasks(B, Sub).

must_keep_assessment_documents(B, period(years(5), after(termination(Sub)))) :-
    notified_body(B),
    has_recourse_to_subsidiary(B, Sub).

provenance(subcontracts_tasks/2, 'celex:32024R1689/oj#art_33').
provenance(has_recourse_to_subsidiary/2, 'celex:32024R1689/oj#art_33').
provenance(meets_requirements_of_art_31/1, 'celex:32024R1689/oj#art_33').
provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_responsibility_for_tasks/2, 'celex:32024R1689/oj#art_33').
provenance(provider_agreement_obtained/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_subsidiaries_list_public/1, 'celex:32024R1689/oj#art_33').
provenance(must_keep_assessment_documents/2, 'celex:32024R1689/oj#art_33').

references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
