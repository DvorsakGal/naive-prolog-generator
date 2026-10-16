% unit       : celex:32024R1689/oj#art_100
% context    : CHAPTER XII PENALTIES
% slice sha  : 4fab55566e90295fb6885cabbea3df1558b6748fbb45f3740ff2b105773f0357
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 1e1eb407f9c0c3185aa646950f5685f679194d1b21b5fd917669ee68bb157937
% cached     : False
% title      : Administrative fines on Union institutions, bodies, offices and agencies
:- pred european_data_protection_supervisor/1, gloss('European Data Protection Supervisor'), source('celex:32024R1689/oj#art_100').
:- pred union_institution_body_office_or_agency/1, gloss('Union institution, body, office or agency falling within the scope of this Regulation'), source('celex:32024R1689/oj#art_100').
:- pred administrative_fine_applies/2, gloss('administrative fine applicable to a Union body for an infringement'), source('celex:32024R1689/oj#art_100').
:- pred max_administrative_fine_amount/2, gloss('maximum amount of administrative fine in EUR for a category of infringement'), source('celex:32024R1689/oj#art_100').
:- pred must_give_opportunity_to_be_heard/2, gloss('EDPS must give Union body opportunity to be heard before decision'), source('celex:32024R1689/oj#art_100').
:- pred must_notify_commission_of_fines_and_proceedings/2, gloss('EDPS must notify Commission annually of fines imposed and proceedings initiated'), source('celex:32024R1689/oj#art_100').

european_data_protection_supervisor(edps).

union_institution_body_office_or_agency(B) :-
    union_body(B).

administrative_fine_applies(B, prohibited_practice_infringement) :-
    union_institution_body_office_or_agency(B),
    prohibited_practice_infringement(_).

administrative_fine_applies(B, other_non_compliance) :-
    union_institution_body_office_or_agency(B),
    \+ prohibited_practice_infringement(_).

max_administrative_fine_amount(prohibited_practice_infringement, eur(1500000)).
max_administrative_fine_amount(other_non_compliance, eur(750000)).

must_give_opportunity_to_be_heard(edps, B) :-
    union_institution_body_office_or_agency(B),
    administrative_fine_applies(B, _).

must_notify_commission_of_fines_and_proceedings(edps, commission) :-
    european_data_protection_supervisor(edps).

provenance(european_data_protection_supervisor/1, 'celex:32024R1689/oj#art_100').
provenance(union_institution_body_office_or_agency/1, 'celex:32024R1689/oj#art_100').
provenance(administrative_fine_applies/2, 'celex:32024R1689/oj#art_100').
provenance(max_administrative_fine_amount/2, 'celex:32024R1689/oj#art_100').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(must_notify_commission_of_fines_and_proceedings/2, 'celex:32024R1689/oj#art_100').

references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
