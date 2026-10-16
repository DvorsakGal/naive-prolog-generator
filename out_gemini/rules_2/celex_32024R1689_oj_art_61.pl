% unit       : celex:32024R1689/oj#art_61
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : cb247a3f22b1ed4cddb6bf410f5da4ffa5992835b85c0d5d7e03a5b4be0a6f25
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : f031f4dca3d3f6cfb11a9e4d99d7e751b02ee8fb93acb528f68dd412753e2635
% cached     : False
% title      : Informed consent to participate in testing in real world conditions outside AI regulatory sandboxes
:- pred valid_informed_consent/2, gloss('Subject has given valid informed consent for testing in real world conditions'), source('celex:32024R1689/oj#art_61').
:- pred duly_informed/2, gloss('Subject has been duly informed regarding all mandatory items prior to consent'), source('celex:32024R1689/oj#art_61').
:- pred informed_regarding_nature_and_objectives/2, gloss('Subject informed of nature, objectives, and possible inconvenience'), source('celex:32024R1689/oj#art_61').
:- pred informed_regarding_conditions_and_duration/2, gloss('Subject informed of conditions and expected duration'), source('celex:32024R1689/oj#art_61').
:- pred informed_regarding_rights_and_guarantees/2, gloss('Subject informed of rights and guarantees including refusal and withdrawal'), source('celex:32024R1689/oj#art_61').
:- pred informed_regarding_reversal_arrangements/2, gloss('Subject informed of arrangements for reversal or disregarding of AI outputs'), source('celex:32024R1689/oj#art_61').
:- pred informed_regarding_identification_and_contacts/2, gloss('Subject informed of identification number and provider contact details'), source('celex:32024R1689/oj#art_61').
:- pred dated/1, gloss('Document or consent is dated'), source('celex:32024R1689/oj#art_61').
:- pred documented/1, gloss('Consent is documented in writing or record'), source('celex:32024R1689/oj#art_61').
:- pred copy_provided_to_subject_or_representative/2, gloss('A copy of the informed consent has been given to the subject or legal representative'), source('celex:32024R1689/oj#art_61').
:- pred freely_given/1, gloss('Consent is freely given'), source('celex:32024R1689/oj#art_61').
:- pred prior_to_participation/2, gloss('Consent is obtained prior to participation of subject in testing'), source('celex:32024R1689/oj#art_61').

% Article 61(1)
valid_informed_consent(Subject, Testing) :-
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed_consent(Consent),
    freely_given(Consent),
    prior_to_participation(Consent, Subject),
    duly_informed(Subject, Testing),
    dated(Consent),
    documented(Consent),
    copy_provided_to_subject_or_representative(Consent, Subject).

duly_informed(Subject, Testing) :-
    informed_regarding_nature_and_objectives(Subject, Testing),
    informed_regarding_conditions_and_duration(Subject, Testing),
    informed_regarding_rights_and_guarantees(Subject, Testing),
    informed_regarding_reversal_arrangements(Subject, Testing),
    informed_regarding_identification_and_contacts(Subject, Testing).

% Article 61(1) obligation on the provider / entity conducting testing
must_obtain(Provider, informed_consent(Subject, Testing)) :-
    provider(Provider),
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    \+ valid_informed_consent(Subject, Testing).

% Provenance
provenance(valid_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(duly_informed/2, 'celex:32024R1689/oj#art_61').
provenance(must_obtain/2, 'celex:32024R1689/oj#art_61').

% References
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
