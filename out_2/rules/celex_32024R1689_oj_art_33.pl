% unit       : celex:32024R1689/oj#art_33
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a7bea9bd88fed2315e5aeb864cef832cb7ffe4afb5bb6a21d8c074822476802d
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2e000a1421334934de677b4ca6f56e8498a14943d9ae57988e4f702695b190e5
% cached     : False
% title      : Subsidiaries of notified bodies and subcontracting
:- pred must_ensure/2, gloss('obligation to ensure a condition'), source('celex:32024R1689/oj#art_33').
:- pred must_inform/2, gloss('obligation to inform the notifying authority'), source('celex:32024R1689/oj#art_33').
:- pred must_take_full_responsibility/2, gloss('obligation to take full responsibility for tasks'), source('celex:32024R1689/oj#art_33').
:- pred must_make_publicly_available/2, gloss('obligation to make a list publicly available'), source('celex:32024R1689/oj#art_33').
:- pred must_keep_at_disposal/2, gloss('obligation to keep documents at the disposal of the notifying authority'), source('celex:32024R1689/oj#art_33').
:- pred required_requirements_of_art_31/1, gloss('must meet the requirements laid down in Article 31'), source('celex:32024R1689/oj#art_33').
:- pred provider_agrees/1, gloss('provider gives agreement'), source('celex:32024R1689/oj#art_33').
:- pred permitted_subcontracting/1, gloss('permission to subcontract activities'), source('celex:32024R1689/oj#art_33').
:- pred permitted_subsidiary/1, gloss('permission to use a subsidiary'), source('celex:32024R1689/oj#art_33').
:- pred subcontractor/1, gloss('entity performing subcontracted tasks'), source('celex:32024R1689/oj#art_33').
:- pred subsidiary/1, gloss('entity that is a subsidiary of a notified body'), source('celex:32024R1689/oj#art_33').
:- pred subcontracts_task/2, gloss('notified body subcontracts a specific task to a subcontractor'), source('celex:32024R1689/oj#art_33').
:- pred has_subsidiary/2, gloss('notified body has a subsidiary'), source('celex:32024R1689/oj#art_33').
:- pred relevant_documents/1, gloss('documents concerning assessment of qualifications and work carried out'), source('celex:32024R1689/oj#art_33').
:- pred list_of_subsidiaries/1, gloss('list of subsidiaries of a notified body'), source('celex:32024R1689/oj#art_33').

must_ensure(NB, required_requirements_of_art_31(Sub)) :-
    notified_body(NB),
    ( subcontracts_task(NB, Sub) ; has_subsidiary(NB, Sub) ).

must_inform(NB, notifying_authority) :-
    notified_body(NB),
    ( subcontracts_task(NB, Sub) ; has_subsidiary(NB, Sub) ).

must_take_full_responsibility(NB, subcontractor(Sub)) :-
    notified_body(NB),
    subcontractor(Sub).

must_take_full_responsibility(NB, subsidiary(Sub)) :-
    notified_body(NB),
    subsidiary(Sub).

permitted_subcontracting(Activity) :-
    provider_agrees(Activity).

permitted_subsidiary(Activity) :-
    provider_agrees(Activity).

must_make_publicly_available(NB, list_of_subsidiaries(NB)) :-
    notified_body(NB).

must_keep_at_disposal(NA, kept_documents(Sub, period(years(5)))) :-
    notifying_authority(NA),
    ( subcontractor(Sub) ; subsidiary(Sub) ),
    relevant_documents(Sub).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_33').
provenance(must_keep_at_disposal/2, 'celex:32024R1689/oj#art_33').
provenance(required_requirements_of_art_31/1, 'celex:32024R1689/oj#art_33').
provenance(provider_agrees/1, 'celex:32024R1689/oj#art_33').
provenance(permitted_subcontracting/1, 'celex:32024R1689/oj#art_33').
provenance(permitted_subsidiary/1, 'celex:32024R1689/oj#art_33').
provenance(subcontractor/1, 'celex:32024R1689/oj#art_33').
provenance(subsidiary/1, 'celex:32024R1689/oj#art_33').
provenance(subcontracts_task/2, 'celex:32024R1689/oj#art_33').
provenance(has_subsidiary/2, 'celex:32024R1689/oj#art_33').
provenance(relevant_documents/1, 'celex:32024R1689/oj#art_33').
provenance(list_of_subsidiaries/1, 'celex:32024R1689/oj#art_33').

references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').
