% unit       : celex:32024R1689/oj#art_33
% title      : Subsidiaries of notified bodies and subcontracting
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a7bea9bd88fed2315e5aeb864cef832cb7ffe4afb5bb6a21d8c074822476802d
% model      : gpt-oss:120b-cloud
% prompt sha : 849dd534423e0c649f5aabd74baba7562d65acecf318d3eb866a77a25dad7aa5
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred subcontracting_task/2, gloss('notified body subcontracts specific tasks connected with conformity assessment to subcontractor'), source('celex:32024R1689/oj#art_33').
:- pred subsidiary_used/2, gloss('notified body has recourse to a subsidiary'), source('celex:32024R1689/oj#art_33').
:- pred agreement_of_provider/3, gloss('provider agrees to subcontracting or subsidiary activity'), source('celex:32024R1689/oj#art_33').
:- pred meets_requirements_of_art_31/1, gloss('entity meets the requirements laid down in article 31'), source('celex:32024R1689/oj#art_33').
:- pred document_retention_five_years/1, gloss('documents kept for five years from termination of subcontracting'), source('celex:32024R1689/oj#art_33').

must_ensure_requirements_met(NB, Sub) :-
    notified_body(NB),
    (   subcontracting_task(NB, Sub)
    ;   subsidiary_used(NB, Sub)
    ),
    meets_requirements_of_art_31(Sub).

must_inform(Authority, NB) :-
    notifying_authority(Authority),
    notified_body(NB),
    (   subcontracting_task(NB, Sub)
    ;   subsidiary_used(NB, Sub)
    ).

must_take_full_responsibility(NB, Sub) :-
    notified_body(NB),
    (   subcontracting_task(NB, Sub)
    ;   subsidiary_used(NB, Sub)
    ).

permitted_subcontracting(NB, Sub) :-
    provider(P),
    agreement_of_provider(P, NB, Sub),
    subcontracting_task(NB, Sub).

permitted_subsidiary_activity(NB, Sub) :-
    provider(P),
    agreement_of_provider(P, NB, Sub),
    subsidiary_used(NB, Sub).

must_make_list_publicly_available(NB) :-
    notified_body(NB).

must_keep_documents_at_disposal(Authority, Sub) :-
    notifying_authority(Authority),
    (   subcontracting_task(NB, Sub)
    ;   subsidiary_used(NB, Sub)
    ),
    document_retention_five_years(Sub).

provenance(must_ensure_requirements_met/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(permitted_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(permitted_subsidiary_activity/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_list_publicly_available/1, 'celex:32024R1689/oj#art_33').
provenance(must_keep_documents_at_disposal/2, 'celex:32024R1689/oj#art_33').

references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').
