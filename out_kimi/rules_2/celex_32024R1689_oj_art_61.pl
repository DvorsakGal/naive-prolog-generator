% unit       : celex:32024R1689/oj#art_61
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : cb247a3f22b1ed4cddb6bf410f5da4ffa5992835b85c0d5d7e03a5b4be0a6f25
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : d85afd9b8bee2fd85c611b43372a325672afecd2ce7d0e271fef36d7c436aa68
% cached     : False
% title      : Informed consent to participate in testing in real world conditions outside AI regulatory sandboxes
:- pred must_obtain_informed_consent/2, gloss('provider must obtain informed consent from subjects before testing in real world conditions outside sandboxes'), source('celex:32024R1689/oj#art_61').
:- pred informed_consent_valid/1, gloss('informed consent meets Article 61 requirements'), source('celex:32024R1689/oj#art_61').
:- pred informed_consent_documented/1, gloss('informed consent is dated and documented with copy given'), source('celex:32024R1689/oj#art_61').
:- pred subject_informed_of/2, gloss('subject is informed of specified information'), source('celex:32024R1689/oj#art_61').

must_obtain_informed_consent(P, testing_in_real_world_conditions(T)) :-
    provider(P),
    testing_in_real_world_conditions(T),
    \+ supervised_within(T, _Sandbox),
    subject(S),
    in_course_of_testing(S, T),
    informed_consent_valid(consent(S, T)).

informed_consent_valid(Consent) :-
    consent_given(Consent),
    freely_given(Consent),
    obtained_prior_to_participation(Consent),
    subject_informed_of(Consent, nature_and_objectives),
    subject_informed_of(Consent, possible_inconvenience),
    subject_informed_of(Consent, conditions_of_testing),
    subject_informed_of(Consent, expected_duration),
    subject_informed_of(Consent, right_to_refuse),
    subject_informed_of(Consent, right_to_withdraw),
    subject_informed_of(Consent, no_detriment_on_withdrawal),
    subject_informed_of(Consent, no_justification_required),
    subject_informed_of(Consent, reversal_arrangements),
    subject_informed_of(Consent, unique_identification_number),
    subject_informed_of(Consent, provider_contact_details).

subject_informed_of(Consent, nature_and_objectives) :-
    consent_subject(Consent, S),
    consent_testing(Consent, T),
    concise_information(S, nature_and_objectives(T)),
    clear_information(S, nature_and_objectives(T)),
    relevant_information(S, nature_and_objectives(T)),
    understandable_information(S, nature_and_objectives(T)),
    possible_inconvenience_linked_to_participation(S, T).

subject_informed_of(Consent, conditions_of_testing) :-
    consent_subject(Consent, S),
    consent_testing(Consent, T),
    concise_information(S, conditions(T)),
    clear_information(S, conditions(T)),
    relevant_information(S, conditions(T)),
    understandable_information(S, conditions(T)),
    expected_duration(S, T).

subject_informed_of(Consent, right_to_refuse) :-
    consent_subject(Consent, S),
    concise_information(S, right_to_refuse(S, T)),
    clear_information(S, right_to_refuse(S, T)),
    relevant_information(S, right_to_refuse(S, T)),
    understandable_information(S, right_to_refuse(S, T)).

subject_informed_of(Consent, right_to_withdraw) :-
    consent_subject(Consent, S),
    concise_information(S, right_to_withdraw(S, T)),
    clear_information(S, right_to_withdraw(S, T)),
    relevant_information(S, right_to_withdraw(S, T)),
    understandable_information(S, right_to_withdraw(S, T)).

subject_informed_of(Consent, no_detriment_on_withdrawal) :-
    consent_subject(Consent, S),
    concise_information(S, no_detriment(S, T)),
    clear_information(S, no_detriment(S, T)),
    relevant_information(S, no_detriment(S, T)),
    understandable_information(S, no_detriment(S, T)).

subject_informed_of(Consent, no_justification_required) :-
    consent_subject(Consent, S),
    concise_information(S, no_justification_required(S, T)),
    clear_information(S, no_justification_required(S, T)),
    relevant_information(S, no_justification_required(S, T)),
    understandable_information(S, no_justification_required(S, T)).

subject_informed_of(Consent, reversal_arrangements) :-
    consent_subject(Consent, S),
    consent_testing(Consent, T),
    concise_information(S, reversal_arrangements(T)),
    clear_information(S, reversal_arrangements(T)),
    relevant_information(S, reversal_arrangements(T)),
    understandable_information(S, reversal_arrangements(T)).

subject_informed_of(Consent, unique_identification_number) :-
    consent_subject(Consent, S),
    consent_testing(Consent, T),
    concise_information(S, unique_identification_number(T)),
    clear_information(S, unique_identification_number(T)),
    relevant_information(S, unique_identification_number(T)),
    understandable_information(S, unique_identification_number(T)),
    union_wide_unique_single_identification_number(T).

subject_informed_of(Consent, provider_contact_details) :-
    consent_subject(Consent, S),
    consent_testing(Consent, T),
    concise_information(S, contact_details(provider_of(T))),
    clear_information(S, contact_details(provider_of(T))),
    relevant_information(S, contact_details(provider_of(T))),
    understandable_information(S, contact_details(provider_of(T))),
    legal_representative_contact_available(provider_of(T)).

informed_consent_documented(Consent) :-
    consent_given(Consent),
    dated(Consent),
    documented(Consent),
    copy_given_to(Consent, SubjectOrRepresentative),
    (subject(SubjectOrRepresentative), consent_subject(Consent, SubjectOrRepresentative)
    ; legal_representative(SubjectOrRepresentative), consent_subject(Consent, Subject)).

provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_valid/1, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_documented/1, 'celex:32024R1689/oj#art_61').
provenance(subject_informed_of/2, 'celex:32024R1689/oj#art_61').

references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
