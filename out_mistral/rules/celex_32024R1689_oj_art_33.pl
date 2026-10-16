% unit       : celex:32024R1689/oj#art_33
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a7bea9bd88fed2315e5aeb864cef832cb7ffe4afb5bb6a21d8c074822476802d
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1feea149f3eddbd2076aaae60763cf046d89e0c9482d516361135984a05c9c7b
% cached     : False
% title      : Subsidiaries of notified bodies and subcontracting
:- pred subcontractor/1, gloss('entity to which a notified body subcontracts specific tasks'), source('celex:32024R1689/oj#art_33').
:- pred subsidiary_of_notified_body/1, gloss('subsidiary of a notified body used for conformity assessment tasks'), source('celex:32024R1689/oj#art_33').
:- pred subcontracted_task/2, gloss('notified body subcontracts a specific task connected with conformity assessment'), source('celex:32024R1689/oj#art_33').
:- pred subsidiary_task/2, gloss('notified body has recourse to a subsidiary for a specific task'), source('celex:32024R1689/oj#art_33').
:- pred meets_requirements_art_31/1, gloss('entity meets the requirements laid down in Article 31'), source('celex:32024R1689/oj#art_33').
:- pred must_inform_notifying_authority/2, gloss('notified body must inform the notifying authority about a subcontractor or subsidiary'), source('celex:32024R1689/oj#art_33').
:- pred full_responsibility/2, gloss('notified body takes full responsibility for tasks performed by a subcontractor or subsidiary'), source('celex:32024R1689/oj#art_33').
:- pred provider_agreement/2, gloss('provider has agreed to subcontracting or use of a subsidiary'), source('celex:32024R1689/oj#art_33').
:- pred publicly_available_list/2, gloss('notified body makes a list of its subsidiaries publicly available'), source('celex:32024R1689/oj#art_33').
:- pred documents_kept_at_disposal/3, gloss('relevant documents kept at disposal of notifying authority for a period from termination of subcontracting'), source('celex:32024R1689/oj#art_33').

subcontractor(S) :-
    subcontracted_task(_NB, S).

subsidiary_of_notified_body(S) :-
    subsidiary_task(_NB, S).

meets_requirements_art_31(S) :-
    subcontractor(S).
meets_requirements_art_31(S) :-
    subsidiary_of_notified_body(S).

must_inform_notifying_authority(NB, S) :-
    notified_body(NB),
    subcontractor(S),
    subcontracted_task(NB, S),
    meets_requirements_art_31(S).

must_inform_notifying_authority(NB, S) :-
    notified_body(NB),
    subsidiary_of_notified_body(S),
    subsidiary_task(NB, S),
    meets_requirements_art_31(S).

full_responsibility(NB, S) :-
    notified_body(NB),
    subcontractor(S),
    subcontracted_task(NB, S).

full_responsibility(NB, S) :-
    notified_body(NB),
    subsidiary_of_notified_body(S),
    subsidiary_task(NB, S).

subcontracted_task(NB, S) :-
    notified_body(NB),
    subcontractor(S),
    provider_agreement(_P, task(NB, S)).

subsidiary_task(NB, S) :-
    notified_body(NB),
    subsidiary_of_notified_body(S),
    provider_agreement(_P, task(NB, S)).

provider_agreement(P, task(NB, S)) :-
    provider(P),
    notified_body(NB),
    subcontractor(S).

provider_agreement(P, task(NB, S)) :-
    provider(P),
    notified_body(NB),
    subsidiary_of_notified_body(S).

publicly_available_list(NB, subsidiaries) :-
    notified_body(NB),
    subsidiary_of_notified_body(_S),
    subsidiary_task(NB, _S).

documents_kept_at_disposal(NB, documents(assessment(qualifications(S)), work(S)), years(5)) :-
    notified_body(NB),
    subcontractor(S),
    subcontracted_task(NB, S).

documents_kept_at_disposal(NB, documents(assessment(qualifications(S)), work(S)), years(5)) :-
    notified_body(NB),
    subsidiary_of_notified_body(S),
    subsidiary_task(NB, S).

provenance(subcontractor/1, 'celex:32024R1689/oj#art_33').
provenance(subsidiary_of_notified_body/1, 'celex:32024R1689/oj#art_33').
provenance(subcontracted_task/2, 'celex:32024R1689/oj#art_33').
provenance(subsidiary_task/2, 'celex:32024R1689/oj#art_33').
provenance(meets_requirements_art_31/1, 'celex:32024R1689/oj#art_33').
provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_33').
provenance(full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(provider_agreement/2, 'celex:32024R1689/oj#art_33').
provenance(publicly_available_list/2, 'celex:32024R1689/oj#art_33').
provenance(documents_kept_at_disposal/3, 'celex:32024R1689/oj#art_33').

references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').
