% unit       : celex:32024R1689/oj#art_61
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : cb247a3f22b1ed4cddb6bf410f5da4ffa5992835b85c0d5d7e03a5b4be0a6f25
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : c7402121f563e8a43e418defaa7f4801a9722714444e12a040ad1b65a79dc5f3
% cached     : False
% title      : Informed consent to participate in testing in real world conditions outside AI regulatory sandboxes
:- pred must_obtain_informed_consent/2, gloss('provider must obtain informed consent from subjects before real-world testing'), source('celex:32024R1689/oj#art_61').
:- pred informed_consent_documented/1, gloss('informed consent is dated, documented and a copy given to the subject'), source('celex:32024R1689/oj#art_61').
:- pred informed_consent_information/1, gloss('information provided to subjects before consent'), source('celex:32024R1689/oj#art_61').

must_obtain_informed_consent(Provider, Subject) :-
    provider(Provider),
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed_consent(Consent),
    informed_consent_information(Information),
    obtained_before_participation(Consent, Subject, Testing),
    duly_informed(Subject, Information).

informed_consent_information(Information) :-
    information_regarding(Information, nature_and_objectives),
    information_regarding(Information, conditions_and_duration),
    information_regarding(Information, rights_and_guarantees),
    information_regarding(Information, reversal_arrangements),
    information_regarding(Information, identification_and_contact).

informed_consent_documented(Consent) :-
    informed_consent(Consent),
    dated(Consent),
    documented(Consent),
    copy_given_to_subject(Consent).

provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_information/1, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_documented/1, 'celex:32024R1689/oj#art_61').

references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
