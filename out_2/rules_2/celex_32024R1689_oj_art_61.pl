% unit       : celex:32024R1689/oj#art_61
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : cb247a3f22b1ed4cddb6bf410f5da4ffa5992835b85c0d5d7e03a5b4be0a6f25
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 622b7e498cbac9382a2013c359a8689f81737b89bddf44cd4406d9dc7a3552c3
% cached     : False
% title      : Informed consent to participate in testing in real world conditions outside AI regulatory sandboxes
:- pred must_obtain_informed_consent/2, gloss('obtain freely‑given informed consent from subject for testing in real‑world conditions'), source('celex:32024R1689/oj#art_61').
:- pred must_inform_subject/2, gloss('provide concise, clear, relevant and understandable information to subject about the testing'), source('celex:32024R1689/oj#art_61').
:- pred must_document_consent/2, gloss('ensure the informed consent is dated and documented'), source('celex:32024R1689/oj#art_61').
:- pred must_give_copy_of_consent/2, gloss('give a copy of the informed consent to the subject or their legal representative'), source('celex:32024R1689/oj#art_61').

must_obtain_informed_consent(Subject, testing_in_real_world_conditions) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    \+ ai_regulatory_sandbox(T),
    must_inform_subject(Subject, testing_in_real_world_conditions),
    must_document_consent(Subject, testing_in_real_world_conditions),
    must_give_copy_of_consent(Subject, testing_in_real_world_conditions).

must_inform_subject(Subject, testing_in_real_world_conditions) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    \+ ai_regulatory_sandbox(T).

must_document_consent(Subject, testing_in_real_world_conditions) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    \+ ai_regulatory_sandbox(T).

must_give_copy_of_consent(Subject, testing_in_real_world_conditions) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    \+ ai_regulatory_sandbox(T).

provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_inform_subject/2, 'celex:32024R1689/oj#art_61').
provenance(must_document_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_give_copy_of_consent/2, 'celex:32024R1689/oj#art_61').

references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
