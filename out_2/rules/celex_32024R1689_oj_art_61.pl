% unit       : celex:32024R1689/oj#art_61
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : cb247a3f22b1ed4cddb6bf410f5da4ffa5992835b85c0d5d7e03a5b4be0a6f25
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 54379dece8889acd92acdc90baa44d1d43ed48b859361451b3d8130ed26d01cd
% cached     : False
% title      : Informed consent to participate in testing in real world conditions outside AI regulatory sandboxes
:- pred must_obtain_informed_consent/2, gloss('obligation to obtain freely‑given informed consent from subject'), source('celex:32024R1689/oj#art_61').
:- pred must_date_and_document_consent/2, gloss('obligation to date and document the consent'), source('celex:32024R1689/oj#art_61').
:- pred must_give_copy_of_consent/2, gloss('obligation to give a copy of the consent to the subject or its legal representative'), source('celex:32024R1689/oj#art_61').
:- pred required_information/1, gloss('information that must be provided to the subject before consent'), source('celex:32024R1689/oj#art_61').
:- pred prior_to_participation_applies/1, gloss('condition that consent must be obtained prior to participation'), source('celex:32024R1689/oj#art_61').
:- pred informed_subject_applies/1, gloss('condition that the subject has been duly informed with the required information'), source('celex:32024R1689/oj#art_61').

must_obtain_informed_consent(P, consent(S)) :-
    provider(P),
    subject(S),
    prior_to_participation_applies(S),
    informed_subject_applies(S).

must_date_and_document_consent(P, consent(S)) :-
    provider(P),
    subject(S).

must_give_copy_of_consent(P, consent(S)) :-
    provider(P),
    subject(S).

required_information(nature_and_objectives).
required_information(conditions_of_testing).
required_information(rights_and_guarantees).
required_information(arrangements_for_reversal).
required_information(identification_number_and_contact).

prior_to_participation_applies(S) :-
    subject(S).

informed_subject_applies(S) :-
    subject(S),
    required_information(_).

provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_date_and_document_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_give_copy_of_consent/2, 'celex:32024R1689/oj#art_61').
provenance(required_information/1, 'celex:32024R1689/oj#art_61').
provenance(prior_to_participation_applies/1, 'celex:32024R1689/oj#art_61').
provenance(informed_subject_applies/1, 'celex:32024R1689/oj#art_61').

references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
