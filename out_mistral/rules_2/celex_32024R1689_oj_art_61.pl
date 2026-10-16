% unit       : celex:32024R1689/oj#art_61
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : cb247a3f22b1ed4cddb6bf410f5da4ffa5992835b85c0d5d7e03a5b4be0a6f25
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 3eeba235f8623d84bf442f131cd79321e6217e4df0fce46d663b339f21ee95b5
% cached     : False
% title      : Informed consent to participate in testing in real world conditions outside AI regulatory sandboxes
:- pred informed_consent_obtained/2, gloss('freely-given informed consent obtained from subject for testing in real world conditions'), source('celex:32024R1689/oj#art_61').
:- pred duly_informed/2, gloss('subject duly informed with concise clear relevant understandable information'), source('celex:32024R1689/oj#art_61').
:- pred informed_about_nature_objectives_inconvenience/1, gloss('informed about nature and objectives of testing and possible inconvenience'), source('celex:32024R1689/oj#art_61').
:- pred informed_about_conditions_duration/1, gloss('informed about conditions of testing including expected duration of participation'), source('celex:32024R1689/oj#art_61').
:- pred informed_about_rights_guarantees/1, gloss('informed about rights and guarantees including right to refuse and withdraw without detriment or justification'), source('celex:32024R1689/oj#art_61').
:- pred informed_about_reversal_arrangements/1, gloss('informed about arrangements for requesting reversal or disregarding of predictions recommendations or decisions'), source('celex:32024R1689/oj#art_61').
:- pred informed_about_identification_number_contact/1, gloss('informed about Union-wide unique single identification number and contact details of provider or legal representative'), source('celex:32024R1689/oj#art_61').
:- pred consent_dated_and_documented/1, gloss('informed consent is dated and documented'), source('celex:32024R1689/oj#art_61').
:- pred copy_given_to_subject_or_representative/1, gloss('copy of informed consent given to subject or legal representative'), source('celex:32024R1689/oj#art_61').

informed_consent_obtained(Subject, Testing) :-
    testing_in_real_world_conditions(Testing),
    subject(Subject),
    duly_informed(Subject, Testing),
    informed_about_nature_objectives_inconvenience(Testing),
    informed_about_conditions_duration(Testing),
    informed_about_rights_guarantees(Testing),
    informed_about_reversal_arrangements(Testing),
    informed_about_identification_number_contact(Testing),
    informed_consent(Subject),
    consent_dated_and_documented(Subject),
    copy_given_to_subject_or_representative(Subject).

duly_informed(Subject, Testing) :-
    testing_in_real_world_conditions(Testing),
    subject(Subject),
    information_concise_clear_relevant_understandable(Testing).

informed_about_nature_objectives_inconvenience(Testing) :-
    testing_in_real_world_conditions(Testing),
    information_provided(Testing, nature_and_objectives),
    information_provided(Testing, possible_inconvenience).

informed_about_conditions_duration(Testing) :-
    testing_in_real_world_conditions(Testing),
    information_provided(Testing, conditions_of_testing),
    information_provided(Testing, expected_duration_of_participation).

informed_about_rights_guarantees(Testing) :-
    testing_in_real_world_conditions(Testing),
    information_provided(Testing, rights_of_subject),
    information_provided(Testing, guarantees_of_participation),
    right_to_refuse_participation(Testing),
    right_to_withdraw_at_any_time(Testing),
    withdrawal_without_detriment(Testing),
    withdrawal_without_justification(Testing).

informed_about_reversal_arrangements(Testing) :-
    testing_in_real_world_conditions(Testing),
    information_provided(Testing, arrangements_for_reversal_or_disregarding).

informed_about_identification_number_contact(Testing) :-
    testing_in_real_world_conditions(Testing),
    union_wide_unique_single_identification_number(Testing),
    contact_details_available(Testing, provider_or_legal_representative).

consent_dated_and_documented(Subject) :-
    subject(Subject),
    consent_dated(Subject),
    consent_documented(Subject).

copy_given_to_subject_or_representative(Subject) :-
    subject(Subject),
    copy_of_consent_given(Subject).

copy_given_to_subject_or_representative(Subject) :-
    legal_representative_of(Subject, Representative),
    copy_of_consent_given(Representative).

information_concise_clear_relevant_understandable(Testing) :-
    testing_in_real_world_conditions(Testing),
    information_concise(Testing),
    information_clear(Testing),
    information_relevant(Testing),
    information_understandable(Testing).

provenance(informed_consent_obtained/2, 'celex:32024R1689/oj#art_61').
provenance(duly_informed/2, 'celex:32024R1689/oj#art_61').
provenance(informed_about_nature_objectives_inconvenience/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_conditions_duration/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_rights_guarantees/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_reversal_arrangements/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_identification_number_contact/1, 'celex:32024R1689/oj#art_61').
provenance(consent_dated_and_documented/1, 'celex:32024R1689/oj#art_61').
provenance(copy_given_to_subject_or_representative/1, 'celex:32024R1689/oj#art_61').

references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
