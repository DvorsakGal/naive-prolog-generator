% unit       : celex:32024R1689/oj#art_61
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : cb247a3f22b1ed4cddb6bf410f5da4ffa5992835b85c0d5d7e03a5b4be0a6f25
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d70f1008772ad84c289681f1ccdc42aacb0e86c6a0f82a4de350f8d45bc1bf23
% cached     : False
% title      : Informed consent to participate in testing in real world conditions outside AI regulatory sandboxes
:- pred must_obtain_informed_consent/2, gloss('provider must obtain informed consent from subject before real-world testing'), source('celex:32024R1689/oj#art_61').
:- pred informed_consent_valid/1, gloss('informed consent that meets Article 61 requirements'), source('celex:32024R1689/oj#art_61').
:- pred informed_about_nature_and_objectives/1, gloss('subject informed about nature, objectives, and possible inconvenience'), source('celex:32024R1689/oj#art_61').
:- pred informed_about_conditions/1, gloss('subject informed about testing conditions and expected duration'), source('celex:32024R1689/oj#art_61').
:- pred informed_about_rights/1, gloss('subject informed about rights and guarantees including withdrawal'), source('celex:32024R1689/oj#art_61').
:- pred informed_about_reversal_arrangements/1, gloss('subject informed about arrangements for reversing AI system predictions'), source('celex:32024R1689/oj#art_61').
:- pred informed_about_identification_and_contact/1, gloss('subject informed about testing identification number and provider contact'), source('celex:32024R1689/oj#art_61').
:- pred must_date_and_document_consent/2, gloss('provider must date and document informed consent'), source('celex:32024R1689/oj#art_61').
:- pred must_provide_copy_of_consent/2, gloss('provider must give copy of consent to subject or legal representative'), source('celex:32024R1689/oj#art_61').

must_obtain_informed_consent(P, Subject) :-
    provider(P),
    subject(Subject),
    testing_in_real_world_conditions(T),
    outside_ai_regulatory_sandbox(T),
    before_participation(Subject, T),
    informed_consent_valid(Consent),
    obtained_from(Consent, Subject).

informed_consent_valid(Consent) :-
    freely_given(Consent),
    informed(Consent),
    informed_about_nature_and_objectives(Consent),
    informed_about_conditions(Consent),
    informed_about_rights(Consent),
    informed_about_reversal_arrangements(Consent),
    informed_about_identification_and_contact(Consent).

informed_about_nature_and_objectives(Consent) :-
    consent_for(Consent, Subject),
    subject(Subject),
    informed(Subject, nature_and_objectives),
    informed(Subject, possible_inconvenience).

informed_about_conditions(Consent) :-
    consent_for(Consent, Subject),
    subject(Subject),
    informed(Subject, testing_conditions),
    informed(Subject, expected_duration).

informed_about_rights(Consent) :-
    consent_for(Consent, Subject),
    subject(Subject),
    informed(Subject, rights),
    informed(Subject, guarantees),
    right_to_refuse(Subject),
    right_to_withdraw(Subject),
    without_detriment(Subject),
    without_justification(Subject).

informed_about_reversal_arrangements(Consent) :-
    consent_for(Consent, Subject),
    subject(Subject),
    informed(Subject, reversal_arrangements).

informed_about_identification_and_contact(Consent) :-
    consent_for(Consent, Subject),
    subject(Subject),
    informed(Subject, identification_number),
    informed(Subject, provider_contact_details).

must_date_and_document_consent(P, Consent) :-
    provider(P),
    informed_consent_valid(Consent),
    dated(Consent),
    documented(Consent).

must_provide_copy_of_consent(P, Recipient) :-
    provider(P),
    informed_consent_valid(Consent),
    (subject(Recipient); legal_representative(Recipient)),
    copy_given(Consent, Recipient).

% Provenance
provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_valid/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_nature_and_objectives/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_conditions/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_rights/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_reversal_arrangements/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_identification_and_contact/1, 'celex:32024R1689/oj#art_61').
provenance(must_date_and_document_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_provide_copy_of_consent/2, 'celex:32024R1689/oj#art_61').

% References
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
