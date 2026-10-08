% unit       : celex:32024R1689/oj#art_61
% title      : Informed consent to participate in testing in real world conditions outside AI regulatory sandboxes
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : cb247a3f22b1ed4cddb6bf410f5da4ffa5992835b85c0d5d7e03a5b4be0a6f25
% model      : gpt-oss:120b-cloud
% prompt sha : acbb8d150a0783bddf536acb28ef30a600cd0bbaebf91078fc2931b656f84ce5
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred must_obtain_informed_consent/2, gloss('obtain freely‑given informed consent from subject of testing'), source('celex:32024R1689/oj#art_61').
:- pred must_date_and_document_consent/1, gloss('ensure consent is dated and documented'), source('celex:32024R1689/oj#art_61').
:- pred must_give_copy_of_consent/1, gloss('provide copy of consent to subject'), source('celex:32024R1689/oj#art_61').

must_obtain_informed_consent(Actor, Subject) :-
    provider(Actor),
    operator(Actor),
    subject(Subject),
    testing_in_real_world_conditions(T),
    \+ sandbox_plan(T).

must_date_and_document_consent(Subject) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    \+ sandbox_plan(T).

must_give_copy_of_consent(Subject) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    \+ sandbox_plan(T).

provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_date_and_document_consent/1, 'celex:32024R1689/oj#art_61').
provenance(must_give_copy_of_consent/1, 'ce://32024R1689/oj#art_61').

references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
