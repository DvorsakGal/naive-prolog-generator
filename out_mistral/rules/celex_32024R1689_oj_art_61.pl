% unit       : celex:32024R1689/oj#art_61
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : cb247a3f22b1ed4cddb6bf410f5da4ffa5992835b85c0d5d7e03a5b4be0a6f25
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e6cd0fd1e7417c6f07d05bf6ac637453a9e712698b7600482f11416f649f1307
% cached     : False
% title      : Informed consent to participate in testing in real world conditions outside AI regulatory sandboxes
:- pred must_obtain_informed_consent/2, gloss('provider must obtain informed consent from subject before real-world testing participation'), source('celex:32024R1689/oj#art_61').
:- pred informed_consent_dated_and_documented/1, gloss('informed consent is dated and documented'), source('celex:32024R1689/oj#art_61').
:- pred copy_given_to_subject/2, gloss('copy of informed consent given to subject or legal representative'), source('celex:32024R1689/oj#art_61').
:- pred information_provided_to_subject/2, gloss('subject duly informed with concise clear relevant understandable information'), source('celex:32024R1689/oj#art_61').
:- pred information_content/2, gloss('information covers specified content item'), source('celex:32024R1689/oj#art_61').

must_obtain_informed_consent(Provider, Subject) :-
    provider(Provider),
    subject(Subject),
    testing_in_real_world_conditions(T),
    participation_in_testing(Subject, T),
    \+ informed_consent_already_obtained(Subject, T),
    before_participation(Subject, T),
    information_provided_to_subject(Subject, T),
    informed_consent(Consent),
    consent_relates_to_subject(Consent, Subject),
    consent_relates_to_testing(Consent, T),
    freely_given(Consent).

information_provided_to_subject(Subject, T) :-
    testing_in_real_world_conditions(T),
    subject(Subject),
    information_content(Subject, nature_and_objectives(T)),
    information_content(Subject, possible_inconvenience(T)),
    information_content(Subject, conditions_of_testing(T)),
    information_content(Subject, expected_duration(Subject, T)),
    information_content(Subject, rights_and_guarantees(Subject)),
    information_content(Subject, right_to_refuse_participation(Subject)),
    information_content(Subject, right_to_withdraw(Subject)),
    information_content(Subject, arrangements_for_reversal_or_disregarding(Subject, T)),
    information_content(Subject, union_wide_unique_identification_number(T)),
    information_content(Subject, contact_details_provider_or_representative(Subject)).

information_content(Subject, nature_and_objectives(T)) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    informed_about(Subject, nature(T)),
    informed_about(Subject, objectives(T)).

information_content(Subject, possible_inconvenience(T)) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    informed_about(Subject, inconvenience_linked_to_participation(T)).

information_content(Subject, conditions_of_testing(T)) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    informed_about(Subject, conditions(T)).

information_content(Subject, expected_duration(Subject, T)) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    informed_about(Subject, duration_of_participation(Subject, T)).

information_content(Subject, rights_and_guarantees(Subject)) :-
    subject(Subject),
    informed_about(Subject, rights(Subject)),
    informed_about(Subject, guarantees_regarding_participation(Subject)).

information_content(Subject, right_to_refuse_participation(Subject)) :-
    subject(Subject),
    informed_about(Subject, right_to_refuse_participation_without_detriment_or_justification(Subject)).

information_content(Subject, right_to_withdraw(Subject)) :-
    subject(Subject),
    informed_about(Subject, right_to_withdraw_at_any_time_without_detriment_or_justification(Subject)).

information_content(Subject, arrangements_for_reversal_or_disregarding(Subject, T)) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    informed_about(Subject, arrangements_for_requesting_reversal_or_disregarding(Subject, T)).

information_content(Subject, union_wide_unique_identification_number(T)) :-
    testing_in_real_world_conditions(T),
    informed_about(Subject, unique_identification_number(T)).

information_content(Subject, contact_details_provider_or_representative(Subject)) :-
    subject(Subject),
    informed_about(Subject, contact_details_for_further_information(Subject)).

informed_consent_dated_and_documented(Consent) :-
    informed_consent(Consent),
    dated(Consent),
    documented(Consent).

copy_given_to_subject(Consent, Subject) :-
    informed_consent(Consent),
    subject(Subject),
    copy_given(Consent, Subject).

copy_given_to_subject(Consent, LegalRepresentative) :-
    informed_consent(Consent),
    legal_representative_of_subject(LegalRepresentative, _Subject),
    copy_given(Consent, LegalRepresentative).

provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_dated_and_documented/1, 'celex:32024R1689/oj#art_61').
provenance(copy_given_to_subject/2, 'celex:32024R1689/oj#art_61').
provenance(information_provided_to_subject/2, 'celex:32024R1689/oj#art_61').
provenance(information_content/2, 'celex:32024R1689/oj#art_61').

references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
