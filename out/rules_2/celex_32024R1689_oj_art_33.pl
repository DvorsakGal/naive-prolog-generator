% unit       : celex:32024R1689/oj#art_33
% title      : Subsidiaries of notified bodies and subcontracting
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a7bea9bd88fed2315e5aeb864cef832cb7ffe4afb5bb6a21d8c074822476802d
% model      : gpt-oss:120b-cloud
% prompt sha : d10a53416c6e633dedba657e198afaba4c600b523a808f28185710f64e383211
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred subcontractor/1, gloss('entity performing subcontracted tasks'), source('celex:32024R1689/oj#art_33').
:- pred subsidiary/1, gloss('entity that is a subsidiary of a notified body'), source('celex:32024R1689/oj#art_33').
:- pred agreement/2, gloss('agreement between provider and subcontractor or subsidiary'), source('celex:32024R1689/oj#art_33').
:- pred requirements_laid_down_in_art_31/1, gloss('requirements set out in article 31'), source('celex:32024R1689/oj#art_33').
:- pred meets_requirements/1, gloss('entity meets the requirements of article 31'), source('celex:32024R1689/oj#art_33').
:- pred retention_period_five_years/1, gloss('documents retained for five years after termination of subcontracting'), source('celex:32024R1689/oj#art_33').
:- pred subcontractor_or_subsidiary/1, gloss('entity that is either a subcontractor or a subsidiary'), source('celex:32024R1689/oj#art_33').

%--- Core obligations and permissions -----------------------------------------

must_ensure(NB, Sub) :-
    notified_body(NB),
    subcontractor_or_subsidiary(Sub),
    meets_requirements(Sub),
    notified_body(NB).

must_notify(Authority, Sub) :-
    notifying_authority(Authority),
    subcontractor_or_subsidiary(Sub),
    notifying_authority(Authority).

must_take_full_responsibility(NB, Sub) :-
    notified_body(NB),
    subcontractor_or_subsidiary(Sub),
    notified_body(NB),
    subcontractor_or_subsidiary(Sub).

permitted_subcontracting(Sub) :-
    provider(P),
    agreement(P, Sub),
    provider(P),
    subcontractor_or_subsidiary(Sub).

must_make_list_publicly_available(NB) :-
    notified_body(NB),
    notified_body(NB).

must_keep_documents_at_disposal_of(Authority, Sub) :-
    notifying_authority(Authority),
    subcontractor_or_subsidiary(Sub),
    retention_period_five_years(Sub),
    notifying_authority(Authority).

%--- Auxiliary definitions ---------------------------------------------------

subcontractor_or_subsidiary(X) :-
    subcontractor(X).

subcontractor_or_subsidiary(X) :-
    subsidiary(X).

meets_requirements(Sub) :-
    subcontractor_or_subsidiary(Sub),
    requirements_laid_down_in_art_31(Sub),
    subcontractor_or_subsidiary(Sub).

requirements_laid_down_in_art_31(Sub) :-
    subcontractor_or_subsidiary(Sub),
    subcontractor_or_subsidiary(Sub).

retention_period_five_years(Sub) :-
    subcontractor_or_subsidiary(Sub),
    subcontractor_or_subsidiary(Sub).

%--- Provenance -------------------------------------------------------------

provenance(must_ensure/2, 'celex:32024R1689/oj#art_33').
provenance(must_notify/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(permitted_subcontracting/1, 'celex:32024R1689/oj#art_33').
provenance(must_make_list_publicly_available/1, 'celex:32024R1689/oj#art_33').
provenance(must_keep_documents_at_disposal_of/2, 'celex:32024R1689/oj#art_33').
provenance(subcontractor_or_subsidiary/1, 'celex:32024R1689/oj#art_33').
provenance(meets_requirements/1, 'celex:32024R1689/oj#art_33').
provenance(requirements_laid_down_in_art_31/1, 'celex:32024R1689/oj#art_33').
provenance(retention_period_five_years/1, 'celex:32024R1689/oj#art_33').

%--- References -------------------------------------------------------------

references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').
