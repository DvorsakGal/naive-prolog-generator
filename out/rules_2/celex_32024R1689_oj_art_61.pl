% unit       : celex:32024R1689/oj#art_61
% title      : Informed consent to participate in testing in real world conditions outside AI regulatory sandboxes
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : cb247a3f22b1ed4cddb6bf410f5da4ffa5992835b85c0d5d7e03a5b4be0a6f25
% model      : gpt-oss:120b-cloud
% prompt sha : 261ddb9747a0bbc6242c2dfdc6eadecb698bf8a857ff6136100aac2fe79b7319
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_informed_consent/2, gloss('obligation to obtain freely‑given informed consent from subject for testing in real world conditions'), source('celex:32024R1689/oj#art_61').
:- pred informed_consent_obtained/2, gloss('condition that informed consent has been obtained from subject for a given testing'), source('celex:32024R1689/oj#art_61').
:- pred freely_given/1, gloss('consent is freely given'), source('celex:32024R1689/oj#art_61').
:- pred dated_and_documented/1, gloss('consent is dated and documented'), source('celex:32024R1689/oj#art_61').
:- pred copy_given_to_subject/2, gloss('a copy of the consent is given to the subject or their legal representative'), source('celex:32024R1689/oj#art_61').

required_informed_consent(S, T) :-
    subject(S),
    testing_in_real_world_conditions(T),
    informed_consent_obtained(S, T).

informed_consent_obtained(S, T) :-
    informed_consent(S),
    testing_in_real_world_conditions(T),
    freely_given(S),
    dated_and_documented(S),
    copy_given_to_subject(S, T).

provenance(required_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_obtained/2, 'celex:32024R1689/oj#art_61').
provenance(freely_given/1, 'celex:32024R1689/oj#art_61').
provenance(dated_and_documented/1, 'celex:32024R1689/oj#art_61').
provenance(copy_given_to_subject/2, 'celex:32024R1689/oj#art_61').

references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
