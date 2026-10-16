% unit       : celex:32024R1689/oj#art_61
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : cb247a3f22b1ed4cddb6bf410f5da4ffa5992835b85c0d5d7e03a5b4be0a6f25
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b95524f0f18dbf032ac65992f641f260308c17f4771f0f253e22750ac2963707
% cached     : False
% title      : Informed consent to participate in testing in real world conditions outside AI regulatory sandboxes
:- pred must_obtain_informed_consent_for_testing/2, gloss('provider must obtain informed consent from subject for real world testing'), source('celex:32024R1689/oj#art_61').
:- pred informed_consent_meets_requirements/2, gloss('informed consent satisfies content and procedural requirements'), source('celex:32024R1689/oj#art_61').
:- pred subject_duly_informed/2, gloss('subject has received required information prior to consent'), source('celex:32024R1689/oj#art_61').
:- pred consent_documented_and_provided/2, gloss('consent is dated, documented and copy given to subject'), source('celex:32024R1689/oj#art_61').

must_obtain_informed_consent_for_testing(Provider, Testing) :-
    provider(Provider),
    testing_in_real_world_conditions(Testing),
    \+ ai_regulatory_sandbox(Testing),
    subject(S),
    participates_in_testing(S, Testing),
    informed_consent_meets_requirements(S, Testing).

informed_consent_meets_requirements(S, Testing) :-
    subject_duly_informed(S, Testing),
    consent_documented_and_provided(S, Testing).

subject_duly_informed(S, Testing) :-
    subject(S),
    testing_in_real_world_conditions(Testing),
    information_provided(S, nature_and_objectives(Testing)),
    information_provided(S, possible_inconvenience(Testing)),
    information_provided(S, conditions_of_testing(Testing)),
    information_provided(S, expected_duration(S, Testing)),
    information_provided(S, rights_and_guarantees(S)),
    information_provided(S, right_to_refuse_without_detriment(S)),
    information_provided(S, right_to_withdraw_without_detriment(S)),
    information_provided(S, reversal_arrangements(Testing)),
    information_provided(S, unique_identification_number(Testing)),
    information_provided(S, contact_details(Testing)).

consent_documented_and_provided(S, _Testing) :-
    subject(S),
    consent_is_dated(S),
    consent_is_documented(S),
    copy_given_to_subject_or_representative(S).

provenance(must_obtain_informed_consent_for_testing/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_meets_requirements/2, 'celex:32024R1689/oj#art_61').
provenance(subject_duly_informed/2, 'celex:32024R1689/oj#art_61').
provenance(consent_documented_and_provided/2, 'celex:32024R1689/oj#art_61').

references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
