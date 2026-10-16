% unit       : celex:32024R1689/oj#art_61
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : cb247a3f22b1ed4cddb6bf410f5da4ffa5992835b85c0d5d7e03a5b4be0a6f25
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5b18414bfd204a1322a4595b21d94e840ea08ba5e5b0b909222e96058396de05
% cached     : False
% title      : Informed consent to participate in testing in real world conditions outside AI regulatory sandboxes
:- pred obtained_informed_consent/2, gloss('freely-given informed consent is obtained from the subject for real-world testing'), source('celex:32024R1689/oj#art_61').
:- pred duly_informed/2, gloss('subject has been duly informed with concise, clear, relevant, and understandable information'), source('celex:32024R1689/oj#art_61').
:- pred informed_nature_and_objectives/2, gloss('information provided regarding nature, objectives, and inconvenience of testing'), source('celex:32024R1689/oj#art_61').
:- pred informed_conditions_and_duration/2, gloss('information provided regarding conditions and expected duration of participation'), source('celex:32024R1689/oj#art_61').
:- pred informed_rights_and_guarantees/2, gloss('information provided regarding rights and guarantees to refuse or withdraw without detriment'), source('celex:32024R1689/oj#art_61').
:- pred informed_reversal_arrangements/2, gloss('information provided regarding arrangements for reversing or disregarding predictions/decisions'), source('celex:32024R1689/oj#art_61').
:- pred informed_identification_and_contact/2, gloss('information provided regarding single identification number and contact details'), source('celex:32024R1689/oj#art_61').
:- pred valid_informed_consent/2, gloss('informed consent meets requirements of Article 61'), source('celex:32024R1689/oj#art_61').
:- pred dated/1, gloss('document or consent is dated'), source('celex:32024R1689/oj#art_61').
:- pred documented/1, gloss('document or consent is documented'), source('celex:32024R1689/oj#art_61').
:- pred copy_provided_to_subject/2, gloss('a copy of the informed consent is given to the subject or legal representative'), source('celex:32024R1689/oj#art_61').
:- pred must_obtain_informed_consent/2, gloss('provider or tester must obtain informed consent from the subject prior to participation'), source('celex:32024R1689/oj#art_61').
:- pred must_document_consent/2, gloss('party must document and date informed consent and provide a copy'), source('celex:32024R1689/oj#art_61').

% Paragraph 1: Conditions for validly informing a subject
duly_informed(Subject, Testing) :-
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed_nature_and_objectives(Subject, Testing),
    informed_conditions_and_duration(Subject, Testing),
    informed_rights_and_guarantees(Subject, Testing),
    informed_reversal_arrangements(Subject, Testing),
    informed_identification_and_contact(Subject, Testing).

% Paragraph 1: Valid freely-given informed consent obtained prior to participation
valid_informed_consent(Consent, Testing) :-
    informed_consent(Consent),
    testing_in_real_world_conditions(Testing),
    obtained_informed_consent(Subject, Testing),
    duly_informed(Subject, Testing),
    dated(Consent),
    documented(Consent),
    copy_provided_to_subject(Consent, Subject).

% Obligations imposed by paragraphs 1 and 2
must_obtain_informed_consent(Provider, consent_of(Subject, Testing)) :-
    provider(Provider),
    testing_in_real_world_conditions(Testing),
    subject(Subject).

must_document_consent(Provider, consent_of(Subject, Testing)) :-
    provider(Provider),
    testing_in_real_world_conditions(Testing),
    subject(Subject).

provenance(duly_informed/2, 'celex:32024R1689/oj#art_61').
provenance(valid_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_document_consent/2, 'celex:32024R1689/oj#art_61').

references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
