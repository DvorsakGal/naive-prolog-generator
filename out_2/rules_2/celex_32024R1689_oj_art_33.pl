% unit       : celex:32024R1689/oj#art_33
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a7bea9bd88fed2315e5aeb864cef832cb7ffe4afb5bb6a21d8c074822476802d
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : dd06fc44f0d4ae4ecbf4ad27e621d5259efd876cc109b5b472b8927cca84fcc4
% cached     : False
% title      : Subsidiaries of notified bodies and subcontracting
:- pred subcontractor/2, gloss('relationship where a notified body uses a subcontractor for conformity assessment tasks'), source('celex:32024R1689/oj#art_33').
:- pred subsidiary/2, gloss('relationship where a notified body uses a subsidiary for conformity assessment tasks'), source('celex:32024R1689/oj#art_33').
:- pred agreement/2, gloss('agreement of a provider with a subcontractor or subsidiary'), source('celex:32024R1689/oj#art_33').

:- pred must_ensure/2, gloss('obligation to ensure that a subcontractor or subsidiary meets the requirements laid down in article 31'), source('celex:32024R1689/oj#art_33').
:- pred must_inform/2, gloss('obligation to inform the notifying authority'), source('celex:32024R1689/oj#art_33').
:- pred must_take_full_responsibility/2, gloss('obligation to take full responsibility for tasks performed by a subcontractor or subsidiary'), source('celex:32024R1689/oj#art_33').
:- pred permit_subcontracting/2, gloss('permission to subcontract activities only with the agreement of the provider'), source('celex:32024R1689/oj#art_33').
:- pred must_keep/2, gloss('obligation to keep relevant documents for five years after termination of subcontracting'), source('celex:32024R1689/oj#art_33').

must_ensure(NB, meets_requirements_art_31(Sub)) :-
    notified_body(NB),
    (   subcontractor(NB, Sub)
    ;   subsidiary(NB, Sub)
    ).

must_inform(NB, notifying_authority(A)) :-
    notified_body(NB),
    notifying_authority(A).

must_take_full_responsibility(NB, subcontractor(Sub)) :-
    notified_body(NB),
    subcontractor(NB, Sub).

must_take_full_responsibility(NB, subsidiary(Sub)) :-
    notified_body(NB),
    subsidiary(NB, Sub).

permit_subcontracting(Provider, Sub) :-
    provider(Provider),
    agreement(Provider, Sub).

must_make_publicly_available(NB, subsidiaries_list(NB)) :-
    notified_body(NB).

must_keep(NB, documents_of(Sub, period(years(5), after(termination_date(Sub))))) :-
    notified_body(NB),
    (   subcontractor(NB, Sub)
    ;   subsidiary(NB, Sub)
    ).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(permit_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_33').
provenance(must_keep/2, 'celex:32024R1689/oj#art_33').
provenance(subcontractor/2, 'celex:32024R1689/oj#art_33').
provenance(subsidiary/2, 'celex:32024R1689/oj#art_33').
provenance(agreement/2, 'celex:32024R1689/oj#art_33').

references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').
