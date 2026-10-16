% unit       : celex:32024R1689/oj#art_100
% context    : CHAPTER XII PENALTIES
% slice sha  : 4fab55566e90295fb6885cabbea3df1558b6748fbb45f3740ff2b105773f0357
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3a37e738cf06a031f1fb914bb7a880320d2138533b48a2f98253c901340074d8
% cached     : False
% title      : Administrative fines on Union institutions, bodies, offices and agencies
:- pred union_institution_body_office_or_agency/1, gloss('Union institution, body, office or agency falling within the scope of this Regulation'), source('celex:32024R1689/oj#art_100').
:- pred edps/1, gloss('European Data Protection Supervisor'), source('celex:32024R1689/oj#art_100').
:- pred administrative_fine/1, gloss('administrative fine imposed under Article 100'), source('celex:32024R1689/oj#art_100').
:- pred infringement_of_prohibited_ai_practice/1, gloss('non-compliance with prohibition in Article 5'), source('celex:32024R1689/oj#art_100').
:- pred infringement_of_other_requirement/1, gloss('non-compliance with requirement or obligation other than Article 5'), source('celex:32024R1689/oj#art_100').

edps(edps).

union_institution_body_office_or_agency(E) :-
    operator(E).

administrative_fine(fine(Entity, Amount)) :-
    edps(EDPS),
    union_institution_body_office_or_agency(Entity),
    imposes_administrative_fine(EDPS, Entity, Amount).

imposes_administrative_fine(EDPS, Entity, Amount) :-
    edps(EDPS),
    union_institution_body_office_or_agency(Entity),
    infringement_of_prohibited_ai_practice(infringement(Entity)),
    max_fine_for_prohibited_practice(Max),
    Amount =< Max.

imposes_administrative_fine(EDPS, Entity, Amount) :-
    edps(EDPS),
    union_institution_body_office_or_agency(Entity),
    infringement_of_other_requirement(infringement(Entity)),
    max_fine_for_other_requirement(Max),
    Amount =< Max.

max_fine_for_prohibited_practice(eur(1500000)).
max_fine_for_other_requirement(eur(750000)).

must_give_opportunity_to_be_heard(EDPS, Entity) :-
    edps(EDPS),
    union_institution_body_office_or_agency(Entity),
    subject_of_proceedings(Entity).

must_base_decision_on_commented_elements(EDPS, Decision) :-
    edps(EDPS),
    decision_on_administrative_fine(Decision).

must_respect_rights_of_defence(EDPS, Party) :-
    edps(EDPS),
    party_concerned(Party).

must_notify_commission_annually(EDPS, Report) :-
    edps(EDPS),
    annual_report_on_fines_and_litigation(Report).

subject_of_proceedings(Entity) :-
    union_institution_body_office_or_agency(Entity).

party_concerned(Party) :-
    union_institution_body_office_or_agency(Party).

decision_on_administrative_fine(decision(_)).

annual_report_on_fines_and_litigation(report(_)).

provenance(union_institution_body_office_or_agency/1, 'celex:32024R1689/oj#art_100').
provenance(edps/1, 'celex:32024R1689/oj#art_100').
provenance(administrative_fine/1, 'celex:32024R1689/oj#art_100').
provenance(infringement_of_prohibited_ai_practice/1, 'celex:32024R1689/oj#art_100').
provenance(infringement_of_other_requirement/1, 'celex:32024R1689/oj#art_100').
provenance(imposes_administrative_fine/3, 'celex:32024R1689/oj#art_100').
provenance(max_fine_for_prohibited_practice/1, 'celex:32024R1689/oj#art_100').
provenance(max_fine_for_other_requirement/1, 'celex:32024R1689/oj#art_100').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(must_base_decision_on_commented_elements/2, 'celex:32024R1689/oj#art_100').
provenance(must_respect_rights_of_defence/2, 'celex:32024R1689/oj#art_100').
provenance(must_notify_commission_annually/2, 'celex:32024R1689/oj#art_100').
provenance(subject_of_proceedings/1, 'celex:32024R1689/oj#art_100').
provenance(party_concerned/1, 'celex:32024R1689/oj#art_100').
provenance(decision_on_administrative_fine/1, 'celex:32024R1689/oj#art_100').
provenance(annual_report_on_fines_and_litigation/1, 'celex:32024R1689/oj#art_100').

references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
