% unit       : celex:32024R1689/oj#art_61
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : cb247a3f22b1ed4cddb6bf410f5da4ffa5992835b85c0d5d7e03a5b4be0a6f25
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 7089a0f630dc3e7bad7cfda33ac1776fe376c70d60ac52b9363d18e947e55ced
% cached     : False
% title      : Informed consent to participate in testing in real world conditions outside AI regulatory sandboxes
:- pred must_obtain_informed_consent/2, gloss('provider must obtain freely-given informed consent from subject prior to testing'), source('celex:32024R1689/oj#art_61').
:- pred informed_consent_documented/1, gloss('informed consent is dated and documented'), source('celex:32024R1689/oj#art_61').
:- pred copy_of_consent_provided/2, gloss('copy of informed consent given to subject or legal representative'), source('celex:32024R1689/oj#art_61').
:- pred subject_duly_informed/2, gloss('subject informed with concise clear relevant understandable information'), source('celex:32024R1689/oj#art_61').

must_obtain_informed_consent(Provider, Testing) :-
    testing_in_real_world_conditions(Testing),
    provider(Provider),
    subject(Subject),
    participates_in_testing(Subject, Testing),
    before_participation(Subject, Testing),
    subject_duly_informed(Subject, Testing),
    freely_given(InformedConsent),
    informed_consent(InformedConsent),
    obtained_from(InformedConsent, Subject).

subject_duly_informed(Subject, Testing) :-
    testing_in_real_world_conditions(Testing),
    subject(Subject),
    information_provided(Subject, nature_and_objectives(Testing)),
    information_provided(Subject, possible_inconvenience(Testing)),
    information_provided(Subject, conditions_of_testing(Testing)),
    information_provided(Subject, expected_duration(Testing)),
    information_provided(Subject, rights_and_guarantees(Testing)),
    information_provided(Subject, right_to_refuse(Testing)),
    information_provided(Subject, right_to_withdraw(Testing)),
    information_provided(Subject, reversal_arrangements(Testing)),
    information_provided(Subject, unique_identification_number(Testing)),
    information_provided(Subject, contact_details(Testing)).

informed_consent_documented(InformedConsent) :-
    informed_consent(InformedConsent),
    dated(InformedConsent),
    documented(InformedConsent).

copy_of_consent_provided(InformedConsent, Recipient) :-
    informed_consent_documented(InformedConsent),
    (subject(Recipient) ; legal_representative(Recipient)),
    copy_given(InformedConsent, Recipient).

provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_documented/1, 'celex:32024R1689/oj#art_61').
provenance(copy_of_consent_provided/2, 'celex:32024R1689/oj#art_61').
provenance(subject_duly_informed/2, 'celex:32024R1689/oj#art_61').

references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
