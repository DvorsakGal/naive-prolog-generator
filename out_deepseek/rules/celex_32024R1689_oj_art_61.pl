% unit       : celex:32024R1689/oj#art_61
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : cb247a3f22b1ed4cddb6bf410f5da4ffa5992835b85c0d5d7e03a5b4be0a6f25
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a174408683b4e7e325bf1f1ed516c10c0a5a4e1fa31d4c6c76058ad0b74b7fc5
% cached     : False
% title      : Informed consent to participate in testing in real world conditions outside AI regulatory sandboxes
:- pred must_obtain_informed_consent/2, gloss('provider or legal representative must obtain informed consent from subject'), source('celex:32024R1689/oj#art_61').
:- pred informed_consent_documented/1, gloss('informed consent is dated, documented and a copy given'), source('celex:32024R1689/oj#art_61').

must_obtain_informed_consent(Provider, Subject) :-
    provider(Provider),
    subject(Subject),
    testing_in_real_world_conditions(T),
    informed_consent(Subject),
    informed_about_nature_and_objectives(Subject, T),
    informed_about_conditions_and_duration(Subject, T),
    informed_about_rights_and_guarantees(Subject, T),
    informed_about_reversal_arrangements(Subject, T),
    informed_about_identification_and_contact(Subject, T).

informed_about_nature_and_objectives(Subject, Testing) :-
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed(Subject, nature_and_objectives(Testing)).

informed_about_conditions_and_duration(Subject, Testing) :-
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed(Subject, conditions_and_duration(Testing)).

informed_about_rights_and_guarantees(Subject, Testing) :-
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed(Subject, rights_and_guarantees(Testing)).

informed_about_reversal_arrangements(Subject, Testing) :-
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed(Subject, reversal_arrangements(Testing)).

informed_about_identification_and_contact(Subject, Testing) :-
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed(Subject, identification_and_contact(Testing)).

informed_consent_documented(Consent) :-
    informed_consent(Consent),
    dated(Consent),
    documented(Consent),
    copy_given_to_subject_or_representative(Consent).

provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_documented/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_nature_and_objectives/2, 'celex:32024R1689/oj#art_61').
provenance(informed_about_conditions_and_duration/2, 'celex:32024R1689/oj#art_61').
provenance(informed_about_rights_and_guarantees/2, 'celex:32024R1689/oj#art_61').
provenance(informed_about_reversal_arrangements/2, 'celex:32024R1689/oj#art_61').
provenance(informed_about_identification_and_contact/2, 'celex:32024R1689/oj#art_61').

references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
